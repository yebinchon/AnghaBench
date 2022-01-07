; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot1_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot1_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Slot_xt_flix64_slot1_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Slot_xt_flix64_slot1_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @Field_combined3e2c5767_fld19xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %8)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 78, i32* %2, align 4
  br label %276

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @Field_combined3e2c5767_fld20xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %13)
  switch i32 %14, label %42 [
    i32 0, label %15
    i32 2, label %21
    i32 3, label %27
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %16)
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 90, i32* %2, align 4
  br label %276

20:                                               ; preds = %15
  br label %42

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 39, i32* %2, align 4
  br label %276

26:                                               ; preds = %21
  br label %42

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 40, i32* %2, align 4
  br label %276

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %33)
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @Field_combined3e2c5767_fld16_Slot_xt_flix64_slot1_get(i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 51, i32* %2, align 4
  br label %276

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %12, %41, %26, %20
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @Field_combined3e2c5767_fld21xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %43)
  switch i32 %44, label %67 [
    i32 8, label %45
    i32 16, label %51
    i32 19, label %57
  ]

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %46)
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 111, i32* %2, align 4
  br label %276

50:                                               ; preds = %45
  br label %67

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %52)
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 112, i32* %2, align 4
  br label %276

56:                                               ; preds = %51
  br label %67

57:                                               ; preds = %42
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %58)
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @Field_combined3e2c5767_fld57xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 107, i32* %2, align 4
  br label %276

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %42, %66, %56, %50
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @Field_combined3e2c5767_fld22xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %68)
  switch i32 %69, label %166 [
    i32 18, label %70
    i32 19, label %76
    i32 20, label %82
    i32 21, label %88
    i32 22, label %94
    i32 23, label %100
    i32 24, label %106
    i32 25, label %112
    i32 26, label %118
    i32 27, label %124
    i32 28, label %130
    i32 29, label %136
    i32 30, label %142
    i32 31, label %148
    i32 34, label %154
    i32 36, label %160
  ]

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %71)
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 41, i32* %2, align 4
  br label %276

75:                                               ; preds = %70
  br label %166

76:                                               ; preds = %67
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %77)
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 45, i32* %2, align 4
  br label %276

81:                                               ; preds = %76
  br label %166

82:                                               ; preds = %67
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %83)
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 43, i32* %2, align 4
  br label %276

87:                                               ; preds = %82
  br label %166

88:                                               ; preds = %67
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %89)
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 49, i32* %2, align 4
  br label %276

93:                                               ; preds = %88
  br label %166

94:                                               ; preds = %67
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %95)
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 91, i32* %2, align 4
  br label %276

99:                                               ; preds = %94
  br label %166

100:                                              ; preds = %67
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %101)
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 94, i32* %2, align 4
  br label %276

105:                                              ; preds = %100
  br label %166

106:                                              ; preds = %67
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %107)
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 44, i32* %2, align 4
  br label %276

111:                                              ; preds = %106
  br label %166

112:                                              ; preds = %67
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %113)
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 93, i32* %2, align 4
  br label %276

117:                                              ; preds = %112
  br label %166

118:                                              ; preds = %67
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %119)
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 92, i32* %2, align 4
  br label %276

123:                                              ; preds = %118
  br label %166

124:                                              ; preds = %67
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %125)
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 296, i32* %2, align 4
  br label %276

129:                                              ; preds = %124
  br label %166

130:                                              ; preds = %67
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %131)
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 297, i32* %2, align 4
  br label %276

135:                                              ; preds = %130
  br label %166

136:                                              ; preds = %67
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %137)
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 461, i32* %2, align 4
  br label %276

141:                                              ; preds = %136
  br label %166

142:                                              ; preds = %67
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %143)
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 50, i32* %2, align 4
  br label %276

147:                                              ; preds = %142
  br label %166

148:                                              ; preds = %67
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %149)
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 450, i32* %2, align 4
  br label %276

153:                                              ; preds = %148
  br label %166

154:                                              ; preds = %67
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %155)
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 108, i32* %2, align 4
  br label %276

159:                                              ; preds = %154
  br label %166

160:                                              ; preds = %67
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %161)
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 113, i32* %2, align 4
  br label %276

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %67, %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %75
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @Field_combined3e2c5767_fld23xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %167)
  %169 = icmp eq i32 %168, 280
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %171)
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32, i32* %3, align 4
  %176 = call i64 @Field_combined3e2c5767_fld51xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %175)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 32, i32* %2, align 4
  br label %276

179:                                              ; preds = %174, %170, %166
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @Field_combined3e2c5767_fld25xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %180)
  %182 = icmp eq i32 %181, 281
  br i1 %182, label %183, label %192

183:                                              ; preds = %179
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %184)
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load i32, i32* %3, align 4
  %189 = call i64 @Field_combined3e2c5767_fld52xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 81, i32* %2, align 4
  br label %276

192:                                              ; preds = %187, %183, %179
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @Field_combined3e2c5767_fld26xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %193)
  %195 = icmp eq i32 %194, 141
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %197)
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load i32, i32* %3, align 4
  %202 = call i64 @Field_combined3e2c5767_fld60xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i32 103, i32* %2, align 4
  br label %276

205:                                              ; preds = %200, %196, %192
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @Field_combined3e2c5767_fld28xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %206)
  %208 = icmp eq i32 %207, 71
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %210)
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load i32, i32* %3, align 4
  %215 = call i64 @Field_combined3e2c5767_fld54xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %214)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i32 97, i32* %2, align 4
  br label %276

218:                                              ; preds = %213, %209, %205
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @Field_combined3e2c5767_fld30xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %219)
  %221 = icmp eq i32 %220, 148
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load i32, i32* %3, align 4
  %224 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %223)
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = load i32, i32* %3, align 4
  %228 = call i64 @Field_combined3e2c5767_fld53xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %227)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i32 95, i32* %2, align 4
  br label %276

231:                                              ; preds = %226, %222, %218
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @Field_combined3e2c5767_fld32xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %232)
  %234 = icmp eq i32 %233, 149
  br i1 %234, label %235, label %244

235:                                              ; preds = %231
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %236)
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = load i32, i32* %3, align 4
  %241 = call i64 @Field_combined3e2c5767_fld53xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %240)
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  store i32 110, i32* %2, align 4
  br label %276

244:                                              ; preds = %239, %235, %231
  %245 = load i32, i32* %3, align 4
  %246 = call i32 @Field_combined3e2c5767_fld33xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %245)
  %247 = icmp eq i32 %246, 75
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load i32, i32* %3, align 4
  %250 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %249)
  %251 = icmp eq i32 %250, 2
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load i32, i32* %3, align 4
  %254 = call i64 @Field_combined3e2c5767_fld58xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %253)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store i32 109, i32* %2, align 4
  br label %276

257:                                              ; preds = %252, %248, %244
  %258 = load i32, i32* %3, align 4
  %259 = call i32 @Field_combined3e2c5767_fld35xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %258)
  %260 = icmp eq i32 %259, 5
  br i1 %260, label %261, label %270

261:                                              ; preds = %257
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %262)
  %264 = icmp eq i32 %263, 2
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i32, i32* %3, align 4
  %267 = call i64 @Field_combined3e2c5767_fld62xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32 %266)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 42, i32* %2, align 4
  br label %276

270:                                              ; preds = %265, %261, %257
  %271 = load i32, i32* %3, align 4
  %272 = call i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32 %271)
  %273 = icmp eq i32 %272, 3
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  store i32 80, i32* %2, align 4
  br label %276

275:                                              ; preds = %270
  store i32 0, i32* %2, align 4
  br label %276

276:                                              ; preds = %275, %274, %269, %256, %243, %230, %217, %204, %191, %178, %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %65, %55, %49, %40, %31, %25, %19, %11
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local i64 @Field_combined3e2c5767_fld19xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_op0_s4_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld20xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld16_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld21xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld57xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld22xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld23xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld51xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld25xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld52xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld26xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld60xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld28xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld54xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld30xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld53xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld32xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld33xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld58xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld35xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld62xt_flix64_slot1_Slot_xt_flix64_slot1_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
