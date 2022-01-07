; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_common.c_getput_arg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_common.c_getput_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32, i64 }

@SLJIT_MEM = common dso_local global i64 0, align 8
@MEM_MASK = common dso_local global i64 0, align 8
@GPR_REG = common dso_local global i64 0, align 8
@LOAD_DATA = common dso_local global i64 0, align 8
@TMP_REG1 = common dso_local global i64 0, align 8
@MOVABLE_INS = common dso_local global i64 0, align 8
@REG_MASK = common dso_local global i64 0, align 8
@OFFS_REG_MASK = common dso_local global i64 0, align 8
@data_transfer_insts = common dso_local global i32* null, align 8
@TMP_REG3 = common dso_local global i64 0, align 8
@ADDU_W = common dso_local global i32 0, align 4
@SLL_W = common dso_local global i32 0, align 4
@SIMM_MAX = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@ADDIU_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sljit_compiler*, i64, i64, i64, i32, i64, i32)* @getput_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getput_arg(%struct.sljit_compiler* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.sljit_compiler*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* @SLJIT_MEM, align 8
  %21 = and i64 %19, %20
  %22 = call i32 @SLJIT_ASSERT(i64 %21)
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @SLJIT_MEM, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @MEM_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @GPR_REG, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @LOAD_DATA, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %18, align 8
  br label %46

42:                                               ; preds = %34, %28
  %43 = load i64, i64* @TMP_REG1, align 8
  %44 = call i64 @DR(i64 %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* @MOVABLE_INS, align 8
  store i64 %45, i64* %18, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @REG_MASK, align 8
  %49 = and i64 %47, %48
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @OFFS_REG_MASK, align 8
  %52 = and i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @SLJIT_UNLIKELY(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %284

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = and i32 %57, 3
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %61 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %173

64:                                               ; preds = %56
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %67 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %72 = load i32*, i32** @data_transfer_insts, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @MEM_MASK, align 8
  %75 = and i64 %73, %74
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @TMP_REG3, align 8
  %79 = call i32 @S(i64 %78)
  %80 = or i32 %77, %79
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @TA(i64 %81)
  %83 = or i32 %80, %82
  %84 = load i64, i64* %18, align 8
  %85 = call i64 @push_inst(%struct.sljit_compiler* %71, i32 %83, i64 %84)
  store i64 %85, i64* %8, align 8
  br label %512

86:                                               ; preds = %64
  %87 = load i64, i64* @SLJIT_MEM, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @OFFS_REG_MASK, align 8
  %90 = and i64 %88, %89
  %91 = or i64 %87, %90
  %92 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %93 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %172

96:                                               ; preds = %86
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %14, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %142

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = and i32 %102, 3
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %108 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %111 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %113 = load i32, i32* @ADDU_W, align 4
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @S(i64 %114)
  %116 = or i32 %113, %115
  %117 = load i64, i64* @TMP_REG3, align 8
  %118 = call i32 @T(i64 %117)
  %119 = or i32 %116, %118
  %120 = load i64, i64* @TMP_REG3, align 8
  %121 = call i32 @D(i64 %120)
  %122 = or i32 %119, %121
  %123 = load i64, i64* @TMP_REG3, align 8
  %124 = call i64 @DR(i64 %123)
  %125 = call i64 @push_inst(%struct.sljit_compiler* %112, i32 %122, i64 %124)
  %126 = call i32 @FAIL_IF(i64 %125)
  %127 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %128 = load i32*, i32** @data_transfer_insts, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @MEM_MASK, align 8
  %131 = and i64 %129, %130
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* @TMP_REG3, align 8
  %135 = call i32 @S(i64 %134)
  %136 = or i32 %133, %135
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @TA(i64 %137)
  %139 = or i32 %136, %138
  %140 = load i64, i64* %18, align 8
  %141 = call i64 @push_inst(%struct.sljit_compiler* %127, i32 %139, i64 %140)
  store i64 %141, i64* %8, align 8
  br label %512

142:                                              ; preds = %100, %96
  %143 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %144 = load i32, i32* @ADDU_W, align 4
  %145 = load i64, i64* %17, align 8
  %146 = call i32 @S(i64 %145)
  %147 = or i32 %144, %146
  %148 = load i64, i64* @TMP_REG3, align 8
  %149 = call i32 @T(i64 %148)
  %150 = or i32 %147, %149
  %151 = load i64, i64* %16, align 8
  %152 = call i32 @DA(i64 %151)
  %153 = or i32 %150, %152
  %154 = load i64, i64* %16, align 8
  %155 = call i64 @push_inst(%struct.sljit_compiler* %143, i32 %153, i64 %154)
  %156 = call i32 @FAIL_IF(i64 %155)
  %157 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %158 = load i32*, i32** @data_transfer_insts, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @MEM_MASK, align 8
  %161 = and i64 %159, %160
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* %16, align 8
  %165 = call i32 @SA(i64 %164)
  %166 = or i32 %163, %165
  %167 = load i64, i64* %11, align 8
  %168 = call i32 @TA(i64 %167)
  %169 = or i32 %166, %168
  %170 = load i64, i64* %18, align 8
  %171 = call i64 @push_inst(%struct.sljit_compiler* %157, i32 %169, i64 %170)
  store i64 %171, i64* %8, align 8
  br label %512

172:                                              ; preds = %86
  br label %173

173:                                              ; preds = %172, %56
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @SLJIT_UNLIKELY(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %173
  %178 = load i64, i64* @SLJIT_MEM, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* @OFFS_REG_MASK, align 8
  %181 = and i64 %179, %180
  %182 = or i64 %178, %181
  %183 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %184 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %187 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %189 = load i32, i32* @SLL_W, align 4
  %190 = load i64, i64* %12, align 8
  %191 = call i64 @OFFS_REG(i64 %190)
  %192 = call i32 @T(i64 %191)
  %193 = or i32 %189, %192
  %194 = load i64, i64* @TMP_REG3, align 8
  %195 = call i32 @D(i64 %194)
  %196 = or i32 %193, %195
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @SH_IMM(i32 %197)
  %199 = or i32 %196, %198
  %200 = load i64, i64* @TMP_REG3, align 8
  %201 = call i64 @DR(i64 %200)
  %202 = call i64 @push_inst(%struct.sljit_compiler* %188, i32 %199, i64 %201)
  %203 = call i32 @FAIL_IF(i64 %202)
  br label %204

204:                                              ; preds = %177, %173
  %205 = load i64, i64* %12, align 8
  %206 = load i64, i64* %14, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %245

208:                                              ; preds = %204
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %15, align 4
  %211 = and i32 %210, 3
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %245

213:                                              ; preds = %208
  %214 = load i64, i64* %12, align 8
  %215 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %216 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %219 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %221 = load i32, i32* @ADDU_W, align 4
  %222 = load i64, i64* %17, align 8
  %223 = call i32 @S(i64 %222)
  %224 = or i32 %221, %223
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %213
  %228 = load i64, i64* %12, align 8
  %229 = call i64 @OFFS_REG(i64 %228)
  br label %232

230:                                              ; preds = %213
  %231 = load i64, i64* @TMP_REG3, align 8
  br label %232

232:                                              ; preds = %230, %227
  %233 = phi i64 [ %229, %227 ], [ %231, %230 ]
  %234 = call i32 @T(i64 %233)
  %235 = or i32 %224, %234
  %236 = load i64, i64* @TMP_REG3, align 8
  %237 = call i32 @D(i64 %236)
  %238 = or i32 %235, %237
  %239 = load i64, i64* @TMP_REG3, align 8
  %240 = call i64 @DR(i64 %239)
  %241 = call i64 @push_inst(%struct.sljit_compiler* %220, i32 %238, i64 %240)
  %242 = call i32 @FAIL_IF(i64 %241)
  %243 = load i64, i64* @TMP_REG3, align 8
  %244 = call i64 @DR(i64 %243)
  store i64 %244, i64* %16, align 8
  br label %268

245:                                              ; preds = %208, %204
  %246 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %247 = load i32, i32* @ADDU_W, align 4
  %248 = load i64, i64* %17, align 8
  %249 = call i32 @S(i64 %248)
  %250 = or i32 %247, %249
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %245
  %254 = load i64, i64* %12, align 8
  %255 = call i64 @OFFS_REG(i64 %254)
  br label %258

256:                                              ; preds = %245
  %257 = load i64, i64* @TMP_REG3, align 8
  br label %258

258:                                              ; preds = %256, %253
  %259 = phi i64 [ %255, %253 ], [ %257, %256 ]
  %260 = call i32 @T(i64 %259)
  %261 = or i32 %250, %260
  %262 = load i64, i64* %16, align 8
  %263 = call i32 @DA(i64 %262)
  %264 = or i32 %261, %263
  %265 = load i64, i64* %16, align 8
  %266 = call i64 @push_inst(%struct.sljit_compiler* %246, i32 %264, i64 %265)
  %267 = call i32 @FAIL_IF(i64 %266)
  br label %268

268:                                              ; preds = %258, %232
  %269 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %270 = load i32*, i32** @data_transfer_insts, align 8
  %271 = load i64, i64* %10, align 8
  %272 = load i64, i64* @MEM_MASK, align 8
  %273 = and i64 %271, %272
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i64, i64* %16, align 8
  %277 = call i32 @SA(i64 %276)
  %278 = or i32 %275, %277
  %279 = load i64, i64* %11, align 8
  %280 = call i32 @TA(i64 %279)
  %281 = or i32 %278, %280
  %282 = load i64, i64* %18, align 8
  %283 = call i64 @push_inst(%struct.sljit_compiler* %269, i32 %281, i64 %282)
  store i64 %283, i64* %8, align 8
  br label %512

284:                                              ; preds = %46
  %285 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %286 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %12, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %351

290:                                              ; preds = %284
  %291 = load i32, i32* %13, align 4
  %292 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %293 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %291, %294
  %296 = load i32, i32* @SIMM_MAX, align 4
  %297 = icmp sle i32 %295, %296
  br i1 %297, label %298, label %351

298:                                              ; preds = %290
  %299 = load i32, i32* %13, align 4
  %300 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %301 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sub nsw i32 %299, %302
  %304 = load i32, i32* @SIMM_MIN, align 4
  %305 = icmp sge i32 %303, %304
  br i1 %305, label %306, label %351

306:                                              ; preds = %298
  %307 = load i32, i32* %13, align 4
  %308 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %309 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %307, %310
  br i1 %311, label %312, label %335

312:                                              ; preds = %306
  %313 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %314 = load i32, i32* @ADDIU_W, align 4
  %315 = load i64, i64* @TMP_REG3, align 8
  %316 = call i32 @S(i64 %315)
  %317 = or i32 %314, %316
  %318 = load i64, i64* @TMP_REG3, align 8
  %319 = call i32 @T(i64 %318)
  %320 = or i32 %317, %319
  %321 = load i32, i32* %13, align 4
  %322 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %323 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = sub nsw i32 %321, %324
  %326 = call i32 @IMM(i32 %325)
  %327 = or i32 %320, %326
  %328 = load i64, i64* @TMP_REG3, align 8
  %329 = call i64 @DR(i64 %328)
  %330 = call i64 @push_inst(%struct.sljit_compiler* %313, i32 %327, i64 %329)
  %331 = call i32 @FAIL_IF(i64 %330)
  %332 = load i32, i32* %13, align 4
  %333 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %334 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %333, i32 0, i32 0
  store i32 %332, i32* %334, align 8
  br label %335

335:                                              ; preds = %312, %306
  %336 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %337 = load i32*, i32** @data_transfer_insts, align 8
  %338 = load i64, i64* %10, align 8
  %339 = load i64, i64* @MEM_MASK, align 8
  %340 = and i64 %338, %339
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i64, i64* @TMP_REG3, align 8
  %344 = call i32 @S(i64 %343)
  %345 = or i32 %342, %344
  %346 = load i64, i64* %11, align 8
  %347 = call i32 @TA(i64 %346)
  %348 = or i32 %345, %347
  %349 = load i64, i64* %18, align 8
  %350 = call i64 @push_inst(%struct.sljit_compiler* %336, i32 %348, i64 %349)
  store i64 %350, i64* %8, align 8
  br label %512

351:                                              ; preds = %298, %290, %284
  %352 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %353 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @SLJIT_MEM, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %400

357:                                              ; preds = %351
  %358 = load i32, i32* %13, align 4
  %359 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %360 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = sub nsw i32 %358, %361
  %363 = load i32, i32* @SIMM_MAX, align 4
  %364 = icmp sle i32 %362, %363
  br i1 %364, label %365, label %400

365:                                              ; preds = %357
  %366 = load i32, i32* %13, align 4
  %367 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %368 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = sub nsw i32 %366, %369
  %371 = load i32, i32* @SIMM_MIN, align 4
  %372 = icmp sge i32 %370, %371
  br i1 %372, label %373, label %400

373:                                              ; preds = %365
  %374 = load i32, i32* %13, align 4
  %375 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %376 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp ne i32 %374, %377
  br i1 %378, label %379, label %399

379:                                              ; preds = %373
  %380 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %381 = load i32, i32* @ADDIU_W, align 4
  %382 = load i64, i64* @TMP_REG3, align 8
  %383 = call i32 @S(i64 %382)
  %384 = or i32 %381, %383
  %385 = load i64, i64* @TMP_REG3, align 8
  %386 = call i32 @T(i64 %385)
  %387 = or i32 %384, %386
  %388 = load i32, i32* %13, align 4
  %389 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %390 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = sub nsw i32 %388, %391
  %393 = call i32 @IMM(i32 %392)
  %394 = or i32 %387, %393
  %395 = load i64, i64* @TMP_REG3, align 8
  %396 = call i64 @DR(i64 %395)
  %397 = call i64 @push_inst(%struct.sljit_compiler* %380, i32 %394, i64 %396)
  %398 = call i32 @FAIL_IF(i64 %397)
  br label %399

399:                                              ; preds = %379, %373
  br label %410

400:                                              ; preds = %365, %357, %351
  %401 = load i64, i64* @SLJIT_MEM, align 8
  %402 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %403 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %402, i32 0, i32 1
  store i64 %401, i64* %403, align 8
  %404 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %405 = load i64, i64* @TMP_REG3, align 8
  %406 = call i64 @DR(i64 %405)
  %407 = load i32, i32* %13, align 4
  %408 = call i64 @load_immediate(%struct.sljit_compiler* %404, i64 %406, i32 %407)
  %409 = call i32 @FAIL_IF(i64 %408)
  br label %410

410:                                              ; preds = %400, %399
  %411 = load i32, i32* %13, align 4
  %412 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %413 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %412, i32 0, i32 0
  store i32 %411, i32* %413, align 8
  %414 = load i64, i64* %17, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %432, label %416

416:                                              ; preds = %410
  %417 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %418 = load i32*, i32** @data_transfer_insts, align 8
  %419 = load i64, i64* %10, align 8
  %420 = load i64, i64* @MEM_MASK, align 8
  %421 = and i64 %419, %420
  %422 = getelementptr inbounds i32, i32* %418, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i64, i64* @TMP_REG3, align 8
  %425 = call i32 @S(i64 %424)
  %426 = or i32 %423, %425
  %427 = load i64, i64* %11, align 8
  %428 = call i32 @TA(i64 %427)
  %429 = or i32 %426, %428
  %430 = load i64, i64* %18, align 8
  %431 = call i64 @push_inst(%struct.sljit_compiler* %417, i32 %429, i64 %430)
  store i64 %431, i64* %8, align 8
  br label %512

432:                                              ; preds = %410
  %433 = load i64, i64* %12, align 8
  %434 = load i64, i64* %14, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %436, label %482

436:                                              ; preds = %432
  %437 = load i32, i32* %15, align 4
  %438 = load i32, i32* %13, align 4
  %439 = sub nsw i32 %437, %438
  %440 = load i32, i32* @SIMM_MAX, align 4
  %441 = icmp sle i32 %439, %440
  br i1 %441, label %442, label %482

442:                                              ; preds = %436
  %443 = load i32, i32* %15, align 4
  %444 = load i32, i32* %13, align 4
  %445 = sub nsw i32 %443, %444
  %446 = load i32, i32* @SIMM_MIN, align 4
  %447 = icmp sge i32 %445, %446
  br i1 %447, label %448, label %482

448:                                              ; preds = %442
  %449 = load i64, i64* %12, align 8
  %450 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %451 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %450, i32 0, i32 1
  store i64 %449, i64* %451, align 8
  %452 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %453 = load i32, i32* @ADDU_W, align 4
  %454 = load i64, i64* @TMP_REG3, align 8
  %455 = call i32 @S(i64 %454)
  %456 = or i32 %453, %455
  %457 = load i64, i64* %17, align 8
  %458 = call i32 @T(i64 %457)
  %459 = or i32 %456, %458
  %460 = load i64, i64* @TMP_REG3, align 8
  %461 = call i32 @D(i64 %460)
  %462 = or i32 %459, %461
  %463 = load i64, i64* @TMP_REG3, align 8
  %464 = call i64 @DR(i64 %463)
  %465 = call i64 @push_inst(%struct.sljit_compiler* %452, i32 %462, i64 %464)
  %466 = call i32 @FAIL_IF(i64 %465)
  %467 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %468 = load i32*, i32** @data_transfer_insts, align 8
  %469 = load i64, i64* %10, align 8
  %470 = load i64, i64* @MEM_MASK, align 8
  %471 = and i64 %469, %470
  %472 = getelementptr inbounds i32, i32* %468, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = load i64, i64* @TMP_REG3, align 8
  %475 = call i32 @S(i64 %474)
  %476 = or i32 %473, %475
  %477 = load i64, i64* %11, align 8
  %478 = call i32 @TA(i64 %477)
  %479 = or i32 %476, %478
  %480 = load i64, i64* %18, align 8
  %481 = call i64 @push_inst(%struct.sljit_compiler* %467, i32 %479, i64 %480)
  store i64 %481, i64* %8, align 8
  br label %512

482:                                              ; preds = %442, %436, %432
  %483 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %484 = load i32, i32* @ADDU_W, align 4
  %485 = load i64, i64* @TMP_REG3, align 8
  %486 = call i32 @S(i64 %485)
  %487 = or i32 %484, %486
  %488 = load i64, i64* %17, align 8
  %489 = call i32 @T(i64 %488)
  %490 = or i32 %487, %489
  %491 = load i64, i64* %16, align 8
  %492 = call i32 @DA(i64 %491)
  %493 = or i32 %490, %492
  %494 = load i64, i64* %16, align 8
  %495 = call i64 @push_inst(%struct.sljit_compiler* %483, i32 %493, i64 %494)
  %496 = call i32 @FAIL_IF(i64 %495)
  %497 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %498 = load i32*, i32** @data_transfer_insts, align 8
  %499 = load i64, i64* %10, align 8
  %500 = load i64, i64* @MEM_MASK, align 8
  %501 = and i64 %499, %500
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = load i64, i64* %16, align 8
  %505 = call i32 @SA(i64 %504)
  %506 = or i32 %503, %505
  %507 = load i64, i64* %11, align 8
  %508 = call i32 @TA(i64 %507)
  %509 = or i32 %506, %508
  %510 = load i64, i64* %18, align 8
  %511 = call i64 @push_inst(%struct.sljit_compiler* %497, i32 %509, i64 %510)
  store i64 %511, i64* %8, align 8
  br label %512

512:                                              ; preds = %482, %448, %416, %335, %268, %142, %105, %70
  %513 = load i64, i64* %8, align 8
  ret i64 %513
}

declare dso_local i32 @SLJIT_ASSERT(i64) #1

declare dso_local i64 @DR(i64) #1

declare dso_local i64 @SLJIT_UNLIKELY(i32) #1

declare dso_local i64 @push_inst(%struct.sljit_compiler*, i32, i64) #1

declare dso_local i32 @S(i64) #1

declare dso_local i32 @TA(i64) #1

declare dso_local i32 @FAIL_IF(i64) #1

declare dso_local i32 @T(i64) #1

declare dso_local i32 @D(i64) #1

declare dso_local i32 @DA(i64) #1

declare dso_local i32 @SA(i64) #1

declare dso_local i64 @OFFS_REG(i64) #1

declare dso_local i32 @SH_IMM(i32) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i64 @load_immediate(%struct.sljit_compiler*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
