; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot0_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot0_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Slot_xt_flix64_slot0_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Slot_xt_flix64_slot0_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @Field_op0_xt_flix64_slot0_Slot_xt_flix64_slot0_get(i32 %4)
  switch i32 %5, label %158 [
    i32 0, label %6
    i32 2, label %144
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @Field_combined3e2c5767_fld7_Slot_xt_flix64_slot0_get(i32 %7)
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 78, i32* %2, align 4
  br label %181

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @Field_op1_Slot_xt_flix64_slot0_get(i32 %12)
  switch i32 %13, label %143 [
    i32 0, label %14
    i32 1, label %87
    i32 2, label %123
    i32 3, label %129
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @Field_op2_Slot_xt_flix64_slot0_get(i32 %15)
  switch i32 %16, label %86 [
    i32 0, label %17
    i32 1, label %33
    i32 2, label %34
    i32 3, label %35
    i32 4, label %36
    i32 6, label %72
    i32 8, label %78
    i32 9, label %79
    i32 10, label %80
    i32 11, label %81
    i32 12, label %82
    i32 13, label %83
    i32 14, label %84
    i32 15, label %85
  ]

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @Field_r_Slot_xt_flix64_slot0_get(i32 %18)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @Field_s_Slot_xt_flix64_slot0_get(i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @Field_t_Slot_xt_flix64_slot0_get(i32 %26)
  %28 = icmp eq i32 %27, 15
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 97, i32* %2, align 4
  br label %181

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %17
  br label %86

33:                                               ; preds = %14
  store i32 49, i32* %2, align 4
  br label %181

34:                                               ; preds = %14
  store i32 50, i32* %2, align 4
  br label %181

35:                                               ; preds = %14
  store i32 51, i32* %2, align 4
  br label %181

36:                                               ; preds = %14
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @Field_r_Slot_xt_flix64_slot0_get(i32 %37)
  switch i32 %38, label %71 [
    i32 0, label %39
    i32 1, label %45
    i32 2, label %51
    i32 3, label %57
    i32 4, label %63
    i32 14, label %69
    i32 15, label %70
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @Field_t_Slot_xt_flix64_slot0_get(i32 %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 102, i32* %2, align 4
  br label %181

44:                                               ; preds = %39
  br label %71

45:                                               ; preds = %36
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @Field_t_Slot_xt_flix64_slot0_get(i32 %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 103, i32* %2, align 4
  br label %181

50:                                               ; preds = %45
  br label %71

51:                                               ; preds = %36
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @Field_t_Slot_xt_flix64_slot0_get(i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 104, i32* %2, align 4
  br label %181

56:                                               ; preds = %51
  br label %71

57:                                               ; preds = %36
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @Field_t_Slot_xt_flix64_slot0_get(i32 %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 105, i32* %2, align 4
  br label %181

62:                                               ; preds = %57
  br label %71

63:                                               ; preds = %36
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @Field_thi3_Slot_xt_flix64_slot0_get(i32 %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 106, i32* %2, align 4
  br label %181

68:                                               ; preds = %63
  br label %71

69:                                               ; preds = %36
  store i32 448, i32* %2, align 4
  br label %181

70:                                               ; preds = %36
  store i32 449, i32* %2, align 4
  br label %181

71:                                               ; preds = %36, %68, %62, %56, %50, %44
  br label %86

72:                                               ; preds = %14
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @Field_s_Slot_xt_flix64_slot0_get(i32 %73)
  switch i32 %74, label %77 [
    i32 0, label %75
    i32 1, label %76
  ]

75:                                               ; preds = %72
  store i32 95, i32* %2, align 4
  br label %181

76:                                               ; preds = %72
  store i32 96, i32* %2, align 4
  br label %181

77:                                               ; preds = %72
  br label %86

78:                                               ; preds = %14
  store i32 41, i32* %2, align 4
  br label %181

79:                                               ; preds = %14
  store i32 43, i32* %2, align 4
  br label %181

80:                                               ; preds = %14
  store i32 44, i32* %2, align 4
  br label %181

81:                                               ; preds = %14
  store i32 45, i32* %2, align 4
  br label %181

82:                                               ; preds = %14
  store i32 42, i32* %2, align 4
  br label %181

83:                                               ; preds = %14
  store i32 46, i32* %2, align 4
  br label %181

84:                                               ; preds = %14
  store i32 47, i32* %2, align 4
  br label %181

85:                                               ; preds = %14
  store i32 48, i32* %2, align 4
  br label %181

86:                                               ; preds = %14, %77, %71, %32
  br label %143

87:                                               ; preds = %11
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @Field_combined3e2c5767_fld11_Slot_xt_flix64_slot0_get(i32 %88)
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 112, i32* %2, align 4
  br label %181

92:                                               ; preds = %87
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @Field_combined3e2c5767_fld9_Slot_xt_flix64_slot0_get(i32 %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 111, i32* %2, align 4
  br label %181

97:                                               ; preds = %92
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @Field_op2_Slot_xt_flix64_slot0_get(i32 %98)
  switch i32 %99, label %122 [
    i32 4, label %100
    i32 8, label %101
    i32 9, label %102
    i32 10, label %108
    i32 11, label %114
    i32 12, label %120
    i32 13, label %121
  ]

100:                                              ; preds = %97
  store i32 113, i32* %2, align 4
  br label %181

101:                                              ; preds = %97
  store i32 108, i32* %2, align 4
  br label %181

102:                                              ; preds = %97
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @Field_s_Slot_xt_flix64_slot0_get(i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 109, i32* %2, align 4
  br label %181

107:                                              ; preds = %102
  br label %122

108:                                              ; preds = %97
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @Field_t_Slot_xt_flix64_slot0_get(i32 %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 107, i32* %2, align 4
  br label %181

113:                                              ; preds = %108
  br label %122

114:                                              ; preds = %97
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @Field_s_Slot_xt_flix64_slot0_get(i32 %115)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 110, i32* %2, align 4
  br label %181

119:                                              ; preds = %114
  br label %122

120:                                              ; preds = %97
  store i32 296, i32* %2, align 4
  br label %181

121:                                              ; preds = %97
  store i32 297, i32* %2, align 4
  br label %181

122:                                              ; preds = %97, %119, %113, %107
  br label %143

123:                                              ; preds = %11
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @Field_op2_Slot_xt_flix64_slot0_get(i32 %124)
  %126 = icmp eq i32 %125, 8
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 461, i32* %2, align 4
  br label %181

128:                                              ; preds = %123
  br label %143

129:                                              ; preds = %11
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @Field_op2_Slot_xt_flix64_slot0_get(i32 %130)
  switch i32 %131, label %142 [
    i32 2, label %132
    i32 3, label %133
    i32 4, label %134
    i32 5, label %135
    i32 6, label %136
    i32 7, label %137
    i32 8, label %138
    i32 9, label %139
    i32 10, label %140
    i32 11, label %141
  ]

132:                                              ; preds = %129
  store i32 450, i32* %2, align 4
  br label %181

133:                                              ; preds = %129
  store i32 443, i32* %2, align 4
  br label %181

134:                                              ; preds = %129
  store i32 444, i32* %2, align 4
  br label %181

135:                                              ; preds = %129
  store i32 445, i32* %2, align 4
  br label %181

136:                                              ; preds = %129
  store i32 446, i32* %2, align 4
  br label %181

137:                                              ; preds = %129
  store i32 447, i32* %2, align 4
  br label %181

138:                                              ; preds = %129
  store i32 91, i32* %2, align 4
  br label %181

139:                                              ; preds = %129
  store i32 92, i32* %2, align 4
  br label %181

140:                                              ; preds = %129
  store i32 93, i32* %2, align 4
  br label %181

141:                                              ; preds = %129
  store i32 94, i32* %2, align 4
  br label %181

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %11, %142, %128, %122, %86
  br label %158

144:                                              ; preds = %1
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @Field_r_Slot_xt_flix64_slot0_get(i32 %145)
  switch i32 %146, label %157 [
    i32 0, label %147
    i32 1, label %148
    i32 2, label %149
    i32 4, label %150
    i32 5, label %151
    i32 6, label %152
    i32 9, label %153
    i32 10, label %154
    i32 12, label %155
    i32 13, label %156
  ]

147:                                              ; preds = %144
  store i32 86, i32* %2, align 4
  br label %181

148:                                              ; preds = %144
  store i32 82, i32* %2, align 4
  br label %181

149:                                              ; preds = %144
  store i32 84, i32* %2, align 4
  br label %181

150:                                              ; preds = %144
  store i32 101, i32* %2, align 4
  br label %181

151:                                              ; preds = %144
  store i32 99, i32* %2, align 4
  br label %181

152:                                              ; preds = %144
  store i32 100, i32* %2, align 4
  br label %181

153:                                              ; preds = %144
  store i32 83, i32* %2, align 4
  br label %181

154:                                              ; preds = %144
  store i32 90, i32* %2, align 4
  br label %181

155:                                              ; preds = %144
  store i32 39, i32* %2, align 4
  br label %181

156:                                              ; preds = %144
  store i32 40, i32* %2, align 4
  br label %181

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %1, %157, %143
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @Field_op0_xt_flix64_slot0_s3_Slot_xt_flix64_slot0_get(i32 %159)
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 85, i32* %2, align 4
  br label %181

163:                                              ; preds = %158
  %164 = load i32, i32* %3, align 4
  %165 = call i64 @Field_sae4_Slot_xt_flix64_slot0_get(i32 %164)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %163
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @Field_combined3e2c5767_fld8_Slot_xt_flix64_slot0_get(i32 %168)
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @Field_op0_xt_flix64_slot0_s3_Slot_xt_flix64_slot0_get(i32 %172)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32, i32* %3, align 4
  %177 = call i64 @Field_combined3e2c5767_fld49xt_flix64_slot0_Slot_xt_flix64_slot0_get(i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 32, i32* %2, align 4
  br label %181

180:                                              ; preds = %175, %171, %167, %163
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %179, %162, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %127, %121, %120, %118, %112, %106, %101, %100, %96, %91, %85, %84, %83, %82, %81, %80, %79, %78, %76, %75, %70, %69, %67, %61, %55, %49, %43, %35, %34, %33, %29, %10
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @Field_op0_xt_flix64_slot0_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld7_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_op1_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_op2_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_r_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_s_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_t_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_thi3_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld11_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld9_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_op0_xt_flix64_slot0_s3_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i64 @Field_sae4_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld8_Slot_xt_flix64_slot0_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld49xt_flix64_slot0_Slot_xt_flix64_slot0_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
