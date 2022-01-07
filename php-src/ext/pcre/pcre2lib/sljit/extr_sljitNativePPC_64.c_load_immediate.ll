; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_64.c_load_immediate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_64.c_load_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SIMM_MAX = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@ADDI = common dso_local global i32 0, align 4
@ORI = common dso_local global i32 0, align 4
@TMP_ZERO = common dso_local global i32 0, align 4
@ADDIS = common dso_local global i32 0, align 4
@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@ORIS = common dso_local global i32 0, align 4
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
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SIMM_MAX, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SIMM_MIN, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %21 = load i32, i32* @ADDI, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @D(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i32 @A(i32 0)
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @IMM(i32 %27)
  %29 = or i32 %26, %28
  %30 = call i32 @push_inst(%struct.sljit_compiler* %20, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %378

31:                                               ; preds = %15, %3
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, -65536
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %37 = load i32, i32* @ORI, align 4
  %38 = load i32, i32* @TMP_ZERO, align 4
  %39 = call i32 @S(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @A(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @IMM(i32 %44)
  %46 = or i32 %43, %45
  %47 = call i32 @push_inst(%struct.sljit_compiler* %36, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %378

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp sle i64 %50, 2147483647
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp sge i64 %54, -2147483648
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  %57 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %58 = load i32, i32* @ADDIS, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @D(i32 %59)
  %61 = or i32 %58, %60
  %62 = call i32 @A(i32 0)
  %63 = or i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 16
  %66 = call i32 @IMM(i32 %65)
  %67 = or i32 %63, %66
  %68 = call i32 @push_inst(%struct.sljit_compiler* %57, i32 %67)
  %69 = call i32 @FAIL_IF(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 65535
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %56
  %74 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %75 = load i32, i32* @ORI, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @S(i32 %76)
  %78 = or i32 %75, %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @A(i32 %79)
  %81 = or i32 %78, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @IMM(i32 %82)
  %84 = or i32 %81, %83
  %85 = call i32 @push_inst(%struct.sljit_compiler* %74, i32 %84)
  br label %88

86:                                               ; preds = %56
  %87 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %88

88:                                               ; preds = %86, %73
  %89 = phi i32 [ %85, %73 ], [ %87, %86 ]
  store i32 %89, i32* %4, align 4
  br label %378

90:                                               ; preds = %52, %48
  %91 = load i32, i32* %7, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  br label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = xor i32 %96, -1
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi i32 [ %94, %93 ], [ %97, %95 ]
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @ASM_SLJIT_CLZ(i32 %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp sgt i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @SLJIT_ASSERT(i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = shl i32 %109, %110
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = and i64 %113, 281474976710655
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %98
  %117 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %118 = load i32, i32* @ADDI, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @D(i32 %119)
  %121 = or i32 %118, %120
  %122 = call i32 @A(i32 0)
  %123 = or i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = ashr i32 %124, 48
  %126 = call i32 @IMM(i32 %125)
  %127 = or i32 %123, %126
  %128 = call i32 @push_inst(%struct.sljit_compiler* %117, i32 %127)
  %129 = call i32 @FAIL_IF(i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 15
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @PUSH_RLDICR(i32 %132, i32 %133)
  store i32 %134, i32* %4, align 4
  br label %378

135:                                              ; preds = %98
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = and i64 %137, 4294967295
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %173

140:                                              ; preds = %135
  %141 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %142 = load i32, i32* @ADDIS, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @D(i32 %143)
  %145 = or i32 %142, %144
  %146 = call i32 @A(i32 0)
  %147 = or i32 %145, %146
  %148 = load i32, i32* %8, align 4
  %149 = ashr i32 %148, 48
  %150 = call i32 @IMM(i32 %149)
  %151 = or i32 %147, %150
  %152 = call i32 @push_inst(%struct.sljit_compiler* %141, i32 %151)
  %153 = call i32 @FAIL_IF(i32 %152)
  %154 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %155 = load i32, i32* @ORI, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @S(i32 %156)
  %158 = or i32 %155, %157
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @A(i32 %159)
  %161 = or i32 %158, %160
  %162 = load i32, i32* %8, align 4
  %163 = ashr i32 %162, 32
  %164 = call i32 @IMM(i32 %163)
  %165 = or i32 %161, %164
  %166 = call i32 @push_inst(%struct.sljit_compiler* %154, i32 %165)
  %167 = call i32 @FAIL_IF(i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 31
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @PUSH_RLDICR(i32 %170, i32 %171)
  store i32 %172, i32* %4, align 4
  br label %378

173:                                              ; preds = %135
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 15
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %9, align 4
  %179 = sub nsw i32 63, %178
  %180 = zext i32 %179 to i64
  %181 = shl i64 1, %180
  %182 = sub i64 %181, 1
  %183 = and i64 %177, %182
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp sle i32 %185, 65535
  br i1 %186, label %187, label %216

187:                                              ; preds = %173
  %188 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %189 = load i32, i32* @ADDI, align 4
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @D(i32 %190)
  %192 = or i32 %189, %191
  %193 = call i32 @A(i32 0)
  %194 = or i32 %192, %193
  %195 = load i32, i32* %8, align 4
  %196 = ashr i32 %195, 48
  %197 = call i32 @IMM(i32 %196)
  %198 = or i32 %194, %197
  %199 = call i32 @push_inst(%struct.sljit_compiler* %188, i32 %198)
  %200 = call i32 @FAIL_IF(i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @PUSH_RLDICR(i32 %201, i32 %202)
  %204 = call i32 @FAIL_IF(i32 %203)
  %205 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %206 = load i32, i32* @ORI, align 4
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @S(i32 %207)
  %209 = or i32 %206, %208
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @A(i32 %210)
  %212 = or i32 %209, %211
  %213 = load i32, i32* %10, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @push_inst(%struct.sljit_compiler* %205, i32 %214)
  store i32 %215, i32* %4, align 4
  br label %378

216:                                              ; preds = %173
  %217 = load i32, i32* %10, align 4
  %218 = icmp ule i32 %217, -1
  br i1 %218, label %219, label %270

219:                                              ; preds = %216
  %220 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %221 = load i32, i32* @ADDI, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @D(i32 %222)
  %224 = or i32 %221, %223
  %225 = call i32 @A(i32 0)
  %226 = or i32 %224, %225
  %227 = load i32, i32* %8, align 4
  %228 = ashr i32 %227, 48
  %229 = call i32 @IMM(i32 %228)
  %230 = or i32 %226, %229
  %231 = call i32 @push_inst(%struct.sljit_compiler* %220, i32 %230)
  %232 = call i32 @FAIL_IF(i32 %231)
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @PUSH_RLDICR(i32 %233, i32 %234)
  %236 = call i32 @FAIL_IF(i32 %235)
  %237 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %238 = load i32, i32* @ORIS, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @S(i32 %239)
  %241 = or i32 %238, %240
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @A(i32 %242)
  %244 = or i32 %241, %243
  %245 = load i32, i32* %10, align 4
  %246 = ashr i32 %245, 16
  %247 = or i32 %244, %246
  %248 = call i32 @push_inst(%struct.sljit_compiler* %237, i32 %247)
  %249 = call i32 @FAIL_IF(i32 %248)
  %250 = load i32, i32* %7, align 4
  %251 = and i32 %250, 65535
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %219
  %254 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %255 = load i32, i32* @ORI, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @S(i32 %256)
  %258 = or i32 %255, %257
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @A(i32 %259)
  %261 = or i32 %258, %260
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @IMM(i32 %262)
  %264 = or i32 %261, %263
  %265 = call i32 @push_inst(%struct.sljit_compiler* %254, i32 %264)
  br label %268

266:                                              ; preds = %219
  %267 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %268

268:                                              ; preds = %266, %253
  %269 = phi i32 [ %265, %253 ], [ %267, %266 ]
  store i32 %269, i32* %4, align 4
  br label %378

270:                                              ; preds = %216
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @ASM_SLJIT_CLZ(i32 %271, i32 %272)
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %10, align 4
  %276 = shl i32 %275, %274
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = and i64 %278, 281474976710655
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %321

281:                                              ; preds = %270
  %282 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %283 = load i32, i32* @ADDI, align 4
  %284 = load i32, i32* %6, align 4
  %285 = call i32 @D(i32 %284)
  %286 = or i32 %283, %285
  %287 = call i32 @A(i32 0)
  %288 = or i32 %286, %287
  %289 = load i32, i32* %8, align 4
  %290 = ashr i32 %289, 48
  %291 = call i32 @IMM(i32 %290)
  %292 = or i32 %288, %291
  %293 = call i32 @push_inst(%struct.sljit_compiler* %282, i32 %292)
  %294 = call i32 @FAIL_IF(i32 %293)
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 15
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = sub nsw i32 63, %297
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %9, align 4
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @PUSH_RLDICR(i32 %301, i32 %302)
  %304 = call i32 @FAIL_IF(i32 %303)
  %305 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %306 = load i32, i32* @ORI, align 4
  %307 = load i32, i32* %6, align 4
  %308 = call i32 @S(i32 %307)
  %309 = or i32 %306, %308
  %310 = load i32, i32* %6, align 4
  %311 = call i32 @A(i32 %310)
  %312 = or i32 %309, %311
  %313 = load i32, i32* %10, align 4
  %314 = ashr i32 %313, 48
  %315 = or i32 %312, %314
  %316 = call i32 @push_inst(%struct.sljit_compiler* %305, i32 %315)
  %317 = call i32 @FAIL_IF(i32 %316)
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %11, align 4
  %320 = call i32 @PUSH_RLDICR(i32 %318, i32 %319)
  store i32 %320, i32* %4, align 4
  br label %378

321:                                              ; preds = %270
  %322 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %323 = load i32, i32* @ADDIS, align 4
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @D(i32 %324)
  %326 = or i32 %323, %325
  %327 = call i32 @A(i32 0)
  %328 = or i32 %326, %327
  %329 = load i32, i32* %7, align 4
  %330 = ashr i32 %329, 48
  %331 = call i32 @IMM(i32 %330)
  %332 = or i32 %328, %331
  %333 = call i32 @push_inst(%struct.sljit_compiler* %322, i32 %332)
  %334 = call i32 @FAIL_IF(i32 %333)
  %335 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %336 = load i32, i32* @ORI, align 4
  %337 = load i32, i32* %6, align 4
  %338 = call i32 @S(i32 %337)
  %339 = or i32 %336, %338
  %340 = load i32, i32* %6, align 4
  %341 = call i32 @A(i32 %340)
  %342 = or i32 %339, %341
  %343 = load i32, i32* %7, align 4
  %344 = ashr i32 %343, 32
  %345 = call i32 @IMM(i32 %344)
  %346 = or i32 %342, %345
  %347 = call i32 @push_inst(%struct.sljit_compiler* %335, i32 %346)
  %348 = call i32 @FAIL_IF(i32 %347)
  %349 = load i32, i32* %6, align 4
  %350 = call i32 @PUSH_RLDICR(i32 %349, i32 31)
  %351 = call i32 @FAIL_IF(i32 %350)
  %352 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %353 = load i32, i32* @ORIS, align 4
  %354 = load i32, i32* %6, align 4
  %355 = call i32 @S(i32 %354)
  %356 = or i32 %353, %355
  %357 = load i32, i32* %6, align 4
  %358 = call i32 @A(i32 %357)
  %359 = or i32 %356, %358
  %360 = load i32, i32* %7, align 4
  %361 = ashr i32 %360, 16
  %362 = call i32 @IMM(i32 %361)
  %363 = or i32 %359, %362
  %364 = call i32 @push_inst(%struct.sljit_compiler* %352, i32 %363)
  %365 = call i32 @FAIL_IF(i32 %364)
  %366 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %367 = load i32, i32* @ORI, align 4
  %368 = load i32, i32* %6, align 4
  %369 = call i32 @S(i32 %368)
  %370 = or i32 %367, %369
  %371 = load i32, i32* %6, align 4
  %372 = call i32 @A(i32 %371)
  %373 = or i32 %370, %372
  %374 = load i32, i32* %7, align 4
  %375 = call i32 @IMM(i32 %374)
  %376 = or i32 %373, %375
  %377 = call i32 @push_inst(%struct.sljit_compiler* %366, i32 %376)
  store i32 %377, i32* %4, align 4
  br label %378

378:                                              ; preds = %321, %281, %268, %187, %140, %116, %88, %35, %19
  %379 = load i32, i32* %4, align 4
  ret i32 %379
}

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @A(i32) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i32 @S(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @ASM_SLJIT_CLZ(i32, i32) #1

declare dso_local i32 @SLJIT_ASSERT(i32) #1

declare dso_local i32 @PUSH_RLDICR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
