; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_find_next_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_find_next_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aarch64_opcode_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aarch64_find_next_opcode(i32* %0) #0 {
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
  switch i32 %13, label %249 [
    i32 941, label %14
    i32 945, label %15
    i32 939, label %16
    i32 940, label %17
    i32 942, label %18
    i32 946, label %19
    i32 1584, label %20
    i32 1585, label %21
    i32 1640, label %22
    i32 1641, label %23
    i32 1588, label %24
    i32 1589, label %25
    i32 1607, label %26
    i32 1608, label %27
    i32 1586, label %28
    i32 1587, label %29
    i32 1605, label %30
    i32 1606, label %31
    i32 1590, label %32
    i32 1591, label %33
    i32 1609, label %34
    i32 1610, label %35
    i32 1630, label %36
    i32 1631, label %37
    i32 1618, label %38
    i32 1619, label %39
    i32 1649, label %40
    i32 1650, label %41
    i32 1622, label %42
    i32 1623, label %43
    i32 1632, label %44
    i32 1633, label %45
    i32 1620, label %46
    i32 1621, label %47
    i32 1651, label %48
    i32 1652, label %49
    i32 1596, label %50
    i32 1597, label %51
    i32 1157, label %52
    i32 1158, label %53
    i32 1173, label %54
    i32 1174, label %55
    i32 1177, label %56
    i32 1178, label %57
    i32 1179, label %58
    i32 1184, label %59
    i32 2042, label %60
    i32 1185, label %61
    i32 1186, label %62
    i32 434, label %63
    i32 435, label %64
    i32 436, label %65
    i32 437, label %66
    i32 442, label %67
    i32 443, label %68
    i32 444, label %69
    i32 445, label %70
    i32 438, label %71
    i32 439, label %72
    i32 440, label %73
    i32 441, label %74
    i32 454, label %75
    i32 456, label %76
    i32 458, label %77
    i32 460, label %78
    i32 455, label %79
    i32 457, label %80
    i32 459, label %81
    i32 461, label %82
    i32 446, label %83
    i32 447, label %84
    i32 448, label %85
    i32 449, label %86
    i32 466, label %87
    i32 468, label %88
    i32 467, label %89
    i32 469, label %90
    i32 470, label %91
    i32 472, label %92
    i32 471, label %93
    i32 473, label %94
    i32 752, label %95
    i32 753, label %96
    i32 748, label %97
    i32 749, label %98
    i32 754, label %99
    i32 755, label %100
    i32 750, label %101
    i32 751, label %102
    i32 756, label %103
    i32 757, label %104
    i32 776, label %105
    i32 777, label %106
    i32 772, label %107
    i32 773, label %108
    i32 780, label %109
    i32 781, label %110
    i32 764, label %111
    i32 765, label %112
    i32 760, label %113
    i32 761, label %114
    i32 768, label %115
    i32 769, label %116
    i32 758, label %117
    i32 759, label %118
    i32 778, label %119
    i32 779, label %120
    i32 774, label %121
    i32 775, label %122
    i32 782, label %123
    i32 783, label %124
    i32 766, label %125
    i32 767, label %126
    i32 762, label %127
    i32 763, label %128
    i32 770, label %129
    i32 771, label %130
    i32 799, label %131
    i32 800, label %132
    i32 808, label %133
    i32 809, label %134
    i32 803, label %135
    i32 804, label %136
    i32 812, label %137
    i32 813, label %138
    i32 801, label %139
    i32 802, label %140
    i32 810, label %141
    i32 811, label %142
    i32 805, label %143
    i32 806, label %144
    i32 814, label %145
    i32 815, label %146
    i32 816, label %147
    i32 817, label %148
    i32 818, label %149
    i32 819, label %150
    i32 820, label %151
    i32 821, label %152
    i32 791, label %153
    i32 792, label %154
    i32 793, label %155
    i32 794, label %156
    i32 795, label %157
    i32 796, label %158
    i32 797, label %159
    i32 798, label %160
    i32 848, label %161
    i32 849, label %162
    i32 822, label %163
    i32 823, label %164
    i32 838, label %165
    i32 839, label %166
    i32 830, label %167
    i32 831, label %168
    i32 826, label %169
    i32 827, label %170
    i32 834, label %171
    i32 835, label %172
    i32 824, label %173
    i32 825, label %174
    i32 832, label %175
    i32 833, label %176
    i32 828, label %177
    i32 829, label %178
    i32 836, label %179
    i32 837, label %180
    i32 787, label %181
    i32 788, label %182
    i32 789, label %183
    i32 790, label %184
    i32 850, label %185
    i32 851, label %186
    i32 131, label %187
    i32 368, label %188
    i32 370, label %189
    i32 139, label %190
    i32 390, label %191
    i32 392, label %192
    i32 394, label %193
    i32 396, label %194
    i32 132, label %195
    i32 369, label %196
    i32 371, label %197
    i32 372, label %198
    i32 373, label %199
    i32 140, label %200
    i32 391, label %201
    i32 393, label %202
    i32 395, label %203
    i32 397, label %204
    i32 840, label %205
    i32 841, label %206
    i32 844, label %207
    i32 845, label %208
    i32 133, label %209
    i32 374, label %210
    i32 375, label %211
    i32 382, label %212
    i32 384, label %213
    i32 141, label %214
    i32 398, label %215
    i32 399, label %216
    i32 406, label %217
    i32 408, label %218
    i32 134, label %219
    i32 378, label %220
    i32 379, label %221
    i32 142, label %222
    i32 402, label %223
    i32 403, label %224
    i32 136, label %225
    i32 386, label %226
    i32 387, label %227
    i32 144, label %228
    i32 145, label %229
    i32 410, label %230
    i32 411, label %231
    i32 138, label %232
    i32 388, label %233
    i32 389, label %234
    i32 412, label %235
    i32 413, label %236
    i32 842, label %237
    i32 843, label %238
    i32 846, label %239
    i32 847, label %240
    i32 592, label %241
    i32 593, label %242
    i32 594, label %243
    i32 595, label %244
    i32 608, label %245
    i32 609, label %246
    i32 610, label %247
    i32 611, label %248
  ]

14:                                               ; preds = %1
  store i32 945, i32* %5, align 4
  br label %250

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

16:                                               ; preds = %1
  store i32 940, i32* %5, align 4
  br label %250

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

18:                                               ; preds = %1
  store i32 946, i32* %5, align 4
  br label %250

19:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

20:                                               ; preds = %1
  store i32 1585, i32* %5, align 4
  br label %250

21:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

22:                                               ; preds = %1
  store i32 1641, i32* %5, align 4
  br label %250

23:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

24:                                               ; preds = %1
  store i32 1589, i32* %5, align 4
  br label %250

25:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

26:                                               ; preds = %1
  store i32 1608, i32* %5, align 4
  br label %250

27:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

28:                                               ; preds = %1
  store i32 1587, i32* %5, align 4
  br label %250

29:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

30:                                               ; preds = %1
  store i32 1606, i32* %5, align 4
  br label %250

31:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

32:                                               ; preds = %1
  store i32 1591, i32* %5, align 4
  br label %250

33:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

34:                                               ; preds = %1
  store i32 1610, i32* %5, align 4
  br label %250

35:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

36:                                               ; preds = %1
  store i32 1631, i32* %5, align 4
  br label %250

37:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

38:                                               ; preds = %1
  store i32 1619, i32* %5, align 4
  br label %250

39:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

40:                                               ; preds = %1
  store i32 1650, i32* %5, align 4
  br label %250

41:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

42:                                               ; preds = %1
  store i32 1623, i32* %5, align 4
  br label %250

43:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

44:                                               ; preds = %1
  store i32 1633, i32* %5, align 4
  br label %250

45:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

46:                                               ; preds = %1
  store i32 1621, i32* %5, align 4
  br label %250

47:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

48:                                               ; preds = %1
  store i32 1652, i32* %5, align 4
  br label %250

49:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

50:                                               ; preds = %1
  store i32 1597, i32* %5, align 4
  br label %250

51:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

52:                                               ; preds = %1
  store i32 1158, i32* %5, align 4
  br label %250

53:                                               ; preds = %1
  store i32 1173, i32* %5, align 4
  br label %250

54:                                               ; preds = %1
  store i32 1174, i32* %5, align 4
  br label %250

55:                                               ; preds = %1
  store i32 1177, i32* %5, align 4
  br label %250

56:                                               ; preds = %1
  store i32 1178, i32* %5, align 4
  br label %250

57:                                               ; preds = %1
  store i32 1179, i32* %5, align 4
  br label %250

58:                                               ; preds = %1
  store i32 1184, i32* %5, align 4
  br label %250

59:                                               ; preds = %1
  store i32 2042, i32* %5, align 4
  br label %250

60:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

61:                                               ; preds = %1
  store i32 1186, i32* %5, align 4
  br label %250

62:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

63:                                               ; preds = %1
  store i32 435, i32* %5, align 4
  br label %250

64:                                               ; preds = %1
  store i32 436, i32* %5, align 4
  br label %250

65:                                               ; preds = %1
  store i32 437, i32* %5, align 4
  br label %250

66:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

67:                                               ; preds = %1
  store i32 443, i32* %5, align 4
  br label %250

68:                                               ; preds = %1
  store i32 444, i32* %5, align 4
  br label %250

69:                                               ; preds = %1
  store i32 445, i32* %5, align 4
  br label %250

70:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

71:                                               ; preds = %1
  store i32 439, i32* %5, align 4
  br label %250

72:                                               ; preds = %1
  store i32 440, i32* %5, align 4
  br label %250

73:                                               ; preds = %1
  store i32 441, i32* %5, align 4
  br label %250

74:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

75:                                               ; preds = %1
  store i32 456, i32* %5, align 4
  br label %250

76:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

77:                                               ; preds = %1
  store i32 460, i32* %5, align 4
  br label %250

78:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

79:                                               ; preds = %1
  store i32 457, i32* %5, align 4
  br label %250

80:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

81:                                               ; preds = %1
  store i32 461, i32* %5, align 4
  br label %250

82:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

83:                                               ; preds = %1
  store i32 447, i32* %5, align 4
  br label %250

84:                                               ; preds = %1
  store i32 448, i32* %5, align 4
  br label %250

85:                                               ; preds = %1
  store i32 449, i32* %5, align 4
  br label %250

86:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

87:                                               ; preds = %1
  store i32 468, i32* %5, align 4
  br label %250

88:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

89:                                               ; preds = %1
  store i32 469, i32* %5, align 4
  br label %250

90:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

91:                                               ; preds = %1
  store i32 472, i32* %5, align 4
  br label %250

92:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

93:                                               ; preds = %1
  store i32 473, i32* %5, align 4
  br label %250

94:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

95:                                               ; preds = %1
  store i32 753, i32* %5, align 4
  br label %250

96:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

97:                                               ; preds = %1
  store i32 749, i32* %5, align 4
  br label %250

98:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

99:                                               ; preds = %1
  store i32 755, i32* %5, align 4
  br label %250

100:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

101:                                              ; preds = %1
  store i32 751, i32* %5, align 4
  br label %250

102:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

103:                                              ; preds = %1
  store i32 757, i32* %5, align 4
  br label %250

104:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

105:                                              ; preds = %1
  store i32 777, i32* %5, align 4
  br label %250

106:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

107:                                              ; preds = %1
  store i32 773, i32* %5, align 4
  br label %250

108:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

109:                                              ; preds = %1
  store i32 781, i32* %5, align 4
  br label %250

110:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

111:                                              ; preds = %1
  store i32 765, i32* %5, align 4
  br label %250

112:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

113:                                              ; preds = %1
  store i32 761, i32* %5, align 4
  br label %250

114:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

115:                                              ; preds = %1
  store i32 769, i32* %5, align 4
  br label %250

116:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

117:                                              ; preds = %1
  store i32 759, i32* %5, align 4
  br label %250

118:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

119:                                              ; preds = %1
  store i32 779, i32* %5, align 4
  br label %250

120:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

121:                                              ; preds = %1
  store i32 775, i32* %5, align 4
  br label %250

122:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

123:                                              ; preds = %1
  store i32 783, i32* %5, align 4
  br label %250

124:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

125:                                              ; preds = %1
  store i32 767, i32* %5, align 4
  br label %250

126:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

127:                                              ; preds = %1
  store i32 763, i32* %5, align 4
  br label %250

128:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

129:                                              ; preds = %1
  store i32 771, i32* %5, align 4
  br label %250

130:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

131:                                              ; preds = %1
  store i32 800, i32* %5, align 4
  br label %250

132:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

133:                                              ; preds = %1
  store i32 809, i32* %5, align 4
  br label %250

134:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

135:                                              ; preds = %1
  store i32 804, i32* %5, align 4
  br label %250

136:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

137:                                              ; preds = %1
  store i32 813, i32* %5, align 4
  br label %250

138:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

139:                                              ; preds = %1
  store i32 802, i32* %5, align 4
  br label %250

140:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

141:                                              ; preds = %1
  store i32 811, i32* %5, align 4
  br label %250

142:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

143:                                              ; preds = %1
  store i32 806, i32* %5, align 4
  br label %250

144:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

145:                                              ; preds = %1
  store i32 815, i32* %5, align 4
  br label %250

146:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

147:                                              ; preds = %1
  store i32 817, i32* %5, align 4
  br label %250

148:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

149:                                              ; preds = %1
  store i32 819, i32* %5, align 4
  br label %250

150:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

151:                                              ; preds = %1
  store i32 821, i32* %5, align 4
  br label %250

152:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

153:                                              ; preds = %1
  store i32 792, i32* %5, align 4
  br label %250

154:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

155:                                              ; preds = %1
  store i32 794, i32* %5, align 4
  br label %250

156:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

157:                                              ; preds = %1
  store i32 796, i32* %5, align 4
  br label %250

158:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

159:                                              ; preds = %1
  store i32 798, i32* %5, align 4
  br label %250

160:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

161:                                              ; preds = %1
  store i32 849, i32* %5, align 4
  br label %250

162:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

163:                                              ; preds = %1
  store i32 823, i32* %5, align 4
  br label %250

164:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

165:                                              ; preds = %1
  store i32 839, i32* %5, align 4
  br label %250

166:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

167:                                              ; preds = %1
  store i32 831, i32* %5, align 4
  br label %250

168:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

169:                                              ; preds = %1
  store i32 827, i32* %5, align 4
  br label %250

170:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

171:                                              ; preds = %1
  store i32 835, i32* %5, align 4
  br label %250

172:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

173:                                              ; preds = %1
  store i32 825, i32* %5, align 4
  br label %250

174:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

175:                                              ; preds = %1
  store i32 833, i32* %5, align 4
  br label %250

176:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

177:                                              ; preds = %1
  store i32 829, i32* %5, align 4
  br label %250

178:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

179:                                              ; preds = %1
  store i32 837, i32* %5, align 4
  br label %250

180:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

181:                                              ; preds = %1
  store i32 788, i32* %5, align 4
  br label %250

182:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

183:                                              ; preds = %1
  store i32 790, i32* %5, align 4
  br label %250

184:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

185:                                              ; preds = %1
  store i32 851, i32* %5, align 4
  br label %250

186:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

187:                                              ; preds = %1
  store i32 368, i32* %5, align 4
  br label %250

188:                                              ; preds = %1
  store i32 370, i32* %5, align 4
  br label %250

189:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

190:                                              ; preds = %1
  store i32 390, i32* %5, align 4
  br label %250

191:                                              ; preds = %1
  store i32 392, i32* %5, align 4
  br label %250

192:                                              ; preds = %1
  store i32 394, i32* %5, align 4
  br label %250

193:                                              ; preds = %1
  store i32 396, i32* %5, align 4
  br label %250

194:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

195:                                              ; preds = %1
  store i32 369, i32* %5, align 4
  br label %250

196:                                              ; preds = %1
  store i32 371, i32* %5, align 4
  br label %250

197:                                              ; preds = %1
  store i32 372, i32* %5, align 4
  br label %250

198:                                              ; preds = %1
  store i32 373, i32* %5, align 4
  br label %250

199:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

200:                                              ; preds = %1
  store i32 391, i32* %5, align 4
  br label %250

201:                                              ; preds = %1
  store i32 393, i32* %5, align 4
  br label %250

202:                                              ; preds = %1
  store i32 395, i32* %5, align 4
  br label %250

203:                                              ; preds = %1
  store i32 397, i32* %5, align 4
  br label %250

204:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

205:                                              ; preds = %1
  store i32 841, i32* %5, align 4
  br label %250

206:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

207:                                              ; preds = %1
  store i32 845, i32* %5, align 4
  br label %250

208:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

209:                                              ; preds = %1
  store i32 374, i32* %5, align 4
  br label %250

210:                                              ; preds = %1
  store i32 375, i32* %5, align 4
  br label %250

211:                                              ; preds = %1
  store i32 382, i32* %5, align 4
  br label %250

212:                                              ; preds = %1
  store i32 384, i32* %5, align 4
  br label %250

213:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

214:                                              ; preds = %1
  store i32 398, i32* %5, align 4
  br label %250

215:                                              ; preds = %1
  store i32 399, i32* %5, align 4
  br label %250

216:                                              ; preds = %1
  store i32 406, i32* %5, align 4
  br label %250

217:                                              ; preds = %1
  store i32 408, i32* %5, align 4
  br label %250

218:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

219:                                              ; preds = %1
  store i32 378, i32* %5, align 4
  br label %250

220:                                              ; preds = %1
  store i32 379, i32* %5, align 4
  br label %250

221:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

222:                                              ; preds = %1
  store i32 402, i32* %5, align 4
  br label %250

223:                                              ; preds = %1
  store i32 403, i32* %5, align 4
  br label %250

224:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

225:                                              ; preds = %1
  store i32 386, i32* %5, align 4
  br label %250

226:                                              ; preds = %1
  store i32 387, i32* %5, align 4
  br label %250

227:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

228:                                              ; preds = %1
  store i32 145, i32* %5, align 4
  br label %250

229:                                              ; preds = %1
  store i32 410, i32* %5, align 4
  br label %250

230:                                              ; preds = %1
  store i32 411, i32* %5, align 4
  br label %250

231:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

232:                                              ; preds = %1
  store i32 388, i32* %5, align 4
  br label %250

233:                                              ; preds = %1
  store i32 389, i32* %5, align 4
  br label %250

234:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

235:                                              ; preds = %1
  store i32 413, i32* %5, align 4
  br label %250

236:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

237:                                              ; preds = %1
  store i32 843, i32* %5, align 4
  br label %250

238:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

239:                                              ; preds = %1
  store i32 847, i32* %5, align 4
  br label %250

240:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

241:                                              ; preds = %1
  store i32 593, i32* %5, align 4
  br label %250

242:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

243:                                              ; preds = %1
  store i32 595, i32* %5, align 4
  br label %250

244:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

245:                                              ; preds = %1
  store i32 609, i32* %5, align 4
  br label %250

246:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

247:                                              ; preds = %1
  store i32 611, i32* %5, align 4
  br label %250

248:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

249:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %255

250:                                              ; preds = %247, %245, %243, %241, %239, %237, %235, %233, %232, %230, %229, %228, %226, %225, %223, %222, %220, %219, %217, %216, %215, %214, %212, %211, %210, %209, %207, %205, %203, %202, %201, %200, %198, %197, %196, %195, %193, %192, %191, %190, %188, %187, %185, %183, %181, %179, %177, %175, %173, %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %84, %83, %81, %79, %77, %75, %73, %72, %71, %69, %68, %67, %65, %64, %63, %61, %59, %58, %57, %56, %55, %54, %53, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14
  %251 = load i32*, i32** @aarch64_opcode_table, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32* %254, i32** %2, align 8
  br label %255

255:                                              ; preds = %250, %249, %248, %246, %244, %242, %240, %238, %236, %234, %231, %227, %224, %221, %218, %213, %208, %206, %204, %199, %194, %189, %186, %184, %182, %180, %178, %176, %174, %172, %170, %168, %166, %164, %162, %160, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %82, %80, %78, %76, %74, %70, %66, %62, %60, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15
  %256 = load i32*, i32** %2, align 8
  ret i32* %256
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
