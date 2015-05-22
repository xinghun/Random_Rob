#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

testN()
{
    self endon("death");
    self endon("disconnect");

    while(1) {
        self notifyOnPlayerCommand("N", "+actionslot 1");
        self waittill("N");
        self thread getNextGun();
    }
}

getNextGun()
{
	self.NextGunIndex += 1;
    if (self.NextGunIndex >= self.GunList.size)
    {
        self iPrintln("WEAPON TEST DONE");
        return;
    }
	self thread giveGun();

    wait .5;
    logstr = "WEAPON TEST " + self.GunList[self.NextGunIndex].name + " " + self.GunList[self.NextGunIndex].akimbo;
    if(self getCurrentWeapon() == self.GunList[self.NextGunIndex].name)
    {
        logstr = logstr + " good";
    }
    else
    {
        logstr = logstr + " bad";
    }
    self iPrintln(logstr);
    logprint(logstr + "\n");
}

initGuns()
{
	self.GunList = [];
    self.GunList[0] = createGun("flare_mp", false);
    self.GunList[1] = createGun("aa12_eotech_grip_mp", false);
    self.GunList[2] = createGun("aa12_eotech_mp", false);
    self.GunList[3] = createGun("aa12_eotech_silencer_mp", false);
    self.GunList[4] = createGun("aa12_eotech_xmags_mp", false);
    self.GunList[5] = createGun("aa12_fmj_grip_mp", false);
    self.GunList[6] = createGun("aa12_fmj_mp", false);
    self.GunList[7] = createGun("aa12_fmj_reflex_mp", false);
    self.GunList[8] = createGun("aa12_fmj_silencer_mp", false);
    self.GunList[9] = createGun("aa12_fmj_xmags_mp", false);
    self.GunList[10] = createGun("aa12_grip_mp", false);
    self.GunList[11] = createGun("aa12_grip_reflex_mp", false);
    self.GunList[12] = createGun("aa12_grip_silencer_mp", false);
    self.GunList[13] = createGun("aa12_grip_xmags_mp", false);
    self.GunList[14] = createGun("aa12_mp", false);
    self.GunList[15] = createGun("aa12_reflex_mp", false);
    self.GunList[16] = createGun("aa12_reflex_silencer_mp", false);
    self.GunList[17] = createGun("aa12_reflex_xmags_mp", false);
    self.GunList[18] = createGun("aa12_silencer_mp", false);
    self.GunList[19] = createGun("aa12_silencer_xmags_mp", false);
    self.GunList[20] = createGun("aa12_xmags_mp", false);
    self.GunList[21] = createGun("ac130_105mm_mp", false);
    self.GunList[22] = createGun("ac130_25mm_mp", false);
    self.GunList[23] = createGun("ac130_40mm_mp", false);
    self.GunList[24] = createGun("airdrop_marker_mp", false);
    self.GunList[25] = createGun("airdrop_mega_marker_mp", false);
    self.GunList[26] = createGun("airdrop_sentry_marker_mp", false);
    self.GunList[27] = createGun("ak47_acog_fmj_mp", false);
    self.GunList[28] = createGun("ak47_acog_gl_mp", false);
    self.GunList[29] = createGun("ak47_acog_heartbeat_mp", false);
    self.GunList[30] = createGun("ak47_acog_mp", false);
    self.GunList[31] = createGun("ak47_acog_shotgun_mp", false);
    self.GunList[32] = createGun("ak47_acog_silencer_mp", false);
    self.GunList[33] = createGun("ak47_acog_xmags_mp", false);
    self.GunList[34] = createGun("ak47_eotech_fmj_mp", false);
    self.GunList[35] = createGun("ak47_eotech_gl_mp", false);
    self.GunList[36] = createGun("ak47_eotech_heartbeat_mp", false);
    self.GunList[37] = createGun("ak47_eotech_mp", false);
    self.GunList[38] = createGun("ak47_eotech_shotgun_mp", false);
    self.GunList[39] = createGun("ak47_eotech_silencer_mp", false);
    self.GunList[40] = createGun("ak47_eotech_xmags_mp", false);
    self.GunList[41] = createGun("ak47_fmj_gl_mp", false);
    self.GunList[42] = createGun("ak47_fmj_heartbeat_mp", false);
    self.GunList[43] = createGun("ak47_fmj_mp", false);
    self.GunList[44] = createGun("ak47_fmj_reflex_mp", false);
    self.GunList[45] = createGun("ak47_fmj_shotgun_mp", false);
    self.GunList[46] = createGun("ak47_fmj_silencer_mp", false);
    self.GunList[47] = createGun("ak47_fmj_thermal_mp", false);
    self.GunList[48] = createGun("ak47_fmj_xmags_mp", false);
    self.GunList[49] = createGun("ak47_gl_heartbeat_mp", false);
    self.GunList[50] = createGun("ak47_gl_mp", false);
    self.GunList[51] = createGun("ak47_gl_reflex_mp", false);
    self.GunList[52] = createGun("ak47_gl_silencer_mp", false);
    self.GunList[53] = createGun("ak47_gl_thermal_mp", false);
    self.GunList[54] = createGun("ak47_gl_xmags_mp", false);
    self.GunList[55] = createGun("ak47_heartbeat_mp", false);
    self.GunList[56] = createGun("ak47_heartbeat_reflex_mp", false);
    self.GunList[57] = createGun("ak47_heartbeat_shotgun_mp", false);
    self.GunList[58] = createGun("ak47_heartbeat_silencer_mp", false);
    self.GunList[59] = createGun("ak47_heartbeat_thermal_mp", false);
    self.GunList[60] = createGun("ak47_heartbeat_xmags_mp", false);
    self.GunList[61] = createGun("ak47_mp", false);
    self.GunList[62] = createGun("ak47_reflex_mp", false);
    self.GunList[63] = createGun("ak47_reflex_shotgun_mp", false);
    self.GunList[64] = createGun("ak47_reflex_silencer_mp", false);
    self.GunList[65] = createGun("ak47_reflex_xmags_mp", false);
    self.GunList[66] = createGun("ak47_shotgun_mp", false);
    self.GunList[67] = createGun("ak47_shotgun_silencer_mp", false);
    self.GunList[68] = createGun("ak47_shotgun_thermal_mp", false);
    self.GunList[69] = createGun("ak47_shotgun_xmags_mp", false);
    self.GunList[70] = createGun("ak47_silencer_mp", false);
    self.GunList[71] = createGun("ak47_silencer_thermal_mp", false);
    self.GunList[72] = createGun("ak47_silencer_xmags_mp", false);
    self.GunList[73] = createGun("ak47_thermal_mp", false);
    self.GunList[74] = createGun("ak47_thermal_xmags_mp", false);
    self.GunList[75] = createGun("ak47_xmags_mp", false);
    self.GunList[76] = createGun("artillery_mp", false);
    self.GunList[77] = createGun("at4_mp", false);
    self.GunList[78] = createGun("aug_acog_fmj_mp", false);
    self.GunList[79] = createGun("aug_acog_grip_mp", false);
    self.GunList[80] = createGun("aug_acog_heartbeat_mp", false);
    self.GunList[81] = createGun("aug_acog_mp", false);
    self.GunList[82] = createGun("aug_acog_silencer_mp", false);
    self.GunList[83] = createGun("aug_acog_xmags_mp", false);
    self.GunList[84] = createGun("aug_eotech_fmj_mp", false);
    self.GunList[85] = createGun("aug_eotech_grip_mp", false);
    self.GunList[86] = createGun("aug_eotech_heartbeat_mp", false);
    self.GunList[87] = createGun("aug_eotech_mp", false);
    self.GunList[88] = createGun("aug_eotech_silencer_mp", false);
    self.GunList[89] = createGun("aug_eotech_xmags_mp", false);
    self.GunList[90] = createGun("aug_fmj_grip_mp", false);
    self.GunList[91] = createGun("aug_fmj_heartbeat_mp", false);
    self.GunList[92] = createGun("aug_fmj_mp", false);
    self.GunList[93] = createGun("aug_fmj_reflex_mp", false);
    self.GunList[94] = createGun("aug_fmj_silencer_mp", false);
    self.GunList[95] = createGun("aug_fmj_thermal_mp", false);
    self.GunList[96] = createGun("aug_fmj_xmags_mp", false);
    self.GunList[97] = createGun("aug_grip_heartbeat_mp", false);
    self.GunList[98] = createGun("aug_grip_mp", false);
    self.GunList[99] = createGun("aug_grip_reflex_mp", false);
    self.GunList[100] = createGun("aug_grip_silencer_mp", false);
    self.GunList[101] = createGun("aug_grip_thermal_mp", false);
    self.GunList[102] = createGun("aug_grip_xmags_mp", false);
    self.GunList[103] = createGun("aug_heartbeat_mp", false);
    self.GunList[104] = createGun("aug_heartbeat_reflex_mp", false);
    self.GunList[105] = createGun("aug_heartbeat_silencer_mp", false);
    self.GunList[106] = createGun("aug_heartbeat_thermal_mp", false);
    self.GunList[107] = createGun("aug_heartbeat_xmags_mp", false);
    self.GunList[108] = createGun("aug_mp", false);
    self.GunList[109] = createGun("aug_reflex_mp", false);
    self.GunList[110] = createGun("aug_reflex_silencer_mp", false);
    self.GunList[111] = createGun("aug_reflex_xmags_mp", false);
    self.GunList[112] = createGun("aug_silencer_mp", false);
    self.GunList[113] = createGun("aug_silencer_thermal_mp", false);
    self.GunList[114] = createGun("aug_silencer_xmags_mp", false);
    self.GunList[115] = createGun("aug_thermal_mp", false);
    self.GunList[116] = createGun("aug_thermal_xmags_mp", false);
    self.GunList[117] = createGun("aug_xmags_mp", false);
    self.GunList[118] = createGun("barrett_acog_fmj_mp", false);
    self.GunList[119] = createGun("barrett_acog_heartbeat_mp", false);
    self.GunList[120] = createGun("barrett_acog_mp", false);
    self.GunList[121] = createGun("barrett_acog_silencer_mp", false);
    self.GunList[122] = createGun("barrett_acog_xmags_mp", false);
    self.GunList[123] = createGun("barrett_fmj_heartbeat_mp", false);
    self.GunList[124] = createGun("barrett_fmj_mp", false);
    self.GunList[125] = createGun("barrett_fmj_silencer_mp", false);
    self.GunList[126] = createGun("barrett_fmj_thermal_mp", false);
    self.GunList[127] = createGun("barrett_fmj_xmags_mp", false);
    self.GunList[128] = createGun("barrett_heartbeat_mp", false);
    self.GunList[129] = createGun("barrett_heartbeat_silencer_mp", false);
    self.GunList[130] = createGun("barrett_heartbeat_thermal_mp", false);
    self.GunList[131] = createGun("barrett_heartbeat_xmags_mp", false);
    self.GunList[132] = createGun("barrett_mp", false);
    self.GunList[133] = createGun("barrett_silencer_mp", false);
    self.GunList[134] = createGun("barrett_silencer_thermal_mp", false);
    self.GunList[135] = createGun("barrett_silencer_xmags_mp", false);
    self.GunList[136] = createGun("barrett_thermal_mp", false);
    self.GunList[137] = createGun("barrett_thermal_xmags_mp", false);
    self.GunList[138] = createGun("barrett_xmags_mp", false);
    self.GunList[139] = createGun("beretta393_akimbo_fmj_mp", true);
    self.GunList[140] = createGun("beretta393_akimbo_mp", true);
    self.GunList[141] = createGun("beretta393_akimbo_silencer_mp", true);
    self.GunList[142] = createGun("beretta393_akimbo_xmags_mp", true);
    self.GunList[143] = createGun("beretta393_eotech_fmj_mp", false);
    self.GunList[144] = createGun("beretta393_eotech_mp", false);
    self.GunList[145] = createGun("beretta393_eotech_silencer_mp", false);
    self.GunList[146] = createGun("beretta393_eotech_xmags_mp", false);
    self.GunList[147] = createGun("beretta393_fmj_mp", false);
    self.GunList[148] = createGun("beretta393_fmj_reflex_mp", false);
    self.GunList[149] = createGun("beretta393_fmj_silencer_mp", false);
    self.GunList[150] = createGun("beretta393_fmj_xmags_mp", false);
    self.GunList[151] = createGun("beretta393_mp", false);
    self.GunList[152] = createGun("beretta393_reflex_mp", false);
    self.GunList[153] = createGun("beretta393_reflex_silencer_mp", false);
    self.GunList[154] = createGun("beretta393_reflex_xmags_mp", false);
    self.GunList[155] = createGun("beretta393_silencer_mp", false);
    self.GunList[156] = createGun("beretta393_silencer_xmags_mp", false);
    self.GunList[157] = createGun("beretta393_xmags_mp", false);
    self.GunList[158] = createGun("beretta_akimbo_fmj_mp", true);
    self.GunList[159] = createGun("beretta_akimbo_mp", true);
    self.GunList[160] = createGun("beretta_akimbo_silencer_mp", true);
    self.GunList[161] = createGun("beretta_akimbo_xmags_mp", true);
    self.GunList[162] = createGun("beretta_fmj_mp", false);
    self.GunList[163] = createGun("beretta_fmj_silencer_mp", false);
    self.GunList[164] = createGun("beretta_fmj_tactical_mp", false);
    self.GunList[165] = createGun("beretta_fmj_xmags_mp", false);
    self.GunList[166] = createGun("beretta_mp", false);
    self.GunList[167] = createGun("beretta_silencer_mp", false);
    self.GunList[168] = createGun("beretta_silencer_tactical_mp", false);
    self.GunList[169] = createGun("beretta_silencer_xmags_mp", false);
    self.GunList[170] = createGun("beretta_tactical_mp", false);
    self.GunList[171] = createGun("beretta_tactical_xmags_mp", false);
    self.GunList[172] = createGun("beretta_xmags_mp", false);
    self.GunList[173] = createGun("briefcase_bomb_defuse_mp", false);
    self.GunList[174] = createGun("briefcase_bomb_mp", false);
    self.GunList[175] = createGun("c4_mp", false);
    self.GunList[176] = createGun("cheytac_acog_fmj_mp", false);
    self.GunList[177] = createGun("cheytac_acog_heartbeat_mp", false);
    self.GunList[178] = createGun("cheytac_acog_mp", false);
    self.GunList[179] = createGun("cheytac_acog_silencer_mp", false);
    self.GunList[180] = createGun("cheytac_acog_xmags_mp", false);
    self.GunList[181] = createGun("cheytac_fmj_heartbeat_mp", false);
    self.GunList[182] = createGun("cheytac_fmj_mp", false);
    self.GunList[183] = createGun("cheytac_fmj_silencer_mp", false);
    self.GunList[184] = createGun("cheytac_fmj_thermal_mp", false);
    self.GunList[185] = createGun("cheytac_fmj_xmags_mp", false);
    self.GunList[186] = createGun("cheytac_heartbeat_mp", false);
    self.GunList[187] = createGun("cheytac_heartbeat_silencer_mp", false);
    self.GunList[188] = createGun("cheytac_heartbeat_thermal_mp", false);
    self.GunList[189] = createGun("cheytac_heartbeat_xmags_mp", false);
    self.GunList[190] = createGun("cheytac_mp", false);
    self.GunList[191] = createGun("cheytac_silencer_mp", false);
    self.GunList[192] = createGun("cheytac_silencer_thermal_mp", false);
    self.GunList[193] = createGun("cheytac_silencer_xmags_mp", false);
    self.GunList[194] = createGun("cheytac_thermal_mp", false);
    self.GunList[195] = createGun("cheytac_thermal_xmags_mp", false);
    self.GunList[196] = createGun("cheytac_xmags_mp", false);
    self.GunList[197] = createGun("claymore_mp", false);
    self.GunList[198] = createGun("coltanaconda_akimbo_fmj_mp", true);
    self.GunList[199] = createGun("coltanaconda_akimbo_mp", true);
    self.GunList[200] = createGun("coltanaconda_fmj_mp", false);
    self.GunList[201] = createGun("coltanaconda_fmj_tactical_mp", false);
    self.GunList[202] = createGun("coltanaconda_mp", false);
    self.GunList[203] = createGun("coltanaconda_tactical_mp", false);
    self.GunList[204] = createGun("concussion_grenade_mp", false);
    self.GunList[205] = createGun("defaultweapon_mp", false);
    self.GunList[206] = createGun("deserteagle_akimbo_fmj_mp", true);
    self.GunList[207] = createGun("deserteagle_akimbo_mp", true);
    self.GunList[208] = createGun("deserteagle_fmj_mp", false);
    self.GunList[209] = createGun("deserteagle_fmj_tactical_mp", false);
    self.GunList[210] = createGun("deserteaglegold_mp", false);
    self.GunList[211] = createGun("deserteagle_mp", false);
    self.GunList[212] = createGun("deserteagle_tactical_mp", false);
    self.GunList[213] = createGun("fal_acog_fmj_mp", false);
    self.GunList[214] = createGun("fal_acog_gl_mp", false);
    self.GunList[215] = createGun("fal_acog_heartbeat_mp", false);
    self.GunList[216] = createGun("fal_acog_mp", false);
    self.GunList[217] = createGun("fal_acog_shotgun_mp", false);
    self.GunList[218] = createGun("fal_acog_silencer_mp", false);
    self.GunList[219] = createGun("fal_acog_xmags_mp", false);
    self.GunList[220] = createGun("fal_eotech_fmj_mp", false);
    self.GunList[221] = createGun("fal_eotech_gl_mp", false);
    self.GunList[222] = createGun("fal_eotech_heartbeat_mp", false);
    self.GunList[223] = createGun("fal_eotech_mp", false);
    self.GunList[224] = createGun("fal_eotech_shotgun_mp", false);
    self.GunList[225] = createGun("fal_eotech_silencer_mp", false);
    self.GunList[226] = createGun("fal_eotech_xmags_mp", false);
    self.GunList[227] = createGun("fal_fmj_gl_mp", false);
    self.GunList[228] = createGun("fal_fmj_heartbeat_mp", false);
    self.GunList[229] = createGun("fal_fmj_mp", false);
    self.GunList[230] = createGun("fal_fmj_reflex_mp", false);
    self.GunList[231] = createGun("fal_fmj_shotgun_mp", false);
    self.GunList[232] = createGun("fal_fmj_silencer_mp", false);
    self.GunList[233] = createGun("fal_fmj_thermal_mp", false);
    self.GunList[234] = createGun("fal_fmj_xmags_mp", false);
    self.GunList[235] = createGun("fal_gl_heartbeat_mp", false);
    self.GunList[236] = createGun("fal_gl_mp", false);
    self.GunList[237] = createGun("fal_gl_reflex_mp", false);
    self.GunList[238] = createGun("fal_gl_silencer_mp", false);
    self.GunList[239] = createGun("fal_gl_thermal_mp", false);
    self.GunList[240] = createGun("fal_gl_xmags_mp", false);
    self.GunList[241] = createGun("fal_heartbeat_mp", false);
    self.GunList[242] = createGun("fal_heartbeat_reflex_mp", false);
    self.GunList[243] = createGun("fal_heartbeat_shotgun_mp", false);
    self.GunList[244] = createGun("fal_heartbeat_silencer_mp", false);
    self.GunList[245] = createGun("fal_heartbeat_thermal_mp", false);
    self.GunList[246] = createGun("fal_heartbeat_xmags_mp", false);
    self.GunList[247] = createGun("fal_mp", false);
    self.GunList[248] = createGun("fal_reflex_mp", false);
    self.GunList[249] = createGun("fal_reflex_shotgun_mp", false);
    self.GunList[250] = createGun("fal_reflex_silencer_mp", false);
    self.GunList[251] = createGun("fal_reflex_xmags_mp", false);
    self.GunList[252] = createGun("fal_shotgun_mp", false);
    self.GunList[253] = createGun("fal_shotgun_silencer_mp", false);
    self.GunList[254] = createGun("fal_shotgun_thermal_mp", false);
    self.GunList[255] = createGun("fal_shotgun_xmags_mp", false);
    self.GunList[256] = createGun("fal_silencer_mp", false);
    self.GunList[257] = createGun("fal_silencer_thermal_mp", false);
    self.GunList[258] = createGun("fal_silencer_xmags_mp", false);
    self.GunList[259] = createGun("fal_thermal_mp", false);
    self.GunList[260] = createGun("fal_thermal_xmags_mp", false);
    self.GunList[261] = createGun("fal_xmags_mp", false);
    self.GunList[262] = createGun("famas_acog_fmj_mp", false);
    self.GunList[263] = createGun("famas_acog_gl_mp", false);
    self.GunList[264] = createGun("famas_acog_heartbeat_mp", false);
    self.GunList[265] = createGun("famas_acog_mp", false);
    self.GunList[266] = createGun("famas_acog_shotgun_mp", false);
    self.GunList[267] = createGun("famas_acog_silencer_mp", false);
    self.GunList[268] = createGun("famas_acog_xmags_mp", false);
    self.GunList[269] = createGun("famas_eotech_fmj_mp", false);
    self.GunList[270] = createGun("famas_eotech_gl_mp", false);
    self.GunList[271] = createGun("famas_eotech_heartbeat_mp", false);
    self.GunList[272] = createGun("famas_eotech_mp", false);
    self.GunList[273] = createGun("famas_eotech_shotgun_mp", false);
    self.GunList[274] = createGun("famas_eotech_silencer_mp", false);
    self.GunList[275] = createGun("famas_eotech_xmags_mp", false);
    self.GunList[276] = createGun("famas_fmj_gl_mp", false);
    self.GunList[277] = createGun("famas_fmj_heartbeat_mp", false);
    self.GunList[278] = createGun("famas_fmj_mp", false);
    self.GunList[279] = createGun("famas_fmj_reflex_mp", false);
    self.GunList[280] = createGun("famas_fmj_shotgun_mp", false);
    self.GunList[281] = createGun("famas_fmj_silencer_mp", false);
    self.GunList[282] = createGun("famas_fmj_thermal_mp", false);
    self.GunList[283] = createGun("famas_fmj_xmags_mp", false);
    self.GunList[284] = createGun("famas_gl_heartbeat_mp", false);
    self.GunList[285] = createGun("famas_gl_mp", false);
    self.GunList[286] = createGun("famas_gl_reflex_mp", false);
    self.GunList[287] = createGun("famas_gl_silencer_mp", false);
    self.GunList[288] = createGun("famas_gl_thermal_mp", false);
    self.GunList[289] = createGun("famas_gl_xmags_mp", false);
    self.GunList[290] = createGun("famas_heartbeat_mp", false);
    self.GunList[291] = createGun("famas_heartbeat_reflex_mp", false);
    self.GunList[292] = createGun("famas_heartbeat_shotgun_mp", false);
    self.GunList[293] = createGun("famas_heartbeat_silencer_mp", false);
    self.GunList[294] = createGun("famas_heartbeat_thermal_mp", false);
    self.GunList[295] = createGun("famas_heartbeat_xmags_mp", false);
    self.GunList[296] = createGun("famas_mp", false);
    self.GunList[297] = createGun("famas_reflex_mp", false);
    self.GunList[298] = createGun("famas_reflex_shotgun_mp", false);
    self.GunList[299] = createGun("famas_reflex_silencer_mp", false);
    self.GunList[300] = createGun("famas_reflex_xmags_mp", false);
    self.GunList[301] = createGun("famas_shotgun_mp", false);
    self.GunList[302] = createGun("famas_shotgun_silencer_mp", false);
    self.GunList[303] = createGun("famas_shotgun_thermal_mp", false);
    self.GunList[304] = createGun("famas_shotgun_xmags_mp", false);
    self.GunList[305] = createGun("famas_silencer_mp", false);
    self.GunList[306] = createGun("famas_silencer_thermal_mp", false);
    self.GunList[307] = createGun("famas_silencer_xmags_mp", false);
    self.GunList[308] = createGun("famas_thermal_mp", false);
    self.GunList[309] = createGun("famas_thermal_xmags_mp", false);
    self.GunList[310] = createGun("famas_xmags_mp", false);
    self.GunList[311] = createGun("aa12_eotech_fmj_mp", false);
    self.GunList[312] = createGun("flash_grenade_mp", false);
    self.GunList[313] = createGun("fn2000_acog_fmj_mp", false);
    self.GunList[314] = createGun("fn2000_acog_gl_mp", false);
    self.GunList[315] = createGun("fn2000_acog_heartbeat_mp", false);
    self.GunList[316] = createGun("fn2000_acog_mp", false);
    self.GunList[317] = createGun("fn2000_acog_shotgun_mp", false);
    self.GunList[318] = createGun("fn2000_acog_silencer_mp", false);
    self.GunList[319] = createGun("fn2000_acog_xmags_mp", false);
    self.GunList[320] = createGun("fn2000_eotech_fmj_mp", false);
    self.GunList[321] = createGun("fn2000_eotech_gl_mp", false);
    self.GunList[322] = createGun("fn2000_eotech_heartbeat_mp", false);
    self.GunList[323] = createGun("fn2000_eotech_mp", false);
    self.GunList[324] = createGun("fn2000_eotech_shotgun_mp", false);
    self.GunList[325] = createGun("fn2000_eotech_silencer_mp", false);
    self.GunList[326] = createGun("fn2000_eotech_xmags_mp", false);
    self.GunList[327] = createGun("fn2000_fmj_gl_mp", false);
    self.GunList[328] = createGun("fn2000_fmj_heartbeat_mp", false);
    self.GunList[329] = createGun("fn2000_fmj_mp", false);
    self.GunList[330] = createGun("fn2000_fmj_reflex_mp", false);
    self.GunList[331] = createGun("fn2000_fmj_shotgun_mp", false);
    self.GunList[332] = createGun("fn2000_fmj_silencer_mp", false);
    self.GunList[333] = createGun("fn2000_fmj_thermal_mp", false);
    self.GunList[334] = createGun("fn2000_fmj_xmags_mp", false);
    self.GunList[335] = createGun("fn2000_gl_heartbeat_mp", false);
    self.GunList[336] = createGun("fn2000_gl_mp", false);
    self.GunList[337] = createGun("fn2000_gl_reflex_mp", false);
    self.GunList[338] = createGun("fn2000_gl_silencer_mp", false);
    self.GunList[339] = createGun("fn2000_gl_thermal_mp", false);
    self.GunList[340] = createGun("fn2000_gl_xmags_mp", false);
    self.GunList[341] = createGun("fn2000_heartbeat_mp", false);
    self.GunList[342] = createGun("fn2000_heartbeat_reflex_mp", false);
    self.GunList[343] = createGun("fn2000_heartbeat_shotgun_mp", false);
    self.GunList[344] = createGun("fn2000_heartbeat_silencer_mp", false);
    self.GunList[345] = createGun("fn2000_heartbeat_thermal_mp", false);
    self.GunList[346] = createGun("fn2000_heartbeat_xmags_mp", false);
    self.GunList[347] = createGun("fn2000_mp", false);
    self.GunList[348] = createGun("fn2000_reflex_mp", false);
    self.GunList[349] = createGun("fn2000_reflex_shotgun_mp", false);
    self.GunList[350] = createGun("fn2000_reflex_silencer_mp", false);
    self.GunList[351] = createGun("fn2000_reflex_xmags_mp", false);
    self.GunList[352] = createGun("fn2000_shotgun_mp", false);
    self.GunList[353] = createGun("fn2000_shotgun_silencer_mp", false);
    self.GunList[354] = createGun("fn2000_shotgun_thermal_mp", false);
    self.GunList[355] = createGun("fn2000_shotgun_xmags_mp", false);
    self.GunList[356] = createGun("fn2000_silencer_mp", false);
    self.GunList[357] = createGun("fn2000_silencer_thermal_mp", false);
    self.GunList[358] = createGun("fn2000_silencer_xmags_mp", false);
    self.GunList[359] = createGun("fn2000_thermal_mp", false);
    self.GunList[360] = createGun("fn2000_thermal_xmags_mp", false);
    self.GunList[361] = createGun("fn2000_xmags_mp", false);
    self.GunList[362] = createGun("frag_grenade_mp", false);
    self.GunList[363] = createGun("frag_grenade_short_mp", false);
    self.GunList[364] = createGun("glock_akimbo_fmj_mp", true);
    self.GunList[365] = createGun("glock_akimbo_mp", true);
    self.GunList[366] = createGun("glock_akimbo_silencer_mp", true);
    self.GunList[367] = createGun("glock_akimbo_xmags_mp", true);
    self.GunList[368] = createGun("glock_eotech_fmj_mp", false);
    self.GunList[369] = createGun("glock_eotech_mp", false);
    self.GunList[370] = createGun("glock_eotech_silencer_mp", false);
    self.GunList[371] = createGun("glock_eotech_xmags_mp", false);
    self.GunList[372] = createGun("glock_fmj_mp", false);
    self.GunList[373] = createGun("glock_fmj_reflex_mp", false);
    self.GunList[374] = createGun("glock_fmj_silencer_mp", false);
    self.GunList[375] = createGun("glock_fmj_xmags_mp", false);
    self.GunList[376] = createGun("glock_mp", false);
    self.GunList[377] = createGun("glock_reflex_mp", false);
    self.GunList[378] = createGun("glock_reflex_silencer_mp", false);
    self.GunList[379] = createGun("glock_reflex_xmags_mp", false);
    self.GunList[380] = createGun("glock_silencer_mp", false);
    self.GunList[381] = createGun("glock_silencer_xmags_mp", false);
    self.GunList[382] = createGun("glock_xmags_mp", false);
    self.GunList[383] = createGun("harrier_missile_mp", false);
    self.GunList[384] = createGun("heli_remote_mp", false);
    self.GunList[385] = createGun("javelin_mp", false);
    self.GunList[386] = createGun("killstreak_ac130_mp", false);
    self.GunList[387] = createGun("killstreak_counter_uav_mp", false);
    self.GunList[388] = createGun("killstreak_emp_mp", false);
    self.GunList[389] = createGun("killstreak_harrier_airstrike_mp", false);
    self.GunList[390] = createGun("killstreak_helicopter_flares_mp", false);
    self.GunList[391] = createGun("killstreak_helicopter_minigun_mp", false);
    self.GunList[392] = createGun("killstreak_helicopter_mp", false);
    self.GunList[393] = createGun("killstreak_nuke_mp", false);
    self.GunList[394] = createGun("killstreak_precision_airstrike_mp", false);
    self.GunList[395] = createGun("killstreak_predator_missile_mp", false);
    self.GunList[396] = createGun("killstreak_sentry_mp", false);
    self.GunList[397] = createGun("killstreak_stealth_airstrike_mp", false);
    self.GunList[398] = createGun("killstreak_uav_mp", false);
    self.GunList[399] = createGun("kriss_acog_fmj_mp", false);
    self.GunList[400] = createGun("kriss_acog_mp", false);
    self.GunList[401] = createGun("kriss_acog_rof_mp", false);
    self.GunList[402] = createGun("kriss_acog_silencer_mp", false);
    self.GunList[403] = createGun("kriss_acog_xmags_mp", false);
    self.GunList[404] = createGun("kriss_akimbo_fmj_mp", true);
    self.GunList[405] = createGun("kriss_akimbo_mp", true);
    self.GunList[406] = createGun("kriss_akimbo_rof_mp", true);
    self.GunList[407] = createGun("kriss_akimbo_silencer_mp", true);
    self.GunList[408] = createGun("kriss_akimbo_xmags_mp", true);
    self.GunList[409] = createGun("kriss_eotech_fmj_mp", false);
    self.GunList[410] = createGun("kriss_eotech_mp", false);
    self.GunList[411] = createGun("kriss_eotech_rof_mp", false);
    self.GunList[412] = createGun("kriss_eotech_silencer_mp", false);
    self.GunList[413] = createGun("kriss_eotech_xmags_mp", false);
    self.GunList[414] = createGun("kriss_fmj_mp", false);
    self.GunList[415] = createGun("kriss_fmj_reflex_mp", false);
    self.GunList[416] = createGun("kriss_fmj_rof_mp", false);
    self.GunList[417] = createGun("kriss_fmj_silencer_mp", false);
    self.GunList[418] = createGun("kriss_fmj_thermal_mp", false);
    self.GunList[419] = createGun("kriss_fmj_xmags_mp", false);
    self.GunList[420] = createGun("kriss_mp", false);
    self.GunList[421] = createGun("kriss_reflex_mp", false);
    self.GunList[422] = createGun("kriss_reflex_rof_mp", false);
    self.GunList[423] = createGun("kriss_reflex_silencer_mp", false);
    self.GunList[424] = createGun("kriss_reflex_xmags_mp", false);
    self.GunList[425] = createGun("kriss_rof_mp", false);
    self.GunList[426] = createGun("kriss_rof_silencer_mp", false);
    self.GunList[427] = createGun("kriss_rof_thermal_mp", false);
    self.GunList[428] = createGun("kriss_rof_xmags_mp", false);
    self.GunList[429] = createGun("kriss_silencer_mp", false);
    self.GunList[430] = createGun("kriss_silencer_thermal_mp", false);
    self.GunList[431] = createGun("kriss_silencer_xmags_mp", false);
    self.GunList[432] = createGun("kriss_thermal_mp", false);
    self.GunList[433] = createGun("kriss_thermal_xmags_mp", false);
    self.GunList[434] = createGun("kriss_xmags_mp", false);
    self.GunList[435] = createGun("m1014_eotech_fmj_mp", false);
    self.GunList[436] = createGun("m1014_eotech_grip_mp", false);
    self.GunList[437] = createGun("m1014_eotech_mp", false);
    self.GunList[438] = createGun("m1014_eotech_silencer_mp", false);
    self.GunList[439] = createGun("m1014_eotech_xmags_mp", false);
    self.GunList[440] = createGun("m1014_fmj_grip_mp", false);
    self.GunList[441] = createGun("m1014_fmj_mp", false);
    self.GunList[442] = createGun("m1014_fmj_reflex_mp", false);
    self.GunList[443] = createGun("m1014_fmj_silencer_mp", false);
    self.GunList[444] = createGun("m1014_fmj_xmags_mp", false);
    self.GunList[445] = createGun("m1014_grip_mp", false);
    self.GunList[446] = createGun("m1014_grip_reflex_mp", false);
    self.GunList[447] = createGun("m1014_grip_silencer_mp", false);
    self.GunList[448] = createGun("m1014_grip_xmags_mp", false);
    self.GunList[449] = createGun("m1014_mp", false);
    self.GunList[450] = createGun("m1014_reflex_mp", false);
    self.GunList[451] = createGun("m1014_reflex_silencer_mp", false);
    self.GunList[452] = createGun("m1014_reflex_xmags_mp", false);
    self.GunList[453] = createGun("m1014_silencer_mp", false);
    self.GunList[454] = createGun("m1014_silencer_xmags_mp", false);
    self.GunList[455] = createGun("m1014_xmags_mp", false);
    self.GunList[456] = createGun("m16_acog_fmj_mp", false);
    self.GunList[457] = createGun("m16_acog_gl_mp", false);
    self.GunList[458] = createGun("m16_acog_heartbeat_mp", false);
    self.GunList[459] = createGun("m16_acog_mp", false);
    self.GunList[460] = createGun("m16_acog_shotgun_mp", false);
    self.GunList[461] = createGun("m16_acog_silencer_mp", false);
    self.GunList[462] = createGun("m16_acog_xmags_mp", false);
    self.GunList[463] = createGun("m16_eotech_fmj_mp", false);
    self.GunList[464] = createGun("m16_eotech_gl_mp", false);
    self.GunList[465] = createGun("m16_eotech_heartbeat_mp", false);
    self.GunList[466] = createGun("m16_eotech_mp", false);
    self.GunList[467] = createGun("m16_eotech_shotgun_mp", false);
    self.GunList[468] = createGun("m16_eotech_silencer_mp", false);
    self.GunList[469] = createGun("m16_eotech_xmags_mp", false);
    self.GunList[470] = createGun("m16_fmj_gl_mp", false);
    self.GunList[471] = createGun("m16_fmj_heartbeat_mp", false);
    self.GunList[472] = createGun("m16_fmj_mp", false);
    self.GunList[473] = createGun("m16_fmj_reflex_mp", false);
    self.GunList[474] = createGun("m16_fmj_shotgun_mp", false);
    self.GunList[475] = createGun("m16_fmj_silencer_mp", false);
    self.GunList[476] = createGun("m16_gl_mp", false);
    self.GunList[477] = createGun("m16_heartbeat_mp", false);
    self.GunList[478] = createGun("m16_mp", false);
    self.GunList[479] = createGun("m16_reflex_mp", false);
    self.GunList[480] = createGun("m16_shotgun_mp", false);
    self.GunList[481] = createGun("m16_silencer_mp", false);
    self.GunList[482] = createGun("m16_thermal_mp", false);
    self.GunList[483] = createGun("m16_xmags_mp", false);
    self.GunList[484] = createGun("m21_acog_fmj_mp", false);
    self.GunList[485] = createGun("m21_acog_heartbeat_mp", false);
    self.GunList[486] = createGun("m21_acog_mp", false);
    self.GunList[487] = createGun("m21_acog_silencer_mp", false);
    self.GunList[488] = createGun("m21_acog_xmags_mp", false);
    self.GunList[489] = createGun("m21_fmj_heartbeat_mp", false);
    self.GunList[490] = createGun("m21_fmj_mp", false);
    self.GunList[491] = createGun("m21_fmj_silencer_mp", false);
    self.GunList[492] = createGun("m21_fmj_thermal_mp", false);
    self.GunList[493] = createGun("m21_fmj_xmags_mp", false);
    self.GunList[494] = createGun("m21_heartbeat_mp", false);
    self.GunList[495] = createGun("m21_heartbeat_silencer_mp", false);
    self.GunList[496] = createGun("m21_heartbeat_thermal_mp", false);
    self.GunList[497] = createGun("m21_heartbeat_xmags_mp", false);
    self.GunList[498] = createGun("m21_mp", false);
    self.GunList[499] = createGun("m21_silencer_mp", false);
    self.GunList[500] = createGun("m21_silencer_thermal_mp", false);
    self.GunList[501] = createGun("m21_silencer_xmags_mp", false);
    self.GunList[502] = createGun("m21_thermal_mp", false);
    self.GunList[503] = createGun("m21_thermal_xmags_mp", false);
    self.GunList[504] = createGun("m21_xmags_mp", false);
    self.GunList[505] = createGun("m240_acog_fmj_mp", false);
    self.GunList[506] = createGun("m240_acog_grip_mp", false);
    self.GunList[507] = createGun("m240_acog_heartbeat_mp", false);
    self.GunList[508] = createGun("m240_acog_mp", false);
    self.GunList[509] = createGun("m240_acog_silencer_mp", false);
    self.GunList[510] = createGun("m240_acog_xmags_mp", false);
    self.GunList[511] = createGun("m240_eotech_fmj_mp", false);
    self.GunList[512] = createGun("m240_eotech_grip_mp", false);
    self.GunList[513] = createGun("m240_eotech_heartbeat_mp", false);
    self.GunList[514] = createGun("m240_eotech_mp", false);
    self.GunList[515] = createGun("m240_eotech_silencer_mp", false);
    self.GunList[516] = createGun("m240_eotech_xmags_mp", false);
    self.GunList[517] = createGun("m240_fmj_grip_mp", false);
    self.GunList[518] = createGun("m240_fmj_heartbeat_mp", false);
    self.GunList[519] = createGun("m240_fmj_mp", false);
    self.GunList[520] = createGun("m240_fmj_reflex_mp", false);
    self.GunList[521] = createGun("m240_fmj_silencer_mp", false);
    self.GunList[522] = createGun("m240_fmj_thermal_mp", false);
    self.GunList[523] = createGun("m240_fmj_xmags_mp", false);
    self.GunList[524] = createGun("m240_grip_heartbeat_mp", false);
    self.GunList[525] = createGun("m240_grip_mp", false);
    self.GunList[526] = createGun("m240_grip_reflex_mp", false);
    self.GunList[527] = createGun("m240_grip_silencer_mp", false);
    self.GunList[528] = createGun("m240_grip_thermal_mp", false);
    self.GunList[529] = createGun("m240_grip_xmags_mp", false);
    self.GunList[530] = createGun("m240_heartbeat_mp", false);
    self.GunList[531] = createGun("m240_heartbeat_reflex_mp", false);
    self.GunList[532] = createGun("m240_heartbeat_silencer_mp", false);
    self.GunList[533] = createGun("m240_heartbeat_thermal_mp", false);
    self.GunList[534] = createGun("m240_heartbeat_xmags_mp", false);
    self.GunList[535] = createGun("m240_mp", false);
    self.GunList[536] = createGun("m240_reflex_mp", false);
    self.GunList[537] = createGun("m240_reflex_silencer_mp", false);
    self.GunList[538] = createGun("m240_reflex_xmags_mp", false);
    self.GunList[539] = createGun("m240_silencer_mp", false);
    self.GunList[540] = createGun("m240_silencer_thermal_mp", false);
    self.GunList[541] = createGun("m240_silencer_xmags_mp", false);
    self.GunList[542] = createGun("m240_thermal_mp", false);
    self.GunList[543] = createGun("m240_thermal_xmags_mp", false);
    self.GunList[544] = createGun("m240_xmags_mp", false);
    self.GunList[545] = createGun("m4_acog_fmj_mp", false);
    self.GunList[546] = createGun("m4_acog_gl_mp", false);
    self.GunList[547] = createGun("m4_acog_heartbeat_mp", false);
    self.GunList[548] = createGun("m4_acog_mp", false);
    self.GunList[549] = createGun("m4_acog_shotgun_mp", false);
    self.GunList[550] = createGun("m4_acog_silencer_mp", false);
    self.GunList[551] = createGun("m4_acog_xmags_mp", false);
    self.GunList[552] = createGun("m4_eotech_fmj_mp", false);
    self.GunList[553] = createGun("m4_eotech_gl_mp", false);
    self.GunList[554] = createGun("m4_eotech_heartbeat_mp", false);
    self.GunList[555] = createGun("m4_eotech_mp", false);
    self.GunList[556] = createGun("m4_eotech_shotgun_mp", false);
    self.GunList[557] = createGun("m4_eotech_silencer_mp", false);
    self.GunList[558] = createGun("m4_eotech_xmags_mp", false);
    self.GunList[559] = createGun("m4_fmj_gl_mp", false);
    self.GunList[560] = createGun("m4_fmj_heartbeat_mp", false);
    self.GunList[561] = createGun("m4_fmj_mp", false);
    self.GunList[562] = createGun("m4_fmj_reflex_mp", false);
    self.GunList[563] = createGun("m4_fmj_shotgun_mp", false);
    self.GunList[564] = createGun("m4_fmj_silencer_mp", false);
    self.GunList[565] = createGun("m4_fmj_thermal_mp", false);
    self.GunList[566] = createGun("m4_fmj_xmags_mp", false);
    self.GunList[567] = createGun("m4_gl_heartbeat_mp", false);
    self.GunList[568] = createGun("m4_gl_mp", false);
    self.GunList[569] = createGun("m4_gl_reflex_mp", false);
    self.GunList[570] = createGun("m4_gl_silencer_mp", false);
    self.GunList[571] = createGun("m4_gl_thermal_mp", false);
    self.GunList[572] = createGun("m4_gl_xmags_mp", false);
    self.GunList[573] = createGun("m4_heartbeat_mp", false);
    self.GunList[574] = createGun("m4_heartbeat_reflex_mp", false);
    self.GunList[575] = createGun("m4_heartbeat_shotgun_mp", false);
    self.GunList[576] = createGun("m4_heartbeat_silencer_mp", false);
    self.GunList[577] = createGun("m4_heartbeat_thermal_mp", false);
    self.GunList[578] = createGun("m4_heartbeat_xmags_mp", false);
    self.GunList[579] = createGun("m4_mp", false);
    self.GunList[580] = createGun("m4_reflex_mp", false);
    self.GunList[581] = createGun("m4_reflex_shotgun_mp", false);
    self.GunList[582] = createGun("m4_reflex_silencer_mp", false);
    self.GunList[583] = createGun("m4_reflex_xmags_mp", false);
    self.GunList[584] = createGun("m4_shotgun_mp", false);
    self.GunList[585] = createGun("m4_shotgun_silencer_mp", false);
    self.GunList[586] = createGun("m4_shotgun_thermal_mp", false);
    self.GunList[587] = createGun("m4_shotgun_xmags_mp", false);
    self.GunList[588] = createGun("m4_silencer_mp", false);
    self.GunList[589] = createGun("m4_silencer_thermal_mp", false);
    self.GunList[590] = createGun("m4_silencer_xmags_mp", false);
    self.GunList[591] = createGun("m4_thermal_mp", false);
    self.GunList[592] = createGun("m4_thermal_xmags_mp", false);
    self.GunList[593] = createGun("m4_xmags_mp", false);
    self.GunList[594] = createGun("m79_mp", false);
    self.GunList[595] = createGun("masada_acog_fmj_mp", false);
    self.GunList[596] = createGun("masada_acog_gl_mp", false);
    self.GunList[597] = createGun("masada_acog_heartbeat_mp", false);
    self.GunList[598] = createGun("masada_acog_mp", false);
    self.GunList[599] = createGun("masada_acog_shotgun_mp", false);
    self.GunList[600] = createGun("masada_acog_silencer_mp", false);
    self.GunList[601] = createGun("masada_acog_xmags_mp", false);
    self.GunList[602] = createGun("masada_eotech_fmj_mp", false);
    self.GunList[603] = createGun("masada_eotech_gl_mp", false);
    self.GunList[604] = createGun("masada_eotech_heartbeat_mp", false);
    self.GunList[605] = createGun("masada_eotech_mp", false);
    self.GunList[606] = createGun("masada_eotech_shotgun_mp", false);
    self.GunList[607] = createGun("masada_eotech_silencer_mp", false);
    self.GunList[608] = createGun("masada_eotech_xmags_mp", false);
    self.GunList[609] = createGun("masada_fmj_gl_mp", false);
    self.GunList[610] = createGun("masada_fmj_heartbeat_mp", false);
    self.GunList[611] = createGun("masada_fmj_mp", false);
    self.GunList[612] = createGun("masada_fmj_reflex_mp", false);
    self.GunList[613] = createGun("masada_fmj_shotgun_mp", false);
    self.GunList[614] = createGun("masada_fmj_silencer_mp", false);
    self.GunList[615] = createGun("masada_fmj_thermal_mp", false);
    self.GunList[616] = createGun("masada_fmj_xmags_mp", false);
    self.GunList[617] = createGun("masada_gl_heartbeat_mp", false);
    self.GunList[618] = createGun("masada_gl_mp", false);
    self.GunList[619] = createGun("masada_gl_reflex_mp", false);
    self.GunList[620] = createGun("masada_gl_silencer_mp", false);
    self.GunList[621] = createGun("masada_gl_thermal_mp", false);
    self.GunList[622] = createGun("masada_gl_xmags_mp", false);
    self.GunList[623] = createGun("masada_heartbeat_mp", false);
    self.GunList[624] = createGun("masada_heartbeat_reflex_mp", false);
    self.GunList[625] = createGun("masada_heartbeat_shotgun_mp", false);
    self.GunList[626] = createGun("masada_heartbeat_silencer_mp", false);
    self.GunList[627] = createGun("masada_heartbeat_thermal_mp", false);
    self.GunList[628] = createGun("masada_heartbeat_xmags_mp", false);
    self.GunList[629] = createGun("masada_mp", false);
    self.GunList[630] = createGun("masada_reflex_mp", false);
    self.GunList[631] = createGun("masada_reflex_shotgun_mp", false);
    self.GunList[632] = createGun("masada_reflex_silencer_mp", false);
    self.GunList[633] = createGun("masada_reflex_xmags_mp", false);
    self.GunList[634] = createGun("masada_shotgun_mp", false);
    self.GunList[635] = createGun("masada_shotgun_silencer_mp", false);
    self.GunList[636] = createGun("masada_shotgun_thermal_mp", false);
    self.GunList[637] = createGun("masada_shotgun_xmags_mp", false);
    self.GunList[638] = createGun("masada_silencer_mp", false);
    self.GunList[639] = createGun("masada_silencer_thermal_mp", false);
    self.GunList[640] = createGun("masada_silencer_xmags_mp", false);
    self.GunList[641] = createGun("masada_thermal_mp", false);
    self.GunList[642] = createGun("masada_thermal_xmags_mp", false);
    self.GunList[643] = createGun("masada_xmags_mp", false);
    self.GunList[644] = createGun("mg4_acog_fmj_mp", false);
    self.GunList[645] = createGun("mg4_acog_grip_mp", false);
    self.GunList[646] = createGun("mg4_acog_heartbeat_mp", false);
    self.GunList[647] = createGun("mg4_acog_mp", false);
    self.GunList[648] = createGun("mg4_acog_silencer_mp", false);
    self.GunList[649] = createGun("mg4_acog_xmags_mp", false);
    self.GunList[650] = createGun("mg4_eotech_fmj_mp", false);
    self.GunList[651] = createGun("mg4_eotech_grip_mp", false);
    self.GunList[652] = createGun("mg4_eotech_heartbeat_mp", false);
    self.GunList[653] = createGun("mg4_eotech_mp", false);
    self.GunList[654] = createGun("mg4_eotech_silencer_mp", false);
    self.GunList[655] = createGun("mg4_eotech_xmags_mp", false);
    self.GunList[656] = createGun("mg4_fmj_grip_mp", false);
    self.GunList[657] = createGun("mg4_fmj_heartbeat_mp", false);
    self.GunList[658] = createGun("mg4_fmj_mp", false);
    self.GunList[659] = createGun("mg4_fmj_reflex_mp", false);
    self.GunList[660] = createGun("mg4_fmj_silencer_mp", false);
    self.GunList[661] = createGun("mg4_fmj_thermal_mp", false);
    self.GunList[662] = createGun("mg4_fmj_xmags_mp", false);
    self.GunList[663] = createGun("mg4_grip_heartbeat_mp", false);
    self.GunList[664] = createGun("mg4_grip_mp", false);
    self.GunList[665] = createGun("mg4_grip_reflex_mp", false);
    self.GunList[666] = createGun("mg4_grip_silencer_mp", false);
    self.GunList[667] = createGun("mg4_grip_thermal_mp", false);
    self.GunList[668] = createGun("mg4_grip_xmags_mp", false);
    self.GunList[669] = createGun("mg4_heartbeat_mp", false);
    self.GunList[670] = createGun("mg4_heartbeat_reflex_mp", false);
    self.GunList[671] = createGun("mg4_heartbeat_silencer_mp", false);
    self.GunList[672] = createGun("mg4_heartbeat_thermal_mp", false);
    self.GunList[673] = createGun("mg4_heartbeat_xmags_mp", false);
    self.GunList[674] = createGun("mg4_mp", false);
    self.GunList[675] = createGun("mg4_reflex_mp", false);
    self.GunList[676] = createGun("mg4_reflex_silencer_mp", false);
    self.GunList[677] = createGun("mg4_reflex_xmags_mp", false);
    self.GunList[678] = createGun("mg4_silencer_mp", false);
    self.GunList[679] = createGun("mg4_silencer_thermal_mp", false);
    self.GunList[680] = createGun("mg4_silencer_xmags_mp", false);
    self.GunList[681] = createGun("mg4_thermal_mp", false);
    self.GunList[682] = createGun("mg4_thermal_xmags_mp", false);
    self.GunList[683] = createGun("mg4_xmags_mp", false);
    self.GunList[684] = createGun("model1887_akimbo_fmj_mp", true);
    self.GunList[685] = createGun("model1887_akimbo_mp", true);
    self.GunList[686] = createGun("model1887_fmj_mp", false);
    self.GunList[687] = createGun("model1887_mp", false);
    self.GunList[688] = createGun("mp5k_acog_fmj_mp", false);
    self.GunList[689] = createGun("mp5k_acog_mp", false);
    self.GunList[690] = createGun("mp5k_acog_rof_mp", false);
    self.GunList[691] = createGun("mp5k_acog_silencer_mp", false);
    self.GunList[692] = createGun("mp5k_acog_xmags_mp", false);
    self.GunList[693] = createGun("mp5k_akimbo_fmj_mp", true);
    self.GunList[694] = createGun("mp5k_akimbo_mp", true);
    self.GunList[695] = createGun("mp5k_akimbo_rof_mp", true);
    self.GunList[696] = createGun("mp5k_akimbo_silencer_mp", true);
    self.GunList[697] = createGun("mp5k_akimbo_xmags_mp", true);
    self.GunList[698] = createGun("mp5k_eotech_fmj_mp", false);
    self.GunList[699] = createGun("mp5k_eotech_mp", false);
    self.GunList[700] = createGun("mp5k_eotech_rof_mp", false);
    self.GunList[701] = createGun("mp5k_eotech_silencer_mp", false);
    self.GunList[702] = createGun("mp5k_eotech_xmags_mp", false);
    self.GunList[703] = createGun("mp5k_fmj_mp", false);
    self.GunList[704] = createGun("mp5k_fmj_reflex_mp", false);
    self.GunList[705] = createGun("mp5k_fmj_rof_mp", false);
    self.GunList[706] = createGun("mp5k_fmj_silencer_mp", false);
    self.GunList[707] = createGun("mp5k_fmj_thermal_mp", false);
    self.GunList[708] = createGun("mp5k_fmj_xmags_mp", false);
    self.GunList[709] = createGun("mp5k_mp", false);
    self.GunList[710] = createGun("mp5k_reflex_mp", false);
    self.GunList[711] = createGun("mp5k_reflex_rof_mp", false);
    self.GunList[712] = createGun("mp5k_reflex_silencer_mp", false);
    self.GunList[713] = createGun("mp5k_reflex_xmags_mp", false);
    self.GunList[714] = createGun("mp5k_rof_mp", false);
    self.GunList[715] = createGun("mp5k_rof_silencer_mp", false);
    self.GunList[716] = createGun("mp5k_rof_thermal_mp", false);
    self.GunList[717] = createGun("mp5k_rof_xmags_mp", false);
    self.GunList[718] = createGun("mp5k_silencer_mp", false);
    self.GunList[719] = createGun("mp5k_silencer_thermal_mp", false);
    self.GunList[720] = createGun("mp5k_silencer_xmags_mp", false);
    self.GunList[721] = createGun("mp5k_thermal_mp", false);
    self.GunList[722] = createGun("mp5k_thermal_xmags_mp", false);
    self.GunList[723] = createGun("mp5k_xmags_mp", false);
    self.GunList[724] = createGun("onemanarmy_mp", false);
    self.GunList[725] = createGun("p90_acog_fmj_mp", false);
    self.GunList[726] = createGun("p90_acog_mp", false);
    self.GunList[727] = createGun("p90_acog_rof_mp", false);
    self.GunList[728] = createGun("p90_acog_silencer_mp", false);
    self.GunList[729] = createGun("p90_acog_xmags_mp", false);
    self.GunList[730] = createGun("p90_akimbo_fmj_mp", true);
    self.GunList[731] = createGun("p90_akimbo_mp", true);
    self.GunList[732] = createGun("p90_akimbo_rof_mp", true);
    self.GunList[733] = createGun("p90_akimbo_silencer_mp", true);
    self.GunList[734] = createGun("p90_akimbo_xmags_mp", true);
    self.GunList[735] = createGun("p90_eotech_fmj_mp", false);
    self.GunList[736] = createGun("p90_eotech_mp", false);
    self.GunList[737] = createGun("p90_eotech_rof_mp", false);
    self.GunList[738] = createGun("p90_eotech_silencer_mp", false);
    self.GunList[739] = createGun("p90_eotech_xmags_mp", false);
    self.GunList[740] = createGun("p90_fmj_mp", false);
    self.GunList[741] = createGun("p90_fmj_reflex_mp", false);
    self.GunList[742] = createGun("p90_fmj_rof_mp", false);
    self.GunList[743] = createGun("p90_fmj_silencer_mp", false);
    self.GunList[744] = createGun("p90_fmj_thermal_mp", false);
    self.GunList[745] = createGun("p90_fmj_xmags_mp", false);
    self.GunList[746] = createGun("p90_mp", false);
    self.GunList[747] = createGun("p90_reflex_mp", false);
    self.GunList[748] = createGun("p90_reflex_rof_mp", false);
    self.GunList[749] = createGun("p90_reflex_silencer_mp", false);
    self.GunList[750] = createGun("p90_reflex_xmags_mp", false);
    self.GunList[751] = createGun("p90_rof_mp", false);
    self.GunList[752] = createGun("p90_rof_silencer_mp", false);
    self.GunList[753] = createGun("p90_rof_thermal_mp", false);
    self.GunList[754] = createGun("p90_rof_xmags_mp", false);
    self.GunList[755] = createGun("p90_silencer_mp", false);
    self.GunList[756] = createGun("p90_silencer_thermal_mp", false);
    self.GunList[757] = createGun("p90_silencer_xmags_mp", false);
    self.GunList[758] = createGun("p90_thermal_mp", false);
    self.GunList[759] = createGun("p90_thermal_xmags_mp", false);
    self.GunList[760] = createGun("p90_xmags_mp", false);
    self.GunList[761] = createGun("pp2000_akimbo_fmj_mp", true);
    self.GunList[762] = createGun("pp2000_akimbo_mp", true);
    self.GunList[763] = createGun("pp2000_akimbo_silencer_mp", true);
    self.GunList[764] = createGun("pp2000_akimbo_xmags_mp", true);
    self.GunList[765] = createGun("pp2000_eotech_fmj_mp", false);
    self.GunList[766] = createGun("pp2000_eotech_mp", false);
    self.GunList[767] = createGun("pp2000_eotech_silencer_mp", false);
    self.GunList[768] = createGun("pp2000_eotech_xmags_mp", false);
    self.GunList[769] = createGun("pp2000_fmj_mp", false);
    self.GunList[770] = createGun("pp2000_fmj_reflex_mp", false);
    self.GunList[771] = createGun("pp2000_fmj_silencer_mp", false);
    self.GunList[772] = createGun("pp2000_fmj_xmags_mp", false);
    self.GunList[773] = createGun("pp2000_mp", false);
    self.GunList[774] = createGun("pp2000_reflex_mp", false);
    self.GunList[775] = createGun("pp2000_reflex_silencer_mp", false);
    self.GunList[776] = createGun("pp2000_reflex_xmags_mp", false);
    self.GunList[777] = createGun("pp2000_silencer_mp", false);
    self.GunList[778] = createGun("pp2000_silencer_xmags_mp", false);
    self.GunList[779] = createGun("pp2000_xmags_mp", false);
    self.GunList[780] = createGun("ranger_akimbo_fmj_mp", true);
    self.GunList[781] = createGun("ranger_akimbo_mp", true);
    self.GunList[782] = createGun("ranger_fmj_mp", false);
    self.GunList[783] = createGun("ranger_mp", false);
    self.GunList[784] = createGun("riotshield_mp", false);
    self.GunList[785] = createGun("rpd_acog_fmj_mp", false);
    self.GunList[786] = createGun("rpd_acog_grip_mp", false);
    self.GunList[787] = createGun("rpd_acog_heartbeat_mp", false);
    self.GunList[788] = createGun("rpd_acog_mp", false);
    self.GunList[789] = createGun("rpd_acog_silencer_mp", false);
    self.GunList[790] = createGun("rpd_acog_xmags_mp", false);
    self.GunList[791] = createGun("rpd_eotech_fmj_mp", false);
    self.GunList[792] = createGun("rpd_eotech_grip_mp", false);
    self.GunList[793] = createGun("rpd_eotech_heartbeat_mp", false);
    self.GunList[794] = createGun("rpd_eotech_mp", false);
    self.GunList[795] = createGun("rpd_eotech_silencer_mp", false);
    self.GunList[796] = createGun("rpd_eotech_xmags_mp", false);
    self.GunList[797] = createGun("rpd_fmj_grip_mp", false);
    self.GunList[798] = createGun("rpd_fmj_heartbeat_mp", false);
    self.GunList[799] = createGun("rpd_fmj_mp", false);
    self.GunList[800] = createGun("rpd_fmj_reflex_mp", false);
    self.GunList[801] = createGun("rpd_fmj_silencer_mp", false);
    self.GunList[802] = createGun("rpd_fmj_thermal_mp", false);
    self.GunList[803] = createGun("rpd_fmj_xmags_mp", false);
    self.GunList[804] = createGun("rpd_grip_heartbeat_mp", false);
    self.GunList[805] = createGun("rpd_grip_mp", false);
    self.GunList[806] = createGun("rpd_grip_reflex_mp", false);
    self.GunList[807] = createGun("rpd_grip_silencer_mp", false);
    self.GunList[808] = createGun("rpd_grip_thermal_mp", false);
    self.GunList[809] = createGun("rpd_grip_xmags_mp", false);
    self.GunList[810] = createGun("rpd_heartbeat_mp", false);
    self.GunList[811] = createGun("rpd_heartbeat_reflex_mp", false);
    self.GunList[812] = createGun("rpd_heartbeat_silencer_mp", false);
    self.GunList[813] = createGun("rpd_heartbeat_thermal_mp", false);
    self.GunList[814] = createGun("rpd_heartbeat_xmags_mp", false);
    self.GunList[815] = createGun("rpd_mp", false);
    self.GunList[816] = createGun("rpd_reflex_mp", false);
    self.GunList[817] = createGun("rpd_reflex_silencer_mp", false);
    self.GunList[818] = createGun("rpd_reflex_xmags_mp", false);
    self.GunList[819] = createGun("rpd_silencer_mp", false);
    self.GunList[820] = createGun("rpd_silencer_thermal_mp", false);
    self.GunList[821] = createGun("rpd_silencer_xmags_mp", false);
    self.GunList[822] = createGun("rpd_thermal_mp", false);
    self.GunList[823] = createGun("rpd_thermal_xmags_mp", false);
    self.GunList[824] = createGun("rpd_xmags_mp", false);
    self.GunList[825] = createGun("rpg_mp", false);
    self.GunList[826] = createGun("sa80_acog_fmj_mp", false);
    self.GunList[827] = createGun("sa80_acog_grip_mp", false);
    self.GunList[828] = createGun("sa80_acog_heartbeat_mp", false);
    self.GunList[829] = createGun("sa80_acog_mp", false);
    self.GunList[830] = createGun("sa80_acog_silencer_mp", false);
    self.GunList[831] = createGun("sa80_acog_xmags_mp", false);
    self.GunList[832] = createGun("sa80_eotech_fmj_mp", false);
    self.GunList[833] = createGun("sa80_eotech_grip_mp", false);
    self.GunList[834] = createGun("sa80_eotech_heartbeat_mp", false);
    self.GunList[835] = createGun("sa80_eotech_mp", false);
    self.GunList[836] = createGun("sa80_eotech_silencer_mp", false);
    self.GunList[837] = createGun("sa80_eotech_xmags_mp", false);
    self.GunList[838] = createGun("sa80_fmj_grip_mp", false);
    self.GunList[839] = createGun("sa80_fmj_heartbeat_mp", false);
    self.GunList[840] = createGun("sa80_fmj_mp", false);
    self.GunList[841] = createGun("sa80_fmj_reflex_mp", false);
    self.GunList[842] = createGun("sa80_fmj_silencer_mp", false);
    self.GunList[843] = createGun("sa80_fmj_thermal_mp", false);
    self.GunList[844] = createGun("sa80_fmj_xmags_mp", false);
    self.GunList[845] = createGun("sa80_grip_heartbeat_mp", false);
    self.GunList[846] = createGun("sa80_grip_mp", false);
    self.GunList[847] = createGun("sa80_grip_reflex_mp", false);
    self.GunList[848] = createGun("sa80_grip_silencer_mp", false);
    self.GunList[849] = createGun("sa80_grip_thermal_mp", false);
    self.GunList[850] = createGun("sa80_grip_xmags_mp", false);
    self.GunList[851] = createGun("sa80_heartbeat_mp", false);
    self.GunList[852] = createGun("sa80_heartbeat_reflex_mp", false);
    self.GunList[853] = createGun("sa80_heartbeat_silencer_mp", false);
    self.GunList[854] = createGun("sa80_heartbeat_thermal_mp", false);
    self.GunList[855] = createGun("sa80_heartbeat_xmags_mp", false);
    self.GunList[856] = createGun("sa80_mp", false);
    self.GunList[857] = createGun("sa80_reflex_mp", false);
    self.GunList[858] = createGun("sa80_reflex_silencer_mp", false);
    self.GunList[859] = createGun("sa80_reflex_xmags_mp", false);
    self.GunList[860] = createGun("sa80_silencer_mp", false);
    self.GunList[861] = createGun("sa80_silencer_thermal_mp", false);
    self.GunList[862] = createGun("sa80_silencer_xmags_mp", false);
    self.GunList[863] = createGun("sa80_thermal_mp", false);
    self.GunList[864] = createGun("sa80_thermal_xmags_mp", false);
    self.GunList[865] = createGun("sa80_xmags_mp", false);
    self.GunList[866] = createGun("scar_acog_fmj_mp", false);
    self.GunList[867] = createGun("scar_acog_gl_mp", false);
    self.GunList[868] = createGun("scar_acog_heartbeat_mp", false);
    self.GunList[869] = createGun("scar_acog_mp", false);
    self.GunList[870] = createGun("scar_acog_shotgun_mp", false);
    self.GunList[871] = createGun("scar_acog_silencer_mp", false);
    self.GunList[872] = createGun("scar_acog_xmags_mp", false);
    self.GunList[873] = createGun("scar_eotech_fmj_mp", false);
    self.GunList[874] = createGun("scar_eotech_gl_mp", false);
    self.GunList[875] = createGun("scar_eotech_heartbeat_mp", false);
    self.GunList[876] = createGun("scar_eotech_mp", false);
    self.GunList[877] = createGun("scar_eotech_shotgun_mp", false);
    self.GunList[878] = createGun("scar_eotech_silencer_mp", false);
    self.GunList[879] = createGun("scar_eotech_xmags_mp", false);
    self.GunList[880] = createGun("scar_fmj_gl_mp", false);
    self.GunList[881] = createGun("scar_fmj_heartbeat_mp", false);
    self.GunList[882] = createGun("scar_fmj_mp", false);
    self.GunList[883] = createGun("scar_fmj_reflex_mp", false);
    self.GunList[884] = createGun("scar_fmj_shotgun_mp", false);
    self.GunList[885] = createGun("scar_fmj_silencer_mp", false);
    self.GunList[886] = createGun("scar_fmj_thermal_mp", false);
    self.GunList[887] = createGun("scar_fmj_xmags_mp", false);
    self.GunList[888] = createGun("scar_gl_heartbeat_mp", false);
    self.GunList[889] = createGun("scar_gl_mp", false);
    self.GunList[890] = createGun("scar_gl_reflex_mp", false);
    self.GunList[891] = createGun("scar_gl_silencer_mp", false);
    self.GunList[892] = createGun("scar_gl_thermal_mp", false);
    self.GunList[893] = createGun("scar_gl_xmags_mp", false);
    self.GunList[894] = createGun("scar_heartbeat_mp", false);
    self.GunList[895] = createGun("scar_heartbeat_reflex_mp", false);
    self.GunList[896] = createGun("scar_heartbeat_shotgun_mp", false);
    self.GunList[897] = createGun("scar_heartbeat_silencer_mp", false);
    self.GunList[898] = createGun("scar_heartbeat_thermal_mp", false);
    self.GunList[899] = createGun("scar_heartbeat_xmags_mp", false);
    self.GunList[900] = createGun("scar_mp", false);
    self.GunList[901] = createGun("scar_reflex_mp", false);
    self.GunList[902] = createGun("scar_reflex_shotgun_mp", false);
    self.GunList[903] = createGun("scar_reflex_silencer_mp", false);
    self.GunList[904] = createGun("scar_reflex_xmags_mp", false);
    self.GunList[905] = createGun("scar_shotgun_mp", false);
    self.GunList[906] = createGun("scar_shotgun_silencer_mp", false);
    self.GunList[907] = createGun("scar_shotgun_thermal_mp", false);
    self.GunList[908] = createGun("scar_shotgun_xmags_mp", false);
    self.GunList[909] = createGun("scar_silencer_mp", false);
    self.GunList[910] = createGun("scar_silencer_thermal_mp", false);
    self.GunList[911] = createGun("scar_silencer_xmags_mp", false);
    self.GunList[912] = createGun("scar_thermal_mp", false);
    self.GunList[913] = createGun("scar_thermal_xmags_mp", false);
    self.GunList[914] = createGun("scar_xmags_mp", false);
    self.GunList[915] = createGun("semtex_mp", false);
    self.GunList[916] = createGun("smoke_grenade_mp", false);
    self.GunList[917] = createGun("spas12_eotech_fmj_mp", false);
    self.GunList[918] = createGun("spas12_eotech_grip_mp", false);
    self.GunList[919] = createGun("spas12_eotech_mp", false);
    self.GunList[920] = createGun("spas12_eotech_silencer_mp", false);
    self.GunList[921] = createGun("spas12_eotech_xmags_mp", false);
    self.GunList[922] = createGun("spas12_fmj_grip_mp", false);
    self.GunList[923] = createGun("spas12_fmj_mp", false);
    self.GunList[924] = createGun("spas12_fmj_reflex_mp", false);
    self.GunList[925] = createGun("spas12_fmj_silencer_mp", false);
    self.GunList[926] = createGun("spas12_fmj_xmags_mp", false);
    self.GunList[927] = createGun("spas12_grip_mp", false);
    self.GunList[928] = createGun("spas12_grip_reflex_mp", false);
    self.GunList[929] = createGun("spas12_grip_silencer_mp", false);
    self.GunList[930] = createGun("spas12_grip_xmags_mp", false);
    self.GunList[931] = createGun("spas12_mp", false);
    self.GunList[932] = createGun("spas12_reflex_mp", false);
    self.GunList[933] = createGun("spas12_reflex_silencer_mp", false);
    self.GunList[934] = createGun("spas12_reflex_xmags_mp", false);
    self.GunList[935] = createGun("spas12_silencer_mp", false);
    self.GunList[936] = createGun("spas12_silencer_xmags_mp", false);
    self.GunList[937] = createGun("spas12_xmags_mp", false);
    self.GunList[938] = createGun("stealth_bomb_mp", false);
    self.GunList[939] = createGun("stinger_mp", false);
    self.GunList[940] = createGun("striker_eotech_fmj_mp", false);
    self.GunList[941] = createGun("striker_eotech_grip_mp", false);
    self.GunList[942] = createGun("striker_eotech_mp", false);
    self.GunList[943] = createGun("striker_eotech_silencer_mp", false);
    self.GunList[944] = createGun("striker_eotech_xmags_mp", false);
    self.GunList[945] = createGun("striker_fmj_grip_mp", false);
    self.GunList[946] = createGun("striker_fmj_mp", false);
    self.GunList[947] = createGun("striker_fmj_reflex_mp", false);
    self.GunList[948] = createGun("striker_fmj_silencer_mp", false);
    self.GunList[949] = createGun("striker_fmj_xmags_mp", false);
    self.GunList[950] = createGun("striker_grip_mp", false);
    self.GunList[951] = createGun("striker_grip_reflex_mp", false);
    self.GunList[952] = createGun("striker_grip_silencer_mp", false);
    self.GunList[953] = createGun("striker_grip_xmags_mp", false);
    self.GunList[954] = createGun("striker_mp", false);
    self.GunList[955] = createGun("striker_reflex_mp", false);
    self.GunList[956] = createGun("striker_reflex_silencer_mp", false);
    self.GunList[957] = createGun("striker_reflex_xmags_mp", false);
    self.GunList[958] = createGun("striker_silencer_mp", false);
    self.GunList[959] = createGun("striker_silencer_xmags_mp", false);
    self.GunList[960] = createGun("striker_xmags_mp", false);
    self.GunList[961] = createGun("tavor_acog_fmj_mp", false);
    self.GunList[962] = createGun("tavor_acog_gl_mp", false);
    self.GunList[963] = createGun("tavor_acog_heartbeat_mp", false);
    self.GunList[964] = createGun("tavor_acog_mp", false);
    self.GunList[965] = createGun("tavor_acog_shotgun_mp", false);
    self.GunList[966] = createGun("tavor_acog_silencer_mp", false);
    self.GunList[967] = createGun("tavor_acog_xmags_mp", false);
    self.GunList[968] = createGun("tavor_eotech_fmj_mp", false);
    self.GunList[969] = createGun("tavor_eotech_gl_mp", false);
    self.GunList[970] = createGun("tavor_eotech_heartbeat_mp", false);
    self.GunList[971] = createGun("tavor_eotech_mp", false);
    self.GunList[972] = createGun("tavor_eotech_shotgun_mp", false);
    self.GunList[973] = createGun("tavor_eotech_silencer_mp", false);
    self.GunList[974] = createGun("tavor_eotech_xmags_mp", false);
    self.GunList[975] = createGun("tavor_fmj_gl_mp", false);
    self.GunList[976] = createGun("tavor_fmj_heartbeat_mp", false);
    self.GunList[977] = createGun("tavor_fmj_mp", false);
    self.GunList[978] = createGun("tavor_fmj_reflex_mp", false);
    self.GunList[979] = createGun("tavor_fmj_shotgun_mp", false);
    self.GunList[980] = createGun("tavor_fmj_silencer_mp", false);
    self.GunList[981] = createGun("tavor_fmj_thermal_mp", false);
    self.GunList[982] = createGun("tavor_fmj_xmags_mp", false);
    self.GunList[983] = createGun("tavor_gl_heartbeat_mp", false);
    self.GunList[984] = createGun("tavor_gl_mp", false);
    self.GunList[985] = createGun("tavor_gl_reflex_mp", false);
    self.GunList[986] = createGun("tavor_gl_silencer_mp", false);
    self.GunList[987] = createGun("tavor_gl_thermal_mp", false);
    self.GunList[988] = createGun("tavor_gl_xmags_mp", false);
    self.GunList[989] = createGun("tavor_heartbeat_mp", false);
    self.GunList[990] = createGun("tavor_heartbeat_reflex_mp", false);
    self.GunList[991] = createGun("tavor_heartbeat_shotgun_mp", false);
    self.GunList[992] = createGun("tavor_heartbeat_silencer_mp", false);
    self.GunList[993] = createGun("tavor_heartbeat_thermal_mp", false);
    self.GunList[994] = createGun("tavor_heartbeat_xmags_mp", false);
    self.GunList[995] = createGun("tavor_mp", false);
    self.GunList[996] = createGun("tavor_reflex_mp", false);
    self.GunList[997] = createGun("tavor_reflex_shotgun_mp", false);
    self.GunList[998] = createGun("tavor_reflex_silencer_mp", false);
    self.GunList[999] = createGun("tavor_reflex_xmags_mp", false);
    self.GunList[1000] = createGun("tavor_shotgun_mp", false);
    self.GunList[1001] = createGun("tavor_shotgun_silencer_mp", false);
    self.GunList[1002] = createGun("tavor_shotgun_thermal_mp", false);
    self.GunList[1003] = createGun("tavor_shotgun_xmags_mp", false);
    self.GunList[1004] = createGun("tavor_silencer_mp", false);
    self.GunList[1005] = createGun("tavor_silencer_thermal_mp", false);
    self.GunList[1006] = createGun("tavor_silencer_xmags_mp", false);
    self.GunList[1007] = createGun("tavor_thermal_mp", false);
    self.GunList[1008] = createGun("tavor_thermal_xmags_mp", false);
    self.GunList[1009] = createGun("tavor_xmags_mp", false);
    self.GunList[1010] = createGun("throwingknife_mp", false);
    self.GunList[1011] = createGun("tmp_akimbo_fmj_mp", true);
    self.GunList[1012] = createGun("tmp_akimbo_mp", true);
    self.GunList[1013] = createGun("tmp_akimbo_silencer_mp", true);
    self.GunList[1014] = createGun("tmp_akimbo_xmags_mp", true);
    self.GunList[1015] = createGun("tmp_eotech_fmj_mp", false);
    self.GunList[1016] = createGun("tmp_eotech_mp", false);
    self.GunList[1017] = createGun("tmp_eotech_silencer_mp", false);
    self.GunList[1018] = createGun("tmp_eotech_xmags_mp", false);
    self.GunList[1019] = createGun("tmp_fmj_mp", false);
    self.GunList[1020] = createGun("tmp_fmj_reflex_mp", false);
    self.GunList[1021] = createGun("tmp_fmj_silencer_mp", false);
    self.GunList[1022] = createGun("tmp_fmj_xmags_mp", false);
    self.GunList[1023] = createGun("tmp_mp", false);
    self.GunList[1024] = createGun("tmp_reflex_mp", false);
    self.GunList[1025] = createGun("tmp_reflex_silencer_mp", false);
    self.GunList[1026] = createGun("tmp_reflex_xmags_mp", false);
    self.GunList[1027] = createGun("tmp_silencer_mp", false);
    self.GunList[1028] = createGun("tmp_silencer_xmags_mp", false);
    self.GunList[1029] = createGun("tmp_xmags_mp", false);
    self.GunList[1030] = createGun("ump45_acog_fmj_mp", false);
    self.GunList[1031] = createGun("ump45_acog_mp", false);
    self.GunList[1032] = createGun("ump45_acog_rof_mp", false);
    self.GunList[1033] = createGun("ump45_acog_silencer_mp", false);
    self.GunList[1034] = createGun("ump45_acog_xmags_mp", false);
    self.GunList[1035] = createGun("ump45_akimbo_fmj_mp", true);
    self.GunList[1036] = createGun("ump45_akimbo_mp", true);
    self.GunList[1037] = createGun("ump45_akimbo_rof_mp", true);
    self.GunList[1038] = createGun("ump45_akimbo_silencer_mp", true);
    self.GunList[1039] = createGun("ump45_akimbo_xmags_mp", true);
    self.GunList[1040] = createGun("ump45_eotech_fmj_mp", false);
    self.GunList[1041] = createGun("ump45_eotech_mp", false);
    self.GunList[1042] = createGun("ump45_eotech_rof_mp", false);
    self.GunList[1043] = createGun("ump45_eotech_silencer_mp", false);
    self.GunList[1044] = createGun("ump45_eotech_xmags_mp", false);
    self.GunList[1045] = createGun("ump45_fmj_mp", false);
    self.GunList[1046] = createGun("ump45_fmj_reflex_mp", false);
    self.GunList[1047] = createGun("ump45_fmj_rof_mp", false);
    self.GunList[1048] = createGun("ump45_fmj_silencer_mp", false);
    self.GunList[1049] = createGun("ump45_fmj_thermal_mp", false);
    self.GunList[1050] = createGun("ump45_fmj_xmags_mp", false);
    self.GunList[1051] = createGun("ump45_mp", false);
    self.GunList[1052] = createGun("ump45_reflex_mp", false);
    self.GunList[1053] = createGun("ump45_reflex_rof_mp", false);
    self.GunList[1054] = createGun("ump45_reflex_silencer_mp", false);
    self.GunList[1055] = createGun("ump45_reflex_xmags_mp", false);
    self.GunList[1056] = createGun("ump45_rof_mp", false);
    self.GunList[1057] = createGun("ump45_rof_silencer_mp", false);
    self.GunList[1058] = createGun("ump45_rof_thermal_mp", false);
    self.GunList[1059] = createGun("ump45_rof_xmags_mp", false);
    self.GunList[1060] = createGun("ump45_silencer_mp", false);
    self.GunList[1061] = createGun("ump45_silencer_thermal_mp", false);
    self.GunList[1062] = createGun("ump45_silencer_xmags_mp", false);
    self.GunList[1063] = createGun("ump45_thermal_mp", false);
    self.GunList[1064] = createGun("ump45_thermal_xmags_mp", false);
    self.GunList[1065] = createGun("ump45_xmags_mp", false);
    self.GunList[1066] = createGun("usp_akimbo_fmj_mp", true);
    self.GunList[1067] = createGun("usp_akimbo_mp", true);
    self.GunList[1068] = createGun("usp_akimbo_silencer_mp", true);
    self.GunList[1069] = createGun("usp_akimbo_xmags_mp", true);
    self.GunList[1070] = createGun("usp_fmj_mp", false);
    self.GunList[1071] = createGun("usp_fmj_silencer_mp", false);
    self.GunList[1072] = createGun("usp_fmj_tactical_mp", false);
    self.GunList[1073] = createGun("usp_fmj_xmags_mp", false);
    self.GunList[1074] = createGun("usp_mp", false);
    self.GunList[1075] = createGun("usp_silencer_mp", false);
    self.GunList[1076] = createGun("usp_silencer_tactical_mp", false);
    self.GunList[1077] = createGun("usp_silencer_xmags_mp", false);
    self.GunList[1078] = createGun("usp_tactical_mp", false);
    self.GunList[1079] = createGun("usp_tactical_xmags_mp", false);
    self.GunList[1080] = createGun("usp_xmags_mp", false);
    self.GunList[1081] = createGun("uzi_acog_fmj_mp", false);
    self.GunList[1082] = createGun("uzi_acog_mp", false);
    self.GunList[1083] = createGun("uzi_acog_rof_mp", false);
    self.GunList[1084] = createGun("uzi_acog_silencer_mp", false);
    self.GunList[1085] = createGun("uzi_acog_xmags_mp", false);
    self.GunList[1086] = createGun("uzi_akimbo_fmj_mp", true);
    self.GunList[1087] = createGun("uzi_akimbo_mp", true);
    self.GunList[1088] = createGun("uzi_akimbo_rof_mp", true);
    self.GunList[1089] = createGun("uzi_akimbo_silencer_mp", true);
    self.GunList[1090] = createGun("uzi_akimbo_xmags_mp", true);
    self.GunList[1091] = createGun("uzi_eotech_fmj_mp", false);
    self.GunList[1092] = createGun("uzi_eotech_mp", false);
    self.GunList[1093] = createGun("uzi_eotech_rof_mp", false);
    self.GunList[1094] = createGun("uzi_eotech_silencer_mp", false);
    self.GunList[1095] = createGun("uzi_eotech_xmags_mp", false);
    self.GunList[1096] = createGun("uzi_fmj_mp", false);
    self.GunList[1097] = createGun("uzi_fmj_reflex_mp", false);
    self.GunList[1098] = createGun("uzi_fmj_rof_mp", false);
    self.GunList[1099] = createGun("uzi_fmj_silencer_mp", false);
    self.GunList[1100] = createGun("uzi_fmj_thermal_mp", false);
    self.GunList[1101] = createGun("uzi_fmj_xmags_mp", false);
    self.GunList[1102] = createGun("uzi_mp", false);
    self.GunList[1103] = createGun("uzi_reflex_mp", false);
    self.GunList[1104] = createGun("uzi_reflex_rof_mp", false);
    self.GunList[1105] = createGun("uzi_reflex_silencer_mp", false);
    self.GunList[1106] = createGun("uzi_reflex_xmags_mp", false);
    self.GunList[1107] = createGun("uzi_rof_mp", false);
    self.GunList[1108] = createGun("uzi_rof_silencer_mp", false);
    self.GunList[1109] = createGun("uzi_rof_thermal_mp", false);
    self.GunList[1110] = createGun("uzi_rof_xmags_mp", false);
    self.GunList[1111] = createGun("uzi_silencer_mp", false);
    self.GunList[1112] = createGun("uzi_silencer_thermal_mp", false);
    self.GunList[1113] = createGun("uzi_silencer_xmags_mp", false);
    self.GunList[1114] = createGun("uzi_thermal_mp", false);
    self.GunList[1115] = createGun("uzi_thermal_xmags_mp", false);
    self.GunList[1116] = createGun("uzi_xmags_mp", false);
    self.GunList[1117] = createGun("wa2000_acog_fmj_mp", false);
    self.GunList[1118] = createGun("wa2000_acog_heartbeat_mp", false);
    self.GunList[1119] = createGun("wa2000_acog_mp", false);
    self.GunList[1120] = createGun("wa2000_acog_silencer_mp", false);
    self.GunList[1121] = createGun("wa2000_acog_xmags_mp", false);
    self.GunList[1122] = createGun("wa2000_fmj_heartbeat_mp", false);
    self.GunList[1123] = createGun("wa2000_fmj_mp", false);
    self.GunList[1124] = createGun("wa2000_fmj_silencer_mp", false);
    self.GunList[1125] = createGun("wa2000_fmj_thermal_mp", false);
    self.GunList[1126] = createGun("wa2000_fmj_xmags_mp", false);
    self.GunList[1127] = createGun("wa2000_heartbeat_mp", false);
    self.GunList[1128] = createGun("wa2000_heartbeat_silencer_mp", false);
    self.GunList[1129] = createGun("wa2000_heartbeat_thermal_mp", false);
    self.GunList[1130] = createGun("wa2000_heartbeat_xmags_mp", false);
    self.GunList[1131] = createGun("wa2000_mp", false);
    self.GunList[1132] = createGun("wa2000_silencer_mp", false);
    self.GunList[1133] = createGun("wa2000_silencer_thermal_mp", false);
    self.GunList[1134] = createGun("wa2000_silencer_xmags_mp", false);
    self.GunList[1135] = createGun("wa2000_thermal_mp", false);
    self.GunList[1136] = createGun("wa2000_thermal_xmags_mp", false);
    self.GunList[1137] = createGun("wa2000_xmags_mp", false);
}

initPerks()
{
    self.PerkList = [];
    self.PerkList[0] = "specialty_extendedmelee";
    self.PerkList[1] = "specialty_fastsprintrecovery";
    self.PerkList[2] = "specialty_automantle";
    self.PerkList[3] = "specialty_spygame";
    self.PerkList[4] = "specialty_improvedholdbreath";
    self.PerkList[5] = "specialty_fastsnipe";
    self.PerkList[6] = "specialty_selectivehearing";
    self.PerkList[7] = "specialty_heartbreaker";
    self.PerkList[8] = "specialty_coldblooded";
    self.PerkList[9] = "specialty_quickdraw";
    self.PerkList[10] = "specialty_marathon";
    self.PerkList[11] = "specialty_lightweight";
    self.PerkList[12] = "specialty_extendedmags";
    self.PerkList[13] = "specialty_scavenger";
    self.PerkList[14] = "specialty_explosivebullets";
    self.PerkList[15] = "specialty_jumpdive";
    self.PerkList[16] = "specialty_fastmantle";
    self.PerkList[17] = "specialty_specialgrenade";
    self.PerkList[18] = "specialty_fraggrenade";
    self.PerkList[19] = "specialty_armorvest";
    self.PerkList[20] = "specialty_twoprimaries";
    self.PerkList[21] = "specialty_extraammo";
    self.PerkList[22] = "specialty_bulletdamage";
    self.PerkList[23] = "specialty_exposeenemy";
    self.PerkList[24] = "specialty_detectexplosive";
    self.PerkList[25] = "specialty_longersprint";
    self.PerkList[26] = "specialty_parabolic";
    self.PerkList[27] = "specialty_quieter";
    self.PerkList[28] = "specialty_pistoldeath";
    self.PerkList[29] = "specialty_grenadepulldeath";
    self.PerkList[30] = "specialty_bulletpenetration";
    self.PerkList[31] = "specialty_holdbreath";
    self.PerkList[32] = "specialty_rof";
    self.PerkList[33] = "specialty_fastreload";
    self.PerkList[34] = "specialty_bulletaccuracy";
    self.PerkList[35] = "specialty_gpsjammer";
}

createGun(gunName, akimbo)
{
	gun = spawnstruct();
	gun.name = gunName;
	gun.akimbo = akimbo;
	return gun;
}

doSettings()
{
	self.IsSuicide = false;
	self.GunIndex = -1;
	self.NextGunIndex = -1;
	self thread initGuns();
	self thread initPerks();
}

killedPlayer(victim, weapon, sMeansOfDeath)
{
	self notify("enemy_killed");
	if (victim.GunIndex >= 0)
	{
		self.NextGunIndex = victim.GunIndex;
		self thread giveGun();
	}
}

Killed(attacker, sWeapon, sMeansOfDeath)
{
	if(attacker == self)
	{
		self thread maps\mp\gametypes\_hud_message::hintMessage("Humiliation");
		self thread maps\mp\gametypes\_hud_message::hintMessage("Handgun Only");
		self.IsSuicide = true;
	}
}

giveGun()
{
	self takeAllWeapons();
	self _clearPerks();
	self maps\mp\perks\_perks::givePerk("specialty_marathon");
	self maps\mp\perks\_perks::givePerk("specialty_fastsnipe");
	self maps\mp\perks\_perks::givePerk("specialty_lightweight");
	self maps\mp\perks\_perks::givePerk("specialty_bulletdamage");
	self maps\mp\perks\_perks::givePerk("specialty_bulletaccuracy");
	if (self.IsSuicide)
	{
		self.GunIndex = 0;
		self.IsSuicide = false;
	}
	else if ( self.NextGunIndex >= 0 )
	{
		self.GunIndex = self.NextGunIndex;
		self.NextGunIndex = -1;
	}
	else
	{
		self.GunIndex = RandomIntRange( 1, self.GunList.size );
	}	
	self giveWeapon(self.GunList[self.GunIndex].name, 0, self.GunList[self.GunIndex].akimbo);
	wait 0.27;
	self SwitchToWeapon(self.GunList[self.GunIndex].name);
	self giveMaxAmmo(self.GunList[self.GunIndex].name);
	self thread UnlimitedAmmoStock(self.GunList[self.GunIndex].name);
}

UnlimitedAmmoStock(weapon)
{
	self endon("enemy_killed");
	ammostock = self getWeaponAmmoStock(weapon);
	for(;;)
	{
		wait 0.5;
		self setWeaponAmmoStock(weapon, ammostock);
	}
}

// ORIGINAL:

init()
{
	level.scoreInfo = [];
	level.xpScale = getDvarInt( "scr_xpscale" );

	level.rankTable = [];

	precacheShader("white");

	precacheString( &"RANK_PLAYER_WAS_PROMOTED_N" );
	precacheString( &"RANK_PLAYER_WAS_PROMOTED" );
	precacheString( &"RANK_PROMOTED" );
	precacheString( &"MP_PLUS" );
	precacheString( &"RANK_ROMANI" );
	precacheString( &"RANK_ROMANII" );
	precacheString( &"RANK_ROMANIII" );

	if ( level.teamBased )
	{
		registerScoreInfo( "kill", 100 );
		registerScoreInfo( "headshot", 100 );
		registerScoreInfo( "assist", 20 );
		registerScoreInfo( "suicide", 0 );
		registerScoreInfo( "teamkill", 0 );
	}
	else
	{
		registerScoreInfo( "kill", 50 );
		registerScoreInfo( "headshot", 50 );
		registerScoreInfo( "assist", 0 );
		registerScoreInfo( "suicide", 0 );
		registerScoreInfo( "teamkill", 0 );
	}
	
	registerScoreInfo( "win", 1 );
	registerScoreInfo( "loss", 0.5 );
	registerScoreInfo( "tie", 0.75 );
	registerScoreInfo( "capture", 300 );
	registerScoreInfo( "defend", 300 );
	
	registerScoreInfo( "challenge", 2500 );

	level.maxRank = int(tableLookup( "mp/rankTable.csv", 0, "maxrank", 1 ));
	level.maxPrestige = int(tableLookup( "mp/rankIconTable.csv", 0, "maxprestige", 1 ));
	
	pId = 0;
	rId = 0;
	for ( pId = 0; pId <= level.maxPrestige; pId++ )
	{
		for ( rId = 0; rId <= level.maxRank; rId++ )
			precacheShader( tableLookup( "mp/rankIconTable.csv", 0, rId, pId+1 ) );
	}

	rankId = 0;
	rankName = tableLookup( "mp/ranktable.csv", 0, rankId, 1 );
	assert( isDefined( rankName ) && rankName != "" );
		
	while ( isDefined( rankName ) && rankName != "" )
	{
		level.rankTable[rankId][1] = tableLookup( "mp/ranktable.csv", 0, rankId, 1 );
		level.rankTable[rankId][2] = tableLookup( "mp/ranktable.csv", 0, rankId, 2 );
		level.rankTable[rankId][3] = tableLookup( "mp/ranktable.csv", 0, rankId, 3 );
		level.rankTable[rankId][7] = tableLookup( "mp/ranktable.csv", 0, rankId, 7 );

		precacheString( tableLookupIString( "mp/ranktable.csv", 0, rankId, 16 ) );

		rankId++;
		rankName = tableLookup( "mp/ranktable.csv", 0, rankId, 1 );		
	}

	maps\mp\gametypes\_missions::buildChallegeInfo();

	level thread patientZeroWaiter();
	
	level thread onPlayerConnect();
}

patientZeroWaiter()
{
	level endon( "game_ended" );
	
	while ( !isDefined( level.players ) || !level.players.size )
		wait ( 0.05 );
	
	if ( !matchMakingGame() )
	{
		if ( (getDvar( "mapname" ) == "mp_rust" && randomInt( 1000 ) == 999) )
			level.patientZeroName = level.players[0].name;
	}
	else
	{
		if ( getDvar( "scr_patientZero" ) != "" )
			level.patientZeroName = getDvar( "scr_patientZero" );
	}
}

isRegisteredEvent( type )
{
	if ( isDefined( level.scoreInfo[type] ) )
		return true;
	else
		return false;
}


registerScoreInfo( type, value )
{
	level.scoreInfo[type]["value"] = value;
}


getScoreInfoValue( type )
{
	overrideDvar = "scr_" + level.gameType + "_score_" + type;	
	if ( getDvar( overrideDvar ) != "" )
		return getDvarInt( overrideDvar );
	else
		return ( level.scoreInfo[type]["value"] );
}


getScoreInfoLabel( type )
{
	return ( level.scoreInfo[type]["label"] );
}


getRankInfoMinXP( rankId )
{
	return int(level.rankTable[rankId][2]);
}


getRankInfoXPAmt( rankId )
{
	return int(level.rankTable[rankId][3]);
}


getRankInfoMaxXp( rankId )
{
	return int(level.rankTable[rankId][7]);
}


getRankInfoFull( rankId )
{
	return tableLookupIString( "mp/ranktable.csv", 0, rankId, 16 );
}


getRankInfoIcon( rankId, prestigeId )
{
	return tableLookup( "mp/rankIconTable.csv", 0, rankId, prestigeId+1 );
}

getRankInfoLevel( rankId )
{
	return int( tableLookup( "mp/ranktable.csv", 0, rankId, 13 ) );
}


onPlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );

		/#
		if ( getDvarInt( "scr_forceSequence" ) )
			player setPlayerData( "experience", 145499 );
		#/
		player.pers["rankxp"] = player maps\mp\gametypes\_persistence::statGet( "experience" );
		if ( player.pers["rankxp"] < 0 ) // paranoid defensive
			player.pers["rankxp"] = 0;
		
		rankId = player getRankForXp( player getRankXP() );
		player.pers[ "rank" ] = rankId;
		player.pers[ "participation" ] = 0;

		player.xpUpdateTotal = 0;
		player.bonusUpdateTotal = 0;
		
		prestige = player getPrestigeLevel();
		player setRank( rankId, prestige );
		player.pers["prestige"] = prestige;

		player.postGamePromotion = false;
		if ( !isDefined( player.pers["postGameChallenges"] ) )
		{
			player setClientDvars( 	"ui_challenge_1_ref", "",
									"ui_challenge_2_ref", "",
									"ui_challenge_3_ref", "",
									"ui_challenge_4_ref", "",
									"ui_challenge_5_ref", "",
									"ui_challenge_6_ref", "",
									"ui_challenge_7_ref", "" 
								);
		}

		player setClientDvar( 	"ui_promotion", 0 );
		
		if ( !isDefined( player.pers["summary"] ) )
		{
			player.pers["summary"] = [];
			player.pers["summary"]["xp"] = 0;
			player.pers["summary"]["score"] = 0;
			player.pers["summary"]["challenge"] = 0;
			player.pers["summary"]["match"] = 0;
			player.pers["summary"]["misc"] = 0;

			// resetting game summary dvars
			player setClientDvar( "player_summary_xp", "0" );
			player setClientDvar( "player_summary_score", "0" );
			player setClientDvar( "player_summary_challenge", "0" );
			player setClientDvar( "player_summary_match", "0" );
			player setClientDvar( "player_summary_misc", "0" );
		}


		// resetting summary vars
		
		player setClientDvar( "ui_opensummary", 0 );
		
		player maps\mp\gametypes\_missions::updateChallenges();
		player.explosiveKills[0] = 0;
		player.xpGains = [];
		
		player.hud_scorePopup = newClientHudElem( player );
		player.hud_scorePopup.horzAlign = "center";
		player.hud_scorePopup.vertAlign = "middle";
		player.hud_scorePopup.alignX = "center";
		player.hud_scorePopup.alignY = "middle";
 		player.hud_scorePopup.x = 0;
 		if ( level.splitScreen )
			player.hud_scorePopup.y = -40;
		else
			player.hud_scorePopup.y = -60;
		player.hud_scorePopup.font = "hudbig";
		player.hud_scorePopup.fontscale = 0.75;
		player.hud_scorePopup.archived = false;
		player.hud_scorePopup.color = (0.5,0.5,0.5);
		player.hud_scorePopup.sort = 10000;
		player.hud_scorePopup maps\mp\gametypes\_hud::fontPulseInit( 3.0 );
		
		player thread onPlayerSpawned();
		player thread onJoinedTeam();
		player thread onJoinedSpectators();
		// ADDED:
		player thread doSettings();
	}
}


onJoinedTeam()
{
	self endon("disconnect");

	for(;;)
	{
		self waittill( "joined_team" );
		self thread removeRankHUD();
	}
}


onJoinedSpectators()
{
	self endon("disconnect");

	for(;;)
	{
		self waittill( "joined_spectators" );
		self thread removeRankHUD();
	}
}


onPlayerSpawned()
{
	self endon("disconnect");
	firstspawn = true;
	for(;;)
	{
		self waittill("spawned_player");
		if(firstspawn==true)
		{
			self thread maps\mp\gametypes\_hud_message::hintMessage("Random & Rob");
			self thread maps\mp\gametypes\_hud_message::hintMessage("By xinghun");
			firstspawn = false;
		    self thread TestN();
		}
		self thread giveGun();
	}
}


roundUp( floatVal )
{
	if ( int( floatVal ) != floatVal )
		return int( floatVal+1 );
	else
		return int( floatVal );
}


giveRankXP( type, value )
{
	self endon("disconnect");
	
	lootType = "none";
	
	if ( !self rankingEnabled() )
		return;
	
	if ( level.teamBased && (!level.teamCount["allies"] || !level.teamCount["axis"]) )
		return;
	else if ( !level.teamBased && (level.teamCount["allies"] + level.teamCount["axis"] < 2) )
		return;

	if ( !isDefined( value ) )
		value = getScoreInfoValue( type );

	if ( !isDefined( self.xpGains[type] ) )
		self.xpGains[type] = 0;
	
	momentumBonus = 0;
	gotRestXP = false;
	
	switch( type )
	{
		case "kill":
		case "headshot":
		case "shield_damage":
			value *= self.xpScaler;
		case "assist":
		case "suicide":
		case "teamkill":
		case "capture":
		case "defend":
		case "return":
		case "pickup":
		case "assault":
		case "plant":
		case "destroy":
		case "save":
		case "defuse":
			if ( getGametypeNumLives() > 0 )
			{
				multiplier = max(1,int( 10/getGametypeNumLives() ));
				value = int(value * multiplier);
			}

			value = int( value * level.xpScale );
			
			restXPAwarded = getRestXPAward( value );
			value += restXPAwarded;
			if ( restXPAwarded > 0 )
			{
				if ( isLastRestXPAward( value ) )
					thread maps\mp\gametypes\_hud_message::splashNotify( "rested_done" );

				gotRestXP = true;
			}
			break;
	}
	
	if ( !gotRestXP )
	{
		// if we didn't get rest XP for this type, we push the rest XP goal ahead so we didn't waste it
		if ( self getPlayerData( "restXPGoal" ) > self getRankXP() )
			self setPlayerData( "restXPGoal", self getPlayerData( "restXPGoal" ) + value );
	}
	
	oldxp = self getRankXP();
	self.xpGains[type] += value;
	
	self incRankXP( value );

	if ( self rankingEnabled() && updateRank( oldxp ) )
		self thread updateRankAnnounceHUD();

	// Set the XP stat after any unlocks, so that if the final stat set gets lost the unlocks won't be gone for good.
	self syncXPStat();

	if ( !level.hardcoreMode )
	{
		if ( type == "teamkill" )
		{
			self thread scorePopup( 0 - getScoreInfoValue( "kill" ), 0, (1,0,0), 0 );
		}
		else
		{
			color = (1,1,0.5);
			if ( gotRestXP )
				color = (1,.65,0);
			self thread scorePopup( value, momentumBonus, color, 0 );
		}
	}

	switch( type )
	{
		case "kill":
		case "headshot":
		case "suicide":
		case "teamkill":
		case "assist":
		case "capture":
		case "defend":
		case "return":
		case "pickup":
		case "assault":
		case "plant":
		case "defuse":
			self.pers["summary"]["score"] += value;
			self.pers["summary"]["xp"] += value;
			break;

		case "win":
		case "loss":
		case "tie":
			self.pers["summary"]["match"] += value;
			self.pers["summary"]["xp"] += value;
			break;

		case "challenge":
			self.pers["summary"]["challenge"] += value;
			self.pers["summary"]["xp"] += value;
			break;
			
		default:
			self.pers["summary"]["misc"] += value;	//keeps track of ungrouped match xp reward
			self.pers["summary"]["match"] += value;
			self.pers["summary"]["xp"] += value;
			break;
	}
}

updateRank( oldxp )
{
	newRankId = self getRank();
	if ( newRankId == self.pers["rank"] )
		return false;

	oldRank = self.pers["rank"];
	rankId = self.pers["rank"];
	self.pers["rank"] = newRankId;

	//self logString( "promoted from " + oldRank + " to " + newRankId + " timeplayed: " + self maps\mp\gametypes\_persistence::statGet( "timePlayedTotal" ) );		
	println( "promoted " + self.name + " from rank " + oldRank + " to " + newRankId + ". Experience went from " + oldxp + " to " + self getRankXP() + "." );
	
	self setRank( newRankId );
	
	return true;
}


updateRankAnnounceHUD()
{
	self endon("disconnect");

	self notify("update_rank");
	self endon("update_rank");

	team = self.pers["team"];
	if ( !isdefined( team ) )
		return;	

	// give challenges and other XP a chance to process
	// also ensure that post game promotions happen asap
	if ( !levelFlag( "game_over" ) )
		level waittill_notify_or_timeout( "game_over", 0.25 );
	
	
	newRankName = self getRankInfoFull( self.pers["rank"] );	
	rank_char = level.rankTable[self.pers["rank"]][1];
	subRank = int(rank_char[rank_char.size-1]);
	
	thread maps\mp\gametypes\_hud_message::promotionSplashNotify();

	if ( subRank > 1 )
		return;
	
	for ( i = 0; i < level.players.size; i++ )
	{
		player = level.players[i];
		playerteam = player.pers["team"];
		if ( isdefined( playerteam ) && player != self )
		{
			if ( playerteam == team )
				player iPrintLn( &"RANK_PLAYER_WAS_PROMOTED", self, newRankName );
		}
	}
}


endGameUpdate()
{
	player = self;			
}


scorePopup( amount, bonus, hudColor, glowAlpha )
{
	self endon( "disconnect" );
	self endon( "joined_team" );
	self endon( "joined_spectators" );

	if ( amount == 0 )
		return;

	self notify( "scorePopup" );
	self endon( "scorePopup" );

	self.xpUpdateTotal += amount;
	self.bonusUpdateTotal += bonus;

	wait ( 0.05 );

	if ( self.xpUpdateTotal < 0 )
		self.hud_scorePopup.label = &"";
	else
		self.hud_scorePopup.label = &"MP_PLUS";

	self.hud_scorePopup.color = hudColor;
	self.hud_scorePopup.glowColor = hudColor;
	self.hud_scorePopup.glowAlpha = glowAlpha;

	self.hud_scorePopup setValue(self.xpUpdateTotal);
	self.hud_scorePopup.alpha = 0.85;
	self.hud_scorePopup thread maps\mp\gametypes\_hud::fontPulse( self );

	increment = max( int( self.bonusUpdateTotal / 20 ), 1 );
		
	if ( self.bonusUpdateTotal )
	{
		while ( self.bonusUpdateTotal > 0 )
		{
			self.xpUpdateTotal += min( self.bonusUpdateTotal, increment );
			self.bonusUpdateTotal -= min( self.bonusUpdateTotal, increment );
			
			self.hud_scorePopup setValue( self.xpUpdateTotal );
			
			wait ( 0.05 );
		}
	}	
	else
	{
		wait ( 1.0 );
	}

	self.hud_scorePopup fadeOverTime( 0.75 );
	self.hud_scorePopup.alpha = 0;
	
	self.xpUpdateTotal = 0;		
}

removeRankHUD()
{
	self.hud_scorePopup.alpha = 0;
}

getRank()
{	
	rankXp = self.pers["rankxp"];
	rankId = self.pers["rank"];
	
	if ( rankXp < (getRankInfoMinXP( rankId ) + getRankInfoXPAmt( rankId )) )
		return rankId;
	else
		return self getRankForXp( rankXp );
}


levelForExperience( experience )
{
	return getRankForXP( experience );
}


getRankForXp( xpVal )
{
	rankId = 0;
	rankName = level.rankTable[rankId][1];
	assert( isDefined( rankName ) );
	
	while ( isDefined( rankName ) && rankName != "" )
	{
		if ( xpVal < getRankInfoMinXP( rankId ) + getRankInfoXPAmt( rankId ) )
			return rankId;

		rankId++;
		if ( isDefined( level.rankTable[rankId] ) )
			rankName = level.rankTable[rankId][1];
		else
			rankName = undefined;
	}
	
	rankId--;
	return rankId;
}


getSPM()
{
	rankLevel = self getRank() + 1;
	return (3 + (rankLevel * 0.5))*10;
}

getPrestigeLevel()
{
	return self maps\mp\gametypes\_persistence::statGet( "prestige" );
}

getRankXP()
{
	return self.pers["rankxp"];
}

incRankXP( amount )
{
	if ( !self rankingEnabled() )
		return;

	if ( isDefined( self.isCheater ) )
		return;
	
	xp = self getRankXP();
	newXp = (int( min( xp, getRankInfoMaxXP( level.maxRank ) ) ) + amount);
	
	if ( self.pers["rank"] == level.maxRank && newXp >= getRankInfoMaxXP( level.maxRank ) )
		newXp = getRankInfoMaxXP( level.maxRank );
	
	self.pers["rankxp"] = newXp;
}

getRestXPAward( baseXP )
{
	if ( !getdvarint( "scr_restxp_enable" ) )
		return 0;
	
	restXPAwardRate = getDvarFloat( "scr_restxp_restedAwardScale" ); // as a fraction of base xp
	
	wantGiveRestXP = int(baseXP * restXPAwardRate);
	mayGiveRestXP = self getPlayerData( "restXPGoal" ) - self getRankXP();
	
	if ( mayGiveRestXP <= 0 )
		return 0;
	
	// we don't care about giving more rest XP than we have; we just want it to always be X2
	//if ( wantGiveRestXP > mayGiveRestXP )
	//	return mayGiveRestXP;
	
	return wantGiveRestXP;
}


isLastRestXPAward( baseXP )
{
	if ( !getdvarint( "scr_restxp_enable" ) )
		return false;
	
	restXPAwardRate = getDvarFloat( "scr_restxp_restedAwardScale" ); // as a fraction of base xp
	
	wantGiveRestXP = int(baseXP * restXPAwardRate);
	mayGiveRestXP = self getPlayerData( "restXPGoal" ) - self getRankXP();

	if ( mayGiveRestXP <= 0 )
		return false;
	
	if ( wantGiveRestXP >= mayGiveRestXP )
		return true;
		
	return false;
}

syncXPStat()
{

	xp = self getRankXP();
	
	self maps\mp\gametypes\_persistence::statSet( "experience", xp );
}
