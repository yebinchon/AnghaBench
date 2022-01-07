; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_find_alias_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_find_alias_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aarch64_opcode_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aarch64_find_alias_opcode(i32* %0) #0 {
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
  switch i32 %13, label %140 [
    i32 2, label %14
    i32 4, label %15
    i32 7, label %16
    i32 10, label %17
    i32 12, label %18
    i32 14, label %19
    i32 17, label %20
    i32 20, label %21
    i32 22, label %22
    i32 24, label %23
    i32 150, label %24
    i32 152, label %25
    i32 154, label %26
    i32 236, label %27
    i32 311, label %28
    i32 382, label %29
    i32 384, label %30
    i32 406, label %31
    i32 408, label %32
    i32 529, label %33
    i32 612, label %34
    i32 619, label %35
    i32 623, label %36
    i32 657, label %37
    i32 660, label %38
    i32 663, label %39
    i32 682, label %40
    i32 707, label %41
    i32 709, label %42
    i32 711, label %43
    i32 713, label %44
    i32 724, label %45
    i32 726, label %46
    i32 728, label %47
    i32 730, label %48
    i32 733, label %49
    i32 735, label %50
    i32 746, label %51
    i32 959, label %52
    i32 961, label %53
    i32 964, label %54
    i32 968, label %55
    i32 971, label %56
    i32 975, label %57
    i32 1006, label %58
    i32 1007, label %59
    i32 1008, label %60
    i32 1010, label %61
    i32 1013, label %62
    i32 1016, label %63
    i32 1018, label %64
    i32 1019, label %65
    i32 1020, label %66
    i32 1022, label %67
    i32 1025, label %68
    i32 1028, label %69
    i32 1030, label %70
    i32 1031, label %71
    i32 1032, label %72
    i32 1034, label %73
    i32 1037, label %74
    i32 1040, label %75
    i32 1042, label %76
    i32 1043, label %77
    i32 1044, label %78
    i32 1046, label %79
    i32 1049, label %80
    i32 1052, label %81
    i32 1054, label %82
    i32 1055, label %83
    i32 1056, label %84
    i32 1058, label %85
    i32 1061, label %86
    i32 1064, label %87
    i32 1066, label %88
    i32 1067, label %89
    i32 1068, label %90
    i32 1070, label %91
    i32 1073, label %92
    i32 1076, label %93
    i32 1078, label %94
    i32 1079, label %95
    i32 1080, label %96
    i32 1082, label %97
    i32 1085, label %98
    i32 1088, label %99
    i32 1090, label %100
    i32 1091, label %101
    i32 1092, label %102
    i32 1094, label %103
    i32 1097, label %104
    i32 1100, label %105
    i32 1150, label %106
    i32 1152, label %107
    i32 1158, label %108
    i32 1174, label %109
    i32 1179, label %110
    i32 1242, label %111
    i32 1244, label %112
    i32 1245, label %113
    i32 1280, label %114
    i32 1283, label %115
    i32 1285, label %116
    i32 1288, label %117
    i32 1310, label %118
    i32 1311, label %119
    i32 1312, label %120
    i32 1324, label %121
    i32 1325, label %122
    i32 1326, label %123
    i32 1327, label %124
    i32 1329, label %125
    i32 1331, label %126
    i32 1332, label %127
    i32 1337, label %128
    i32 1338, label %129
    i32 1351, label %130
    i32 1353, label %131
    i32 1359, label %132
    i32 1382, label %133
    i32 1713, label %134
    i32 1714, label %135
    i32 1716, label %136
    i32 1717, label %137
    i32 1779, label %138
    i32 1780, label %139
  ]

14:                                               ; preds = %1
  store i32 3, i32* %5, align 4
  br label %141

15:                                               ; preds = %1
  store i32 5, i32* %5, align 4
  br label %141

16:                                               ; preds = %1
  store i32 8, i32* %5, align 4
  br label %141

17:                                               ; preds = %1
  store i32 11, i32* %5, align 4
  br label %141

18:                                               ; preds = %1
  store i32 13, i32* %5, align 4
  br label %141

19:                                               ; preds = %1
  store i32 15, i32* %5, align 4
  br label %141

20:                                               ; preds = %1
  store i32 18, i32* %5, align 4
  br label %141

21:                                               ; preds = %1
  store i32 21, i32* %5, align 4
  br label %141

22:                                               ; preds = %1
  store i32 23, i32* %5, align 4
  br label %141

23:                                               ; preds = %1
  store i32 25, i32* %5, align 4
  br label %141

24:                                               ; preds = %1
  store i32 151, i32* %5, align 4
  br label %141

25:                                               ; preds = %1
  store i32 153, i32* %5, align 4
  br label %141

26:                                               ; preds = %1
  store i32 155, i32* %5, align 4
  br label %141

27:                                               ; preds = %1
  store i32 237, i32* %5, align 4
  br label %141

28:                                               ; preds = %1
  store i32 312, i32* %5, align 4
  br label %141

29:                                               ; preds = %1
  store i32 383, i32* %5, align 4
  br label %141

30:                                               ; preds = %1
  store i32 385, i32* %5, align 4
  br label %141

31:                                               ; preds = %1
  store i32 407, i32* %5, align 4
  br label %141

32:                                               ; preds = %1
  store i32 409, i32* %5, align 4
  br label %141

33:                                               ; preds = %1
  store i32 530, i32* %5, align 4
  br label %141

34:                                               ; preds = %1
  store i32 617, i32* %5, align 4
  br label %141

35:                                               ; preds = %1
  store i32 621, i32* %5, align 4
  br label %141

36:                                               ; preds = %1
  store i32 627, i32* %5, align 4
  br label %141

37:                                               ; preds = %1
  store i32 659, i32* %5, align 4
  br label %141

38:                                               ; preds = %1
  store i32 662, i32* %5, align 4
  br label %141

39:                                               ; preds = %1
  store i32 664, i32* %5, align 4
  br label %141

40:                                               ; preds = %1
  store i32 682, i32* %5, align 4
  br label %141

41:                                               ; preds = %1
  store i32 708, i32* %5, align 4
  br label %141

42:                                               ; preds = %1
  store i32 710, i32* %5, align 4
  br label %141

43:                                               ; preds = %1
  store i32 712, i32* %5, align 4
  br label %141

44:                                               ; preds = %1
  store i32 714, i32* %5, align 4
  br label %141

45:                                               ; preds = %1
  store i32 725, i32* %5, align 4
  br label %141

46:                                               ; preds = %1
  store i32 727, i32* %5, align 4
  br label %141

47:                                               ; preds = %1
  store i32 729, i32* %5, align 4
  br label %141

48:                                               ; preds = %1
  store i32 731, i32* %5, align 4
  br label %141

49:                                               ; preds = %1
  store i32 734, i32* %5, align 4
  br label %141

50:                                               ; preds = %1
  store i32 736, i32* %5, align 4
  br label %141

51:                                               ; preds = %1
  store i32 747, i32* %5, align 4
  br label %141

52:                                               ; preds = %1
  store i32 960, i32* %5, align 4
  br label %141

53:                                               ; preds = %1
  store i32 962, i32* %5, align 4
  br label %141

54:                                               ; preds = %1
  store i32 965, i32* %5, align 4
  br label %141

55:                                               ; preds = %1
  store i32 970, i32* %5, align 4
  br label %141

56:                                               ; preds = %1
  store i32 972, i32* %5, align 4
  br label %141

57:                                               ; preds = %1
  store i32 976, i32* %5, align 4
  br label %141

58:                                               ; preds = %1
  store i32 1102, i32* %5, align 4
  br label %141

59:                                               ; preds = %1
  store i32 1103, i32* %5, align 4
  br label %141

60:                                               ; preds = %1
  store i32 1104, i32* %5, align 4
  br label %141

61:                                               ; preds = %1
  store i32 1105, i32* %5, align 4
  br label %141

62:                                               ; preds = %1
  store i32 1106, i32* %5, align 4
  br label %141

63:                                               ; preds = %1
  store i32 1107, i32* %5, align 4
  br label %141

64:                                               ; preds = %1
  store i32 1108, i32* %5, align 4
  br label %141

65:                                               ; preds = %1
  store i32 1109, i32* %5, align 4
  br label %141

66:                                               ; preds = %1
  store i32 1110, i32* %5, align 4
  br label %141

67:                                               ; preds = %1
  store i32 1111, i32* %5, align 4
  br label %141

68:                                               ; preds = %1
  store i32 1112, i32* %5, align 4
  br label %141

69:                                               ; preds = %1
  store i32 1113, i32* %5, align 4
  br label %141

70:                                               ; preds = %1
  store i32 1114, i32* %5, align 4
  br label %141

71:                                               ; preds = %1
  store i32 1115, i32* %5, align 4
  br label %141

72:                                               ; preds = %1
  store i32 1116, i32* %5, align 4
  br label %141

73:                                               ; preds = %1
  store i32 1117, i32* %5, align 4
  br label %141

74:                                               ; preds = %1
  store i32 1118, i32* %5, align 4
  br label %141

75:                                               ; preds = %1
  store i32 1119, i32* %5, align 4
  br label %141

76:                                               ; preds = %1
  store i32 1120, i32* %5, align 4
  br label %141

77:                                               ; preds = %1
  store i32 1121, i32* %5, align 4
  br label %141

78:                                               ; preds = %1
  store i32 1122, i32* %5, align 4
  br label %141

79:                                               ; preds = %1
  store i32 1123, i32* %5, align 4
  br label %141

80:                                               ; preds = %1
  store i32 1124, i32* %5, align 4
  br label %141

81:                                               ; preds = %1
  store i32 1125, i32* %5, align 4
  br label %141

82:                                               ; preds = %1
  store i32 1126, i32* %5, align 4
  br label %141

83:                                               ; preds = %1
  store i32 1127, i32* %5, align 4
  br label %141

84:                                               ; preds = %1
  store i32 1128, i32* %5, align 4
  br label %141

85:                                               ; preds = %1
  store i32 1129, i32* %5, align 4
  br label %141

86:                                               ; preds = %1
  store i32 1130, i32* %5, align 4
  br label %141

87:                                               ; preds = %1
  store i32 1131, i32* %5, align 4
  br label %141

88:                                               ; preds = %1
  store i32 1132, i32* %5, align 4
  br label %141

89:                                               ; preds = %1
  store i32 1133, i32* %5, align 4
  br label %141

90:                                               ; preds = %1
  store i32 1134, i32* %5, align 4
  br label %141

91:                                               ; preds = %1
  store i32 1135, i32* %5, align 4
  br label %141

92:                                               ; preds = %1
  store i32 1136, i32* %5, align 4
  br label %141

93:                                               ; preds = %1
  store i32 1137, i32* %5, align 4
  br label %141

94:                                               ; preds = %1
  store i32 1138, i32* %5, align 4
  br label %141

95:                                               ; preds = %1
  store i32 1139, i32* %5, align 4
  br label %141

96:                                               ; preds = %1
  store i32 1140, i32* %5, align 4
  br label %141

97:                                               ; preds = %1
  store i32 1141, i32* %5, align 4
  br label %141

98:                                               ; preds = %1
  store i32 1142, i32* %5, align 4
  br label %141

99:                                               ; preds = %1
  store i32 1143, i32* %5, align 4
  br label %141

100:                                              ; preds = %1
  store i32 1144, i32* %5, align 4
  br label %141

101:                                              ; preds = %1
  store i32 1145, i32* %5, align 4
  br label %141

102:                                              ; preds = %1
  store i32 1146, i32* %5, align 4
  br label %141

103:                                              ; preds = %1
  store i32 1147, i32* %5, align 4
  br label %141

104:                                              ; preds = %1
  store i32 1148, i32* %5, align 4
  br label %141

105:                                              ; preds = %1
  store i32 1149, i32* %5, align 4
  br label %141

106:                                              ; preds = %1
  store i32 1151, i32* %5, align 4
  br label %141

107:                                              ; preds = %1
  store i32 1153, i32* %5, align 4
  br label %141

108:                                              ; preds = %1
  store i32 1194, i32* %5, align 4
  br label %141

109:                                              ; preds = %1
  store i32 1176, i32* %5, align 4
  br label %141

110:                                              ; preds = %1
  store i32 1183, i32* %5, align 4
  br label %141

111:                                              ; preds = %1
  store i32 1992, i32* %5, align 4
  br label %141

112:                                              ; preds = %1
  store i32 1225, i32* %5, align 4
  br label %141

113:                                              ; preds = %1
  store i32 1229, i32* %5, align 4
  br label %141

114:                                              ; preds = %1
  store i32 1993, i32* %5, align 4
  br label %141

115:                                              ; preds = %1
  store i32 1996, i32* %5, align 4
  br label %141

116:                                              ; preds = %1
  store i32 1994, i32* %5, align 4
  br label %141

117:                                              ; preds = %1
  store i32 1995, i32* %5, align 4
  br label %141

118:                                              ; preds = %1
  store i32 1222, i32* %5, align 4
  br label %141

119:                                              ; preds = %1
  store i32 1224, i32* %5, align 4
  br label %141

120:                                              ; preds = %1
  store i32 2003, i32* %5, align 4
  br label %141

121:                                              ; preds = %1
  store i32 1217, i32* %5, align 4
  br label %141

122:                                              ; preds = %1
  store i32 1219, i32* %5, align 4
  br label %141

123:                                              ; preds = %1
  store i32 2002, i32* %5, align 4
  br label %141

124:                                              ; preds = %1
  store i32 1220, i32* %5, align 4
  br label %141

125:                                              ; preds = %1
  store i32 1997, i32* %5, align 4
  br label %141

126:                                              ; preds = %1
  store i32 1230, i32* %5, align 4
  br label %141

127:                                              ; preds = %1
  store i32 1231, i32* %5, align 4
  br label %141

128:                                              ; preds = %1
  store i32 1998, i32* %5, align 4
  br label %141

129:                                              ; preds = %1
  store i32 1999, i32* %5, align 4
  br label %141

130:                                              ; preds = %1
  store i32 2000, i32* %5, align 4
  br label %141

131:                                              ; preds = %1
  store i32 2001, i32* %5, align 4
  br label %141

132:                                              ; preds = %1
  store i32 1214, i32* %5, align 4
  br label %141

133:                                              ; preds = %1
  store i32 1213, i32* %5, align 4
  br label %141

134:                                              ; preds = %1
  store i32 1215, i32* %5, align 4
  br label %141

135:                                              ; preds = %1
  store i32 2004, i32* %5, align 4
  br label %141

136:                                              ; preds = %1
  store i32 1218, i32* %5, align 4
  br label %141

137:                                              ; preds = %1
  store i32 1228, i32* %5, align 4
  br label %141

138:                                              ; preds = %1
  store i32 1223, i32* %5, align 4
  br label %141

139:                                              ; preds = %1
  store i32 1226, i32* %5, align 4
  br label %141

140:                                              ; preds = %1
  store i32* null, i32** %2, align 8
  br label %146

141:                                              ; preds = %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14
  %142 = load i32*, i32** @aarch64_opcode_table, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32* %145, i32** %2, align 8
  br label %146

146:                                              ; preds = %141, %140
  %147 = load i32*, i32** %2, align 8
  ret i32* %147
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
