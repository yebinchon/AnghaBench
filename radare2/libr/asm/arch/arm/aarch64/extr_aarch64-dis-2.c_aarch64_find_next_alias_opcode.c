
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aarch64_opcode ;


 int const* aarch64_opcode_table ;

const aarch64_opcode *
aarch64_find_next_alias_opcode (const aarch64_opcode *opcode)
{

  int key = opcode - aarch64_opcode_table;
  int value;
  switch (key)
    {
    case 3: value = 2; break;
    case 5: value = 4; break;
    case 8: value = 7; break;
    case 11: value = 10; break;
    case 13: value = 12; break;
    case 15: value = 14; break;
    case 18: value = 17; break;
    case 21: value = 20; break;
    case 23: value = 22; break;
    case 25: value = 26; break;
    case 26: value = 24; break;
    case 151: value = 150; break;
    case 153: value = 152; break;
    case 155: value = 154; break;
    case 237: value = 236; break;
    case 312: value = 311; break;
    case 383: value = 382; break;
    case 385: value = 384; break;
    case 407: value = 406; break;
    case 409: value = 408; break;
    case 530: value = 529; break;
    case 617: value = 616; break;
    case 616: value = 615; break;
    case 615: value = 618; break;
    case 618: value = 614; break;
    case 614: value = 613; break;
    case 613: value = 612; break;
    case 621: value = 622; break;
    case 622: value = 620; break;
    case 620: value = 619; break;
    case 627: value = 626; break;
    case 626: value = 629; break;
    case 629: value = 628; break;
    case 628: value = 625; break;
    case 625: value = 624; break;
    case 624: value = 623; break;
    case 659: value = 658; break;
    case 658: value = 657; break;
    case 662: value = 661; break;
    case 661: value = 660; break;
    case 664: value = 663; break;
    case 682: value = 683; break;
    case 708: value = 707; break;
    case 710: value = 709; break;
    case 712: value = 711; break;
    case 714: value = 713; break;
    case 725: value = 724; break;
    case 727: value = 726; break;
    case 729: value = 728; break;
    case 731: value = 730; break;
    case 734: value = 733; break;
    case 736: value = 735; break;
    case 747: value = 746; break;
    case 960: value = 959; break;
    case 962: value = 961; break;
    case 965: value = 964; break;
    case 970: value = 969; break;
    case 969: value = 968; break;
    case 972: value = 971; break;
    case 976: value = 975; break;
    case 1102: value = 1006; break;
    case 1103: value = 1007; break;
    case 1104: value = 1008; break;
    case 1105: value = 1010; break;
    case 1106: value = 1013; break;
    case 1107: value = 1016; break;
    case 1108: value = 1018; break;
    case 1109: value = 1019; break;
    case 1110: value = 1020; break;
    case 1111: value = 1022; break;
    case 1112: value = 1025; break;
    case 1113: value = 1028; break;
    case 1114: value = 1030; break;
    case 1115: value = 1031; break;
    case 1116: value = 1032; break;
    case 1117: value = 1034; break;
    case 1118: value = 1037; break;
    case 1119: value = 1040; break;
    case 1120: value = 1042; break;
    case 1121: value = 1043; break;
    case 1122: value = 1044; break;
    case 1123: value = 1046; break;
    case 1124: value = 1049; break;
    case 1125: value = 1052; break;
    case 1126: value = 1054; break;
    case 1127: value = 1055; break;
    case 1128: value = 1056; break;
    case 1129: value = 1058; break;
    case 1130: value = 1061; break;
    case 1131: value = 1064; break;
    case 1132: value = 1066; break;
    case 1133: value = 1067; break;
    case 1134: value = 1068; break;
    case 1135: value = 1070; break;
    case 1136: value = 1073; break;
    case 1137: value = 1076; break;
    case 1138: value = 1078; break;
    case 1139: value = 1079; break;
    case 1140: value = 1080; break;
    case 1141: value = 1082; break;
    case 1142: value = 1085; break;
    case 1143: value = 1088; break;
    case 1144: value = 1090; break;
    case 1145: value = 1091; break;
    case 1146: value = 1092; break;
    case 1147: value = 1094; break;
    case 1148: value = 1097; break;
    case 1149: value = 1100; break;
    case 1151: value = 1150; break;
    case 1153: value = 1152; break;
    case 1194: value = 1193; break;
    case 1193: value = 1192; break;
    case 1192: value = 1191; break;
    case 1191: value = 1190; break;
    case 1190: value = 1189; break;
    case 1189: value = 1188; break;
    case 1188: value = 1187; break;
    case 1187: value = 1172; break;
    case 1172: value = 1171; break;
    case 1171: value = 1170; break;
    case 1170: value = 1169; break;
    case 1169: value = 1168; break;
    case 1168: value = 1167; break;
    case 1167: value = 1166; break;
    case 1166: value = 1165; break;
    case 1165: value = 1164; break;
    case 1164: value = 1163; break;
    case 1163: value = 1162; break;
    case 1162: value = 1161; break;
    case 1161: value = 1160; break;
    case 1160: value = 1159; break;
    case 1159: value = 1158; break;
    case 1176: value = 1175; break;
    case 1175: value = 1174; break;
    case 1183: value = 1182; break;
    case 1182: value = 1181; break;
    case 1181: value = 1180; break;
    case 1180: value = 1179; break;
    case 1992: value = 1242; break;
    case 1225: value = 1244; break;
    case 1229: value = 1245; break;
    case 1993: value = 1280; break;
    case 1996: value = 1283; break;
    case 1994: value = 1285; break;
    case 1995: value = 1288; break;
    case 1222: value = 1310; break;
    case 1224: value = 1311; break;
    case 2003: value = 1227; break;
    case 1227: value = 1312; break;
    case 1217: value = 1324; break;
    case 1219: value = 1216; break;
    case 1216: value = 1325; break;
    case 2002: value = 1221; break;
    case 1221: value = 1326; break;
    case 1220: value = 1327; break;
    case 1997: value = 1329; break;
    case 1230: value = 1331; break;
    case 1231: value = 1332; break;
    case 1998: value = 1337; break;
    case 1999: value = 1338; break;
    case 2000: value = 1351; break;
    case 2001: value = 1353; break;
    case 1214: value = 1359; break;
    case 1213: value = 1382; break;
    case 1215: value = 1713; break;
    case 2004: value = 1714; break;
    case 1218: value = 1716; break;
    case 1228: value = 1717; break;
    case 1223: value = 1779; break;
    case 1226: value = 1780; break;
    default: return ((void*)0);
    }

  return aarch64_opcode_table + value;
}
