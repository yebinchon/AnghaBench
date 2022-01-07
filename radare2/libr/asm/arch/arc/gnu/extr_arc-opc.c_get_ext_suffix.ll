; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_get_ext_suffix.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_get_ext_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_ext_operand_value = type { %struct.arc_ext_operand_value*, %struct.arc_operand_value }
%struct.arc_operand_value = type { i8, i32 }

@arc_ext_operands = common dso_local global %struct.arc_ext_operand_value* null, align 8
@arc_mach_a4 = common dso_local global i64 0, align 8
@CACHEBYPASS5 = common dso_local global i8 0, align 1
@FLAG = common dso_local global i8 0, align 1
@FLAG_AC = common dso_local global i8 0, align 1
@JUMPFLAGS = common dso_local global i8 0, align 1
@ADDRESS9_AC = common dso_local global i8 0, align 1
@COND = common dso_local global i8 0, align 1
@COND_AC = common dso_local global i8 0, align 1
@SIZE7_AC = common dso_local global i8 0, align 1
@ADDRESS24 = common dso_local global i8 0, align 1
@CACHEBYPASS11_AC = common dso_local global i8 0, align 1
@ADDRESS3 = common dso_local global i8 0, align 1
@ADDRESS3_AC = common dso_local global i8 0, align 1
@SIGN0 = common dso_local global i8 0, align 1
@SIGN6_AC = common dso_local global i8 0, align 1
@SIZE22 = common dso_local global i8 0, align 1
@SIZE1 = common dso_local global i8 0, align 1
@SIZE1_AC = common dso_local global i8 0, align 1
@CACHEBYPASS26 = common dso_local global i8 0, align 1
@CACHEBYPASS5_AC = common dso_local global i8 0, align 1
@CACHEBYPASS14 = common dso_local global i8 0, align 1
@ADDRESS22_AC = common dso_local global i8 0, align 1
@SIZE17_AC = common dso_local global i8 0, align 1
@CACHEBYPASS15_AC = common dso_local global i8 0, align 1
@ADDRESS12 = common dso_local global i8 0, align 1
@SIGN9 = common dso_local global i8 0, align 1
@SIGN16_AC = common dso_local global i8 0, align 1
@SIZE10 = common dso_local global i8 0, align 1
@ADDRESS22S_AC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arc_operand_value* @get_ext_suffix(i8* %0, i8 signext %1) #0 {
  %3 = alloca %struct.arc_operand_value*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.arc_ext_operand_value*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** @arc_ext_operands, align 8
  store %struct.arc_ext_operand_value* %8, %struct.arc_ext_operand_value** %6, align 8
  store i8 0, i8* %7, align 1
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %227 [
    i32 101, label %11
    i32 102, label %21
    i32 106, label %33
    i32 112, label %43
    i32 113, label %53
    i32 116, label %65
    i32 118, label %75
    i32 119, label %87
    i32 120, label %99
    i32 121, label %111
    i32 122, label %121
    i32 68, label %133
    i32 69, label %145
    i32 80, label %155
    i32 84, label %165
    i32 86, label %175
    i32 87, label %185
    i32 88, label %195
    i32 90, label %207
    i32 38, label %217
  ]

11:                                               ; preds = %2
  %12 = load i64, i64* @arc_mach_a4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8, i8* @CACHEBYPASS5, align 1
  %16 = sext i8 %15 to i32
  br label %18

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 0, %17 ]
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  br label %239

21:                                               ; preds = %2
  %22 = load i64, i64* @arc_mach_a4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8, i8* @FLAG, align 1
  %26 = sext i8 %25 to i32
  br label %30

27:                                               ; preds = %21
  %28 = load i8, i8* @FLAG_AC, align 1
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  br label %239

33:                                               ; preds = %2
  %34 = load i64, i64* @arc_mach_a4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8, i8* @JUMPFLAGS, align 1
  %38 = sext i8 %37 to i32
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %7, align 1
  br label %239

43:                                               ; preds = %2
  %44 = load i64, i64* @arc_mach_a4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %50

47:                                               ; preds = %43
  %48 = load i8, i8* @ADDRESS9_AC, align 1
  %49 = sext i8 %48 to i32
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 0, %46 ], [ %49, %47 ]
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %7, align 1
  br label %239

53:                                               ; preds = %2
  %54 = load i64, i64* @arc_mach_a4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8, i8* @COND, align 1
  %58 = sext i8 %57 to i32
  br label %62

59:                                               ; preds = %53
  %60 = load i8, i8* @COND_AC, align 1
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %58, %56 ], [ %61, %59 ]
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %7, align 1
  br label %239

65:                                               ; preds = %2
  %66 = load i64, i64* @arc_mach_a4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %72

69:                                               ; preds = %65
  %70 = load i8, i8* @SIZE7_AC, align 1
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %7, align 1
  br label %239

75:                                               ; preds = %2
  %76 = load i64, i64* @arc_mach_a4, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8, i8* @ADDRESS24, align 1
  %80 = sext i8 %79 to i32
  br label %84

81:                                               ; preds = %75
  %82 = load i8, i8* @CACHEBYPASS11_AC, align 1
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i32 [ %80, %78 ], [ %83, %81 ]
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %7, align 1
  br label %239

87:                                               ; preds = %2
  %88 = load i64, i64* @arc_mach_a4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8, i8* @ADDRESS3, align 1
  %92 = sext i8 %91 to i32
  br label %96

93:                                               ; preds = %87
  %94 = load i8, i8* @ADDRESS3_AC, align 1
  %95 = sext i8 %94 to i32
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i32 [ %92, %90 ], [ %95, %93 ]
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %7, align 1
  br label %239

99:                                               ; preds = %2
  %100 = load i64, i64* @arc_mach_a4, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8, i8* @SIGN0, align 1
  %104 = sext i8 %103 to i32
  br label %108

105:                                              ; preds = %99
  %106 = load i8, i8* @SIGN6_AC, align 1
  %107 = sext i8 %106 to i32
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i32 [ %104, %102 ], [ %107, %105 ]
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %7, align 1
  br label %239

111:                                              ; preds = %2
  %112 = load i64, i64* @arc_mach_a4, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i8, i8* @SIZE22, align 1
  %116 = sext i8 %115 to i32
  br label %118

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i32 [ %116, %114 ], [ 0, %117 ]
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %7, align 1
  br label %239

121:                                              ; preds = %2
  %122 = load i64, i64* @arc_mach_a4, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8, i8* @SIZE1, align 1
  %126 = sext i8 %125 to i32
  br label %130

127:                                              ; preds = %121
  %128 = load i8, i8* @SIZE1_AC, align 1
  %129 = sext i8 %128 to i32
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i32 [ %126, %124 ], [ %129, %127 ]
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %7, align 1
  br label %239

133:                                              ; preds = %2
  %134 = load i64, i64* @arc_mach_a4, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8, i8* @CACHEBYPASS26, align 1
  %138 = sext i8 %137 to i32
  br label %142

139:                                              ; preds = %133
  %140 = load i8, i8* @CACHEBYPASS5_AC, align 1
  %141 = sext i8 %140 to i32
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i32 [ %138, %136 ], [ %141, %139 ]
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %7, align 1
  br label %239

145:                                              ; preds = %2
  %146 = load i64, i64* @arc_mach_a4, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8, i8* @CACHEBYPASS14, align 1
  %150 = sext i8 %149 to i32
  br label %152

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %148
  %153 = phi i32 [ %150, %148 ], [ 0, %151 ]
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %7, align 1
  br label %239

155:                                              ; preds = %2
  %156 = load i64, i64* @arc_mach_a4, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %162

159:                                              ; preds = %155
  %160 = load i8, i8* @ADDRESS22_AC, align 1
  %161 = sext i8 %160 to i32
  br label %162

162:                                              ; preds = %159, %158
  %163 = phi i32 [ 0, %158 ], [ %161, %159 ]
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %7, align 1
  br label %239

165:                                              ; preds = %2
  %166 = load i64, i64* @arc_mach_a4, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %172

169:                                              ; preds = %165
  %170 = load i8, i8* @SIZE17_AC, align 1
  %171 = sext i8 %170 to i32
  br label %172

172:                                              ; preds = %169, %168
  %173 = phi i32 [ 0, %168 ], [ %171, %169 ]
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %7, align 1
  br label %239

175:                                              ; preds = %2
  %176 = load i64, i64* @arc_mach_a4, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %182

179:                                              ; preds = %175
  %180 = load i8, i8* @CACHEBYPASS15_AC, align 1
  %181 = sext i8 %180 to i32
  br label %182

182:                                              ; preds = %179, %178
  %183 = phi i32 [ 0, %178 ], [ %181, %179 ]
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %7, align 1
  br label %239

185:                                              ; preds = %2
  %186 = load i64, i64* @arc_mach_a4, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i8, i8* @ADDRESS12, align 1
  %190 = sext i8 %189 to i32
  br label %192

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %191, %188
  %193 = phi i32 [ %190, %188 ], [ 0, %191 ]
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %7, align 1
  br label %239

195:                                              ; preds = %2
  %196 = load i64, i64* @arc_mach_a4, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i8, i8* @SIGN9, align 1
  %200 = sext i8 %199 to i32
  br label %204

201:                                              ; preds = %195
  %202 = load i8, i8* @SIGN16_AC, align 1
  %203 = sext i8 %202 to i32
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i32 [ %200, %198 ], [ %203, %201 ]
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %7, align 1
  br label %239

207:                                              ; preds = %2
  %208 = load i64, i64* @arc_mach_a4, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i8, i8* @SIZE10, align 1
  %212 = sext i8 %211 to i32
  br label %214

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %210
  %215 = phi i32 [ %212, %210 ], [ 0, %213 ]
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %7, align 1
  br label %239

217:                                              ; preds = %2
  %218 = load i64, i64* @arc_mach_a4, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %224

221:                                              ; preds = %217
  %222 = load i8, i8* @ADDRESS22S_AC, align 1
  %223 = sext i8 %222 to i32
  br label %224

224:                                              ; preds = %221, %220
  %225 = phi i32 [ 0, %220 ], [ %223, %221 ]
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %7, align 1
  br label %239

227:                                              ; preds = %2
  %228 = load i64, i64* @arc_mach_a4, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i8, i8* @COND, align 1
  %232 = sext i8 %231 to i32
  br label %236

233:                                              ; preds = %227
  %234 = load i8, i8* @COND_AC, align 1
  %235 = sext i8 %234 to i32
  br label %236

236:                                              ; preds = %233, %230
  %237 = phi i32 [ %232, %230 ], [ %235, %233 ]
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %7, align 1
  br label %239

239:                                              ; preds = %236, %224, %214, %204, %192, %182, %172, %162, %152, %142, %130, %118, %108, %96, %84, %72, %62, %50, %40, %30, %18
  %240 = load i8, i8* %7, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %239
  %244 = load i64, i64* @arc_mach_a4, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i8, i8* @COND, align 1
  %248 = sext i8 %247 to i32
  br label %252

249:                                              ; preds = %243
  %250 = load i8, i8* @COND_AC, align 1
  %251 = sext i8 %250 to i32
  br label %252

252:                                              ; preds = %249, %246
  %253 = phi i32 [ %248, %246 ], [ %251, %249 ]
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %7, align 1
  br label %255

255:                                              ; preds = %252, %239
  br label %256

256:                                              ; preds = %279, %255
  %257 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %258 = icmp ne %struct.arc_ext_operand_value* %257, null
  br i1 %258, label %259, label %283

259:                                              ; preds = %256
  %260 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %261 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %261, i32 0, i32 0
  %263 = load i8, i8* %262, align 8
  %264 = sext i8 %263 to i32
  %265 = load i8, i8* %7, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %264, %266
  br i1 %267, label %268, label %279

268:                                              ; preds = %259
  %269 = load i8*, i8** %4, align 8
  %270 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %271 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @strcmp(i8* %269, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %268
  %277 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %278 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %277, i32 0, i32 1
  store %struct.arc_operand_value* %278, %struct.arc_operand_value** %3, align 8
  br label %284

279:                                              ; preds = %268, %259
  %280 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %6, align 8
  %281 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %280, i32 0, i32 0
  %282 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %281, align 8
  store %struct.arc_ext_operand_value* %282, %struct.arc_ext_operand_value** %6, align 8
  br label %256

283:                                              ; preds = %256
  store %struct.arc_operand_value* null, %struct.arc_operand_value** %3, align 8
  br label %284

284:                                              ; preds = %283, %276
  %285 = load %struct.arc_operand_value*, %struct.arc_operand_value** %3, align 8
  ret %struct.arc_operand_value* %285
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
