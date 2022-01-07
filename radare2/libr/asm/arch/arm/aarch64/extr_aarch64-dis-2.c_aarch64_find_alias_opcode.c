
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aarch64_opcode ;


 int const* aarch64_opcode_table ;

const aarch64_opcode *
aarch64_find_alias_opcode (const aarch64_opcode *opcode)
{

  int key = opcode - aarch64_opcode_table;
  int value;
  switch (key)
    {
    case 2: value = 3; break;
    case 4: value = 5; break;
    case 7: value = 8; break;
    case 10: value = 11; break;
    case 12: value = 13; break;
    case 14: value = 15; break;
    case 17: value = 18; break;
    case 20: value = 21; break;
    case 22: value = 23; break;
    case 24: value = 25; break;
    case 150: value = 151; break;
    case 152: value = 153; break;
    case 154: value = 155; break;
    case 236: value = 237; break;
    case 311: value = 312; break;
    case 382: value = 383; break;
    case 384: value = 385; break;
    case 406: value = 407; break;
    case 408: value = 409; break;
    case 529: value = 530; break;
    case 612: value = 617; break;
    case 619: value = 621; break;
    case 623: value = 627; break;
    case 657: value = 659; break;
    case 660: value = 662; break;
    case 663: value = 664; break;
    case 682: value = 682; break;
    case 707: value = 708; break;
    case 709: value = 710; break;
    case 711: value = 712; break;
    case 713: value = 714; break;
    case 724: value = 725; break;
    case 726: value = 727; break;
    case 728: value = 729; break;
    case 730: value = 731; break;
    case 733: value = 734; break;
    case 735: value = 736; break;
    case 746: value = 747; break;
    case 959: value = 960; break;
    case 961: value = 962; break;
    case 964: value = 965; break;
    case 968: value = 970; break;
    case 971: value = 972; break;
    case 975: value = 976; break;
    case 1006: value = 1102; break;
    case 1007: value = 1103; break;
    case 1008: value = 1104; break;
    case 1010: value = 1105; break;
    case 1013: value = 1106; break;
    case 1016: value = 1107; break;
    case 1018: value = 1108; break;
    case 1019: value = 1109; break;
    case 1020: value = 1110; break;
    case 1022: value = 1111; break;
    case 1025: value = 1112; break;
    case 1028: value = 1113; break;
    case 1030: value = 1114; break;
    case 1031: value = 1115; break;
    case 1032: value = 1116; break;
    case 1034: value = 1117; break;
    case 1037: value = 1118; break;
    case 1040: value = 1119; break;
    case 1042: value = 1120; break;
    case 1043: value = 1121; break;
    case 1044: value = 1122; break;
    case 1046: value = 1123; break;
    case 1049: value = 1124; break;
    case 1052: value = 1125; break;
    case 1054: value = 1126; break;
    case 1055: value = 1127; break;
    case 1056: value = 1128; break;
    case 1058: value = 1129; break;
    case 1061: value = 1130; break;
    case 1064: value = 1131; break;
    case 1066: value = 1132; break;
    case 1067: value = 1133; break;
    case 1068: value = 1134; break;
    case 1070: value = 1135; break;
    case 1073: value = 1136; break;
    case 1076: value = 1137; break;
    case 1078: value = 1138; break;
    case 1079: value = 1139; break;
    case 1080: value = 1140; break;
    case 1082: value = 1141; break;
    case 1085: value = 1142; break;
    case 1088: value = 1143; break;
    case 1090: value = 1144; break;
    case 1091: value = 1145; break;
    case 1092: value = 1146; break;
    case 1094: value = 1147; break;
    case 1097: value = 1148; break;
    case 1100: value = 1149; break;
    case 1150: value = 1151; break;
    case 1152: value = 1153; break;
    case 1158: value = 1194; break;
    case 1174: value = 1176; break;
    case 1179: value = 1183; break;
    case 1242: value = 1992; break;
    case 1244: value = 1225; break;
    case 1245: value = 1229; break;
    case 1280: value = 1993; break;
    case 1283: value = 1996; break;
    case 1285: value = 1994; break;
    case 1288: value = 1995; break;
    case 1310: value = 1222; break;
    case 1311: value = 1224; break;
    case 1312: value = 2003; break;
    case 1324: value = 1217; break;
    case 1325: value = 1219; break;
    case 1326: value = 2002; break;
    case 1327: value = 1220; break;
    case 1329: value = 1997; break;
    case 1331: value = 1230; break;
    case 1332: value = 1231; break;
    case 1337: value = 1998; break;
    case 1338: value = 1999; break;
    case 1351: value = 2000; break;
    case 1353: value = 2001; break;
    case 1359: value = 1214; break;
    case 1382: value = 1213; break;
    case 1713: value = 1215; break;
    case 1714: value = 2004; break;
    case 1716: value = 1218; break;
    case 1717: value = 1228; break;
    case 1779: value = 1223; break;
    case 1780: value = 1226; break;
    default: return ((void*)0);
    }

  return aarch64_opcode_table + value;
}
