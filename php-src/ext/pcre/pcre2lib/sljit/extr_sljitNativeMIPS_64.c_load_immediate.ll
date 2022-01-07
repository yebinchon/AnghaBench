; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_64.c_load_immediate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_64.c_load_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@ORI = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@ADDIU = common dso_local global i32 0, align 4
@LUI = common dso_local global i32 0, align 4
@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@DSLL32 = common dso_local global i32 0, align 4
@DSLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i32)* @load_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_immediate(%struct.sljit_compiler* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sljit_compiler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 32, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, -65536
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %18 = load i32, i32* @ORI, align 4
  %19 = call i32 @SA(i32 0)
  %20 = or i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TA(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @IMM(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @push_inst(%struct.sljit_compiler* %17, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %377

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SIMM_MIN, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %38 = load i32, i32* @ADDIU, align 4
  %39 = call i32 @SA(i32 0)
  %40 = or i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @TA(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @IMM(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @push_inst(%struct.sljit_compiler* %37, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %377

49:                                               ; preds = %32, %29
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp sle i64 %51, 2147483647
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp sge i64 %55, -2147483648
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %59 = load i32, i32* @LUI, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @TA(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 16
  %65 = call i32 @IMM(i32 %64)
  %66 = or i32 %62, %65
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @push_inst(%struct.sljit_compiler* %58, i32 %66, i32 %67)
  %69 = call i32 @FAIL_IF(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 65535
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %57
  %74 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %75 = load i32, i32* @ORI, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @SA(i32 %76)
  %78 = or i32 %75, %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @TA(i32 %79)
  %81 = or i32 %78, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @IMM(i32 %82)
  %84 = or i32 %81, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @push_inst(%struct.sljit_compiler* %74, i32 %84, i32 %85)
  br label %89

87:                                               ; preds = %57
  %88 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %89

89:                                               ; preds = %87, %73
  %90 = phi i32 [ %86, %73 ], [ %88, %87 ]
  store i32 %90, i32* %4, align 4
  br label %377

91:                                               ; preds = %53, %49
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = xor i32 %96, -1
  store i32 %97, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %91
  br label %99

99:                                               ; preds = %105, %98
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, -72057594037927936
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 8
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %12, align 4
  %109 = shl i32 %108, 8
  store i32 %109, i32* %12, align 4
  br label %99

110:                                              ; preds = %99
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %112, -1152921504606846976
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = sub nsw i32 %116, 4
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %12, align 4
  %119 = shl i32 %118, 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = and i64 %122, -4611686018427387904
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 %126, 2
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %12, align 4
  %129 = shl i32 %128, 2
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = ashr i32 %134, 1
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = and i64 %140, -4611686018427387904
  %142 = icmp eq i64 %141, 4611686018427387904
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = icmp sle i32 %147, 32
  br label %149

149:                                              ; preds = %146, %143, %138
  %150 = phi i1 [ false, %143 ], [ false, %138 ], [ %148, %146 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @SLJIT_ASSERT(i32 %151)
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* %12, align 4
  %157 = xor i32 %156, -1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %155, %149
  %159 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %160 = load i32, i32* @LUI, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @TA(i32 %161)
  %163 = or i32 %160, %162
  %164 = load i32, i32* %12, align 4
  %165 = ashr i32 %164, 48
  %166 = call i32 @IMM(i32 %165)
  %167 = or i32 %163, %166
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @push_inst(%struct.sljit_compiler* %159, i32 %167, i32 %168)
  %170 = call i32 @FAIL_IF(i32 %169)
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = and i64 %172, 281470681743360
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %158
  %176 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %177 = load i32, i32* @ORI, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @SA(i32 %178)
  %180 = or i32 %177, %179
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @TA(i32 %181)
  %183 = or i32 %180, %182
  %184 = load i32, i32* %12, align 4
  %185 = ashr i32 %184, 32
  %186 = call i32 @IMM(i32 %185)
  %187 = or i32 %183, %186
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @push_inst(%struct.sljit_compiler* %176, i32 %187, i32 %188)
  %190 = call i32 @FAIL_IF(i32 %189)
  br label %191

191:                                              ; preds = %175, %158
  %192 = load i32, i32* %8, align 4
  %193 = zext i32 %192 to i64
  %194 = shl i64 1, %193
  %195 = sub nsw i64 %194, 1
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = and i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = and i32 %200, -65536
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %252, label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %8, align 4
  %205 = icmp eq i32 %204, 32
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* @DSLL32, align 4
  br label %210

208:                                              ; preds = %203
  %209 = load i32, i32* @DSLL, align 4
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %212, 32
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @SH_IMM(i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %11, align 4
  br label %219

219:                                              ; preds = %214, %210
  %220 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @TA(i32 %222)
  %224 = or i32 %221, %223
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @DA(i32 %225)
  %227 = or i32 %224, %226
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @push_inst(%struct.sljit_compiler* %220, i32 %227, i32 %228)
  %230 = call i32 @FAIL_IF(i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = and i32 %231, 65535
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %219
  %235 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %250

236:                                              ; preds = %219
  %237 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %238 = load i32, i32* @ORI, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @SA(i32 %239)
  %241 = or i32 %238, %240
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @TA(i32 %242)
  %244 = or i32 %241, %243
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @IMM(i32 %245)
  %247 = or i32 %244, %246
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @push_inst(%struct.sljit_compiler* %237, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %236, %234
  %251 = phi i32 [ %235, %234 ], [ %249, %236 ]
  store i32 %251, i32* %4, align 4
  br label %377

252:                                              ; preds = %191
  %253 = load i32, i32* %12, align 4
  %254 = shl i32 %253, 32
  store i32 %254, i32* %12, align 4
  %255 = load i32, i32* %8, align 4
  %256 = sub nsw i32 %255, 16
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %263, %252
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = and i64 %259, -1152921504606846976
  %261 = icmp ne i64 %260, 0
  %262 = xor i1 %261, true
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load i32, i32* %9, align 4
  %265 = sub nsw i32 %264, 4
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %12, align 4
  %267 = shl i32 %266, 4
  store i32 %267, i32* %12, align 4
  br label %257

268:                                              ; preds = %257
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = and i64 %270, -4611686018427387904
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %268
  %274 = load i32, i32* %9, align 4
  %275 = sub nsw i32 %274, 2
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %12, align 4
  %277 = shl i32 %276, 2
  store i32 %277, i32* %12, align 4
  br label %278

278:                                              ; preds = %273, %268
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = and i64 %280, -9223372036854775808
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %278
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %9, align 4
  %286 = load i32, i32* %12, align 4
  %287 = shl i32 %286, 1
  store i32 %287, i32* %12, align 4
  br label %288

288:                                              ; preds = %283, %278
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = and i64 %290, -9223372036854775808
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = load i32, i32* %9, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i32, i32* %9, align 4
  %298 = icmp sle i32 %297, 16
  br label %299

299:                                              ; preds = %296, %293, %288
  %300 = phi i1 [ false, %293 ], [ false, %288 ], [ %298, %296 ]
  %301 = zext i1 %300 to i32
  %302 = call i32 @SLJIT_ASSERT(i32 %301)
  %303 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %304 = load i32, i32* @DSLL, align 4
  %305 = load i32, i32* %6, align 4
  %306 = call i32 @TA(i32 %305)
  %307 = or i32 %304, %306
  %308 = load i32, i32* %6, align 4
  %309 = call i32 @DA(i32 %308)
  %310 = or i32 %307, %309
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %9, align 4
  %313 = sub nsw i32 %311, %312
  %314 = call i32 @SH_IMM(i32 %313)
  %315 = or i32 %310, %314
  %316 = load i32, i32* %6, align 4
  %317 = call i32 @push_inst(%struct.sljit_compiler* %303, i32 %315, i32 %316)
  %318 = call i32 @FAIL_IF(i32 %317)
  %319 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %320 = load i32, i32* @ORI, align 4
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @SA(i32 %321)
  %323 = or i32 %320, %322
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @TA(i32 %324)
  %326 = or i32 %323, %325
  %327 = load i32, i32* %12, align 4
  %328 = ashr i32 %327, 48
  %329 = call i32 @IMM(i32 %328)
  %330 = or i32 %326, %329
  %331 = load i32, i32* %6, align 4
  %332 = call i32 @push_inst(%struct.sljit_compiler* %319, i32 %330, i32 %331)
  %333 = call i32 @FAIL_IF(i32 %332)
  %334 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %335 = load i32, i32* @DSLL, align 4
  %336 = load i32, i32* %6, align 4
  %337 = call i32 @TA(i32 %336)
  %338 = or i32 %335, %337
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @DA(i32 %339)
  %341 = or i32 %338, %340
  %342 = load i32, i32* %9, align 4
  %343 = call i32 @SH_IMM(i32 %342)
  %344 = or i32 %341, %343
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @push_inst(%struct.sljit_compiler* %334, i32 %344, i32 %345)
  %347 = call i32 @FAIL_IF(i32 %346)
  %348 = load i32, i32* %9, align 4
  %349 = zext i32 %348 to i64
  %350 = shl i64 1, %349
  %351 = sub nsw i64 %350, 1
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = and i64 %353, %351
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %7, align 4
  %356 = load i32, i32* %7, align 4
  %357 = and i32 %356, 65535
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %299
  %360 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %375

361:                                              ; preds = %299
  %362 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %363 = load i32, i32* @ORI, align 4
  %364 = load i32, i32* %6, align 4
  %365 = call i32 @SA(i32 %364)
  %366 = or i32 %363, %365
  %367 = load i32, i32* %6, align 4
  %368 = call i32 @TA(i32 %367)
  %369 = or i32 %366, %368
  %370 = load i32, i32* %7, align 4
  %371 = call i32 @IMM(i32 %370)
  %372 = or i32 %369, %371
  %373 = load i32, i32* %6, align 4
  %374 = call i32 @push_inst(%struct.sljit_compiler* %362, i32 %372, i32 %373)
  br label %375

375:                                              ; preds = %361, %359
  %376 = phi i32 [ %360, %359 ], [ %374, %361 ]
  store i32 %376, i32* %4, align 4
  br label %377

377:                                              ; preds = %375, %250, %89, %36, %16
  %378 = load i32, i32* %4, align 4
  ret i32 %378
}

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32, i32) #1

declare dso_local i32 @SA(i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @SLJIT_ASSERT(i32) #1

declare dso_local i32 @SH_IMM(i32) #1

declare dso_local i32 @DA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
