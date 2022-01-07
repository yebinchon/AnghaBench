; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_find_next_alias_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_find_next_alias_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aarch64_opcode_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aarch64_find_next_alias_opcode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** @aarch64_opcode_table, align 8
  %8 = ptrtoint i32* %6 to i64
  %9 = ptrtoint i32* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %184 [
    i32 3, label %14
    i32 5, label %15
    i32 8, label %16
    i32 11, label %17
    i32 13, label %18
    i32 15, label %19
    i32 18, label %20
    i32 21, label %21
    i32 23, label %22
    i32 25, label %23
    i32 26, label %24
    i32 151, label %25
    i32 153, label %26
    i32 155, label %27
    i32 237, label %28
    i32 312, label %29
    i32 383, label %30
    i32 385, label %31
    i32 407, label %32
    i32 409, label %33
    i32 530, label %34
    i32 617, label %35
    i32 616, label %36
    i32 615, label %37
    i32 618, label %38
    i32 614, label %39
    i32 613, label %40
    i32 621, label %41
    i32 622, label %42
    i32 620, label %43
    i32 627, label %44
    i32 626, label %45
    i32 629, label %46
    i32 628, label %47
    i32 625, label %48
    i32 624, label %49
    i32 659, label %50
    i32 658, label %51
    i32 662, label %52
    i32 661, label %53
    i32 664, label %54
    i32 682, label %55
    i32 708, label %56
    i32 710, label %57
    i32 712, label %58
    i32 714, label %59
    i32 725, label %60
    i32 727, label %61
    i32 729, label %62
    i32 731, label %63
    i32 734, label %64
    i32 736, label %65
    i32 747, label %66
    i32 960, label %67
    i32 962, label %68
    i32 965, label %69
    i32 970, label %70
    i32 969, label %71
    i32 972, label %72
    i32 976, label %73
    i32 1102, label %74
    i32 1103, label %75
    i32 1104, label %76
    i32 1105, label %77
    i32 1106, label %78
    i32 1107, label %79
    i32 1108, label %80
    i32 1109, label %81
    i32 1110, label %82
    i32 1111, label %83
    i32 1112, label %84
    i32 1113, label %85
    i32 1114, label %86
    i32 1115, label %87
    i32 1116, label %88
    i32 1117, label %89
    i32 1118, label %90
    i32 1119, label %91
    i32 1120, label %92
    i32 1121, label %93
    i32 1122, label %94
    i32 1123, label %95
    i32 1124, label %96
    i32 1125, label %97
    i32 1126, label %98
    i32 1127, label %99
    i32 1128, label %100
    i32 1129, label %101
    i32 1130, label %102
    i32 1131, label %103
    i32 1132, label %104
    i32 1133, label %105
    i32 1134, label %106
    i32 1135, label %107
    i32 1136, label %108
    i32 1137, label %109
    i32 1138, label %110
    i32 1139, label %111
    i32 1140, label %112
    i32 1141, label %113
    i32 1142, label %114
    i32 1143, label %115
    i32 1144, label %116
    i32 1145, label %117
    i32 1146, label %118
    i32 1147, label %119
    i32 1148, label %120
    i32 1149, label %121
    i32 1151, label %122
    i32 1153, label %123
    i32 1194, label %124
    i32 1193, label %125
    i32 1192, label %126
    i32 1191, label %127
    i32 1190, label %128
    i32 1189, label %129
    i32 1188, label %130
    i32 1187, label %131
    i32 1172, label %132
    i32 1171, label %133
    i32 1170, label %134
    i32 1169, label %135
    i32 1168, label %136
    i32 1167, label %137
    i32 1166, label %138
    i32 1165, label %139
    i32 1164, label %140
    i32 1163, label %141
    i32 1162, label %142
    i32 1161, label %143
    i32 1160, label %144
    i32 1159, label %145
    i32 1176, label %146
    i32 1175, label %147
    i32 1183, label %148
    i32 1182, label %149
    i32 1181, label %150
    i32 1180, label %151
    i32 1992, label %152
    i32 1225, label %153
    i32 1229, label %154
    i32 1993, label %155
    i32 1996, label %156
    i32 1994, label %157
    i32 1995, label %158
    i32 1222, label %159
    i32 1224, label %160
    i32 2003, label %161
    i32 1227, label %162
    i32 1217, label %163
    i32 1219, label %164
    i32 1216, label %165
    i32 2002, label %166
    i32 1221, label %167
    i32 1220, label %168
    i32 1997, label %169
    i32 1230, label %170
    i32 1231, label %171
    i32 1998, label %172
    i32 1999, label %173
    i32 2000, label %174
    i32 2001, label %175
    i32 1214, label %176
    i32 1213, label %177
    i32 1215, label %178
    i32 2004, label %179
    i32 1218, label %180
    i32 1228, label %181
    i32 1223, label %182
    i32 1226, label %183
  ]

14:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  br label %185

15:                                               ; preds = %1
  store i32 4, i32* %5, align 4
  br label %185

16:                                               ; preds = %1
  store i32 7, i32* %5, align 4
  br label %185

17:                                               ; preds = %1
  store i32 10, i32* %5, align 4
  br label %185

18:                                               ; preds = %1
  store i32 12, i32* %5, align 4
  br label %185

19:                                               ; preds = %1
  store i32 14, i32* %5, align 4
  br label %185

20:                                               ; preds = %1
  store i32 17, i32* %5, align 4
  br label %185

21:                                               ; preds = %1
  store i32 20, i32* %5, align 4
  br label %185

22:                                               ; preds = %1
  store i32 22, i32* %5, align 4
  br label %185

23:                                               ; preds = %1
  store i32 26, i32* %5, align 4
  br label %185

24:                                               ; preds = %1
  store i32 24, i32* %5, align 4
  br label %185

25:                                               ; preds = %1
  store i32 150, i32* %5, align 4
  br label %185

26:                                               ; preds = %1
  store i32 152, i32* %5, align 4
  br label %185

27:                                               ; preds = %1
  store i32 154, i32* %5, align 4
  br label %185

28:                                               ; preds = %1
  store i32 236, i32* %5, align 4
  br label %185

29:                                               ; preds = %1
  store i32 311, i32* %5, align 4
  br label %185

30:                                               ; preds = %1
  store i32 382, i32* %5, align 4
  br label %185

31:                                               ; preds = %1
  store i32 384, i32* %5, align 4
  br label %185

32:                                               ; preds = %1
  store i32 406, i32* %5, align 4
  br label %185

33:                                               ; preds = %1
  store i32 408, i32* %5, align 4
  br label %185

34:                                               ; preds = %1
  store i32 529, i32* %5, align 4
  br label %185

35:                                               ; preds = %1
  store i32 616, i32* %5, align 4
  br label %185

36:                                               ; preds = %1
  store i32 615, i32* %5, align 4
  br label %185

37:                                               ; preds = %1
  store i32 618, i32* %5, align 4
  br label %185

38:                                               ; preds = %1
  store i32 614, i32* %5, align 4
  br label %185

39:                                               ; preds = %1
  store i32 613, i32* %5, align 4
  br label %185

40:                                               ; preds = %1
  store i32 612, i32* %5, align 4
  br label %185

41:                                               ; preds = %1
  store i32 622, i32* %5, align 4
  br label %185

42:                                               ; preds = %1
  store i32 620, i32* %5, align 4
  br label %185

43:                                               ; preds = %1
  store i32 619, i32* %5, align 4
  br label %185

44:                                               ; preds = %1
  store i32 626, i32* %5, align 4
  br label %185

45:                                               ; preds = %1
  store i32 629, i32* %5, align 4
  br label %185

46:                                               ; preds = %1
  store i32 628, i32* %5, align 4
  br label %185

47:                                               ; preds = %1
  store i32 625, i32* %5, align 4
  br label %185

48:                                               ; preds = %1
  store i32 624, i32* %5, align 4
  br label %185

49:                                               ; preds = %1
  store i32 623, i32* %5, align 4
  br label %185

50:                                               ; preds = %1
  store i32 658, i32* %5, align 4
  br label %185

51:                                               ; preds = %1
  store i32 657, i32* %5, align 4
  br label %185

52:                                               ; preds = %1
  store i32 661, i32* %5, align 4
  br label %185

53:                                               ; preds = %1
  store i32 660, i32* %5, align 4
  br label %185

54:                                               ; preds = %1
  store i32 663, i32* %5, align 4
  br label %185

55:                                               ; preds = %1
  store i32 683, i32* %5, align 4
  br label %185

56:                                               ; preds = %1
  store i32 707, i32* %5, align 4
  br label %185

57:                                               ; preds = %1
  store i32 709, i32* %5, align 4
  br label %185

58:                                               ; preds = %1
  store i32 711, i32* %5, align 4
  br label %185

59:                                               ; preds = %1
  store i32 713, i32* %5, align 4
  br label %185

60:                                               ; preds = %1
  store i32 724, i32* %5, align 4
  br label %185

61:                                               ; preds = %1
  store i32 726, i32* %5, align 4
  br label %185

62:                                               ; preds = %1
  store i32 728, i32* %5, align 4
  br label %185

63:                                               ; preds = %1
  store i32 730, i32* %5, align 4
  br label %185

64:                                               ; preds = %1
  store i32 733, i32* %5, align 4
  br label %185

65:                                               ; preds = %1
  store i32 735, i32* %5, align 4
  br label %185

66:                                               ; preds = %1
  store i32 746, i32* %5, align 4
  br label %185

67:                                               ; preds = %1
  store i32 959, i32* %5, align 4
  br label %185

68:                                               ; preds = %1
  store i32 961, i32* %5, align 4
  br label %185

69:                                               ; preds = %1
  store i32 964, i32* %5, align 4
  br label %185

70:                                               ; preds = %1
  store i32 969, i32* %5, align 4
  br label %185

71:                                               ; preds = %1
  store i32 968, i32* %5, align 4
  br label %185

72:                                               ; preds = %1
  store i32 971, i32* %5, align 4
  br label %185

73:                                               ; preds = %1
  store i32 975, i32* %5, align 4
  br label %185

74:                                               ; preds = %1
  store i32 1006, i32* %5, align 4
  br label %185

75:                                               ; preds = %1
  store i32 1007, i32* %5, align 4
  br label %185

76:                                               ; preds = %1
  store i32 1008, i32* %5, align 4
  br label %185

77:                                               ; preds = %1
  store i32 1010, i32* %5, align 4
  br label %185

78:                                               ; preds = %1
  store i32 1013, i32* %5, align 4
  br label %185

79:                                               ; preds = %1
  store i32 1016, i32* %5, align 4
  br label %185

80:                                               ; preds = %1
  store i32 1018, i32* %5, align 4
  br label %185

81:                                               ; preds = %1
  store i32 1019, i32* %5, align 4
  br label %185

82:                                               ; preds = %1
  store i32 1020, i32* %5, align 4
  br label %185

83:                                               ; preds = %1
  store i32 1022, i32* %5, align 4
  br label %185

84:                                               ; preds = %1
  store i32 1025, i32* %5, align 4
  br label %185

85:                                               ; preds = %1
  store i32 1028, i32* %5, align 4
  br label %185

86:                                               ; preds = %1
  store i32 1030, i32* %5, align 4
  br label %185

87:                                               ; preds = %1
  store i32 1031, i32* %5, align 4
  br label %185

88:                                               ; preds = %1
  store i32 1032, i32* %5, align 4
  br label %185

89:                                               ; preds = %1
  store i32 1034, i32* %5, align 4
  br label %185

90:                                               ; preds = %1
  store i32 1037, i32* %5, align 4
  br label %185

91:                                               ; preds = %1
  store i32 1040, i32* %5, align 4
  br label %185

92:                                               ; preds = %1
  store i32 1042, i32* %5, align 4
  br label %185

93:                                               ; preds = %1
  store i32 1043, i32* %5, align 4
  br label %185

94:                                               ; preds = %1
  store i32 1044, i32* %5, align 4
  br label %185

95:                                               ; preds = %1
  store i32 1046, i32* %5, align 4
  br label %185

96:                                               ; preds = %1
  store i32 1049, i32* %5, align 4
  br label %185

97:                                               ; preds = %1
  store i32 1052, i32* %5, align 4
  br label %185

98:                                               ; preds = %1
  store i32 1054, i32* %5, align 4
  br label %185

99:                                               ; preds = %1
  store i32 1055, i32* %5, align 4
  br label %185

100:                                              ; preds = %1
  store i32 1056, i32* %5, align 4
  br label %185

101:                                              ; preds = %1
  store i32 1058, i32* %5, align 4
  br label %185

102:                                              ; preds = %1
  store i32 1061, i32* %5, align 4
  br label %185

103:                                              ; preds = %1
  store i32 1064, i32* %5, align 4
  br label %185

104:                                              ; preds = %1
  store i32 1066, i32* %5, align 4
  br label %185

105:                                              ; preds = %1
  store i32 1067, i32* %5, align 4
  br label %185

106:                                              ; preds = %1
  store i32 1068, i32* %5, align 4
  br label %185

107:                                              ; preds = %1
  store i32 1070, i32* %5, align 4
  br label %185

108:                                              ; preds = %1
  store i32 1073, i32* %5, align 4
  br label %185

109:                                              ; preds = %1
  store i32 1076, i32* %5, align 4
  br label %185

110:                                              ; preds = %1
  store i32 1078, i32* %5, align 4
  br label %185

111:                                              ; preds = %1
  store i32 1079, i32* %5, align 4
  br label %185

112:                                              ; preds = %1
  store i32 1080, i32* %5, align 4
  br label %185

113:                                              ; preds = %1
  store i32 1082, i32* %5, align 4
  br label %185

114:                                              ; preds = %1
  store i32 1085, i32* %5, align 4
  br label %185

115:                                              ; preds = %1
  store i32 1088, i32* %5, align 4
  br label %185

116:                                              ; preds = %1
  store i32 1090, i32* %5, align 4
  br label %185

117:                                              ; preds = %1
  store i32 1091, i32* %5, align 4
  br label %185

118:                                              ; preds = %1
  store i32 1092, i32* %5, align 4
  br label %185

119:                                              ; preds = %1
  store i32 1094, i32* %5, align 4
  br label %185

120:                                              ; preds = %1
  store i32 1097, i32* %5, align 4
  br label %185

121:                                              ; preds = %1
  store i32 1100, i32* %5, align 4
  br label %185

122:                                              ; preds = %1
  store i32 1150, i32* %5, align 4
  br label %185

123:                                              ; preds = %1
  store i32 1152, i32* %5, align 4
  br label %185

124:                                              ; preds = %1
  store i32 1193, i32* %5, align 4
  br label %185

125:                                              ; preds = %1
  store i32 1192, i32* %5, align 4
  br label %185

126:                                              ; preds = %1
  store i32 1191, i32* %5, align 4
  br label %185

127:                                              ; preds = %1
  store i32 1190, i32* %5, align 4
  br label %185

128:                                              ; preds = %1
  store i32 1189, i32* %5, align 4
  br label %185

129:                                              ; preds = %1
  store i32 1188, i32* %5, align 4
  br label %185

130:                                              ; preds = %1
  store i32 1187, i32* %5, align 4
  br label %185

131:                                              ; preds = %1
  store i32 1172, i32* %5, align 4
  br label %185

132:                                              ; preds = %1
  store i32 1171, i32* %5, align 4
  br label %185

133:                                              ; preds = %1
  store i32 1170, i32* %5, align 4
  br label %185

134:                                              ; preds = %1
  store i32 1169, i32* %5, align 4
  br label %185

135:                                              ; preds = %1
  store i32 1168, i32* %5, align 4
  br label %185

136:                                              ; preds = %1
  store i32 1167, i32* %5, align 4
  br label %185

137:                                              ; preds = %1
  store i32 1166, i32* %5, align 4
  br label %185

138:                                              ; preds = %1
  store i32 1165, i32* %5, align 4
  br label %185

139:                                              ; preds = %1
  store i32 1164, i32* %5, align 4
  br label %185

140:                                              ; preds = %1
  store i32 1163, i32* %5, align 4
  br label %185

141:                                              ; preds = %1
  store i32 1162, i32* %5, align 4
  br label %185

142:                                              ; preds = %1
  store i32 1161, i32* %5, align 4
  br label %185

143:                                              ; preds = %1
  store i32 1160, i32* %5, align 4
  br label %185

144:                                              ; preds = %1
  store i32 1159, i32* %5, align 4
  br label %185

145:                                              ; preds = %1
  store i32 1158, i32* %5, align 4
  br label %185

146:                                              ; preds = %1
  store i32 1175, i32* %5, align 4
  br label %185

147:                                              ; preds = %1
  store i32 1174, i32* %5, align 4
  br label %185

148:                                              ; preds = %1
  store i32 1182, i32* %5, align 4
  br label %185

149:                                              ; preds = %1
  store i32 1181, i32* %5, align 4
  br label %185

150:                                              ; preds = %1
  store i32 1180, i32* %5, align 4
  br label %185

151:                                              ; preds = %1
  store i32 1179, i32* %5, align 4
  br label %185

152:                                              ; preds = %1
  store i32 1242, i32* %5, align 4
  br label %185

153:                                              ; preds = %1
  store i32 1244, i32* %5, align 4
  br label %185

154:                                              ; preds = %1
  store i32 1245, i32* %5, align 4
  br label %185

155:                                              ; preds = %1
  store i32 1280, i32* %5, align 4
  br label %185

156:                                              ; preds = %1
  store i32 1283, i32* %5, align 4
  br label %185

157:                                              ; preds = %1
  store i32 1285, i32* %5, align 4
  br label %185

158:                                              ; preds = %1
  store i32 1288, i32* %5, align 4
  br label %185

159:                                              ; preds = %1
  store i32 1310, i32* %5, align 4
  br label %185

160:                                              ; preds = %1
  store i32 1311, i32* %5, align 4
  br label %185

161:                                              ; preds = %1
  store i32 1227, i32* %5, align 4
  br label %185

162:                                              ; preds = %1
  store i32 1312, i32* %5, align 4
  br label %185

163:                                              ; preds = %1
  store i32 1324, i32* %5, align 4
  br label %185

164:                                              ; preds = %1
  store i32 1216, i32* %5, align 4
  br label %185

165:                                              ; preds = %1
  store i32 1325, i32* %5, align 4
  br label %185

166:                                              ; preds = %1
  store i32 1221, i32* %5, align 4
  br label %185

167:                                              ; preds = %1
  store i32 1326, i32* %5, align 4
  br label %185

168:                                              ; preds = %1
  store i32 1327, i32* %5, align 4
  br label %185

169:                                              ; preds = %1
  store i32 1329, i32* %5, align 4
  br label %185

170:                                              ; preds = %1
  store i32 1331, i32* %5, align 4
  br label %185

171:                                              ; preds = %1
  store i32 1332, i32* %5, align 4
  br label %185

172:                                              ; preds = %1
  store i32 1337, i32* %5, align 4
  br label %185

173:                                              ; preds = %1
  store i32 1338, i32* %5, align 4
  br label %185

174:                                              ; preds = %1
  store i32 1351, i32* %5, align 4
  br label %185

175:                                              ; preds = %1
  store i32 1353, i32* %5, align 4
  br label %185

176:                                              ; preds = %1
  store i32 1359, i32* %5, align 4
  br label %185

177:                                              ; preds = %1
  store i32 1382, i32* %5, align 4
  br label %185

178:                                              ; preds = %1
  store i32 1713, i32* %5, align 4
  br label %185

179:                                              ; preds = %1
  store i32 1714, i32* %5, align 4
  br label %185

180:                                              ; preds = %1
  store i32 1716, i32* %5, align 4
  br label %185

181:                                              ; preds = %1
  store i32 1717, i32* %5, align 4
  br label %185

182:                                              ; preds = %1
  store i32 1779, i32* %5, align 4
  br label %185

183:                                              ; preds = %1
  store i32 1780, i32* %5, align 4
  br label %185

184:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %190

185:                                              ; preds = %183, %182, %181, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14
  %186 = load i32*, i32** @aarch64_opcode_table, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32* %189, i32** %2, align 8
  br label %190

190:                                              ; preds = %185, %184
  %191 = load i32*, i32** %2, align 8
  ret i32* %191
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
