; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_div_var_fast.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_div_var_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DIVISION_BY_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@NUMERIC_POS = common dso_local global i32 0, align 4
@NUMERIC_NEG = common dso_local global i32 0, align 4
@DEC_DIGITS = common dso_local global i32 0, align 4
@DIV_GUARD_DIGITS = common dso_local global i32 0, align 4
@NBASE = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32)* @div_var_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @div_var_fast(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %26, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %27, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %28, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %29, align 8
  %43 = load i32, i32* %27, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %5
  %46 = load i32*, i32** %29, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45, %5
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_DIVISION_BY_ZERO, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @ereport(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %26, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = call i32 @zero_var(%struct.TYPE_10__* %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %565

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @NUMERIC_POS, align 4
  store i32 %74, i32* %12, align 4
  br label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @NUMERIC_NEG, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %80, %83
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @DEC_DIGITS, align 4
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* @DEC_DIGITS, align 4
  %93 = sdiv i32 %91, %92
  %94 = add nsw i32 %87, %93
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* @DIV_GUARD_DIGITS, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @DIV_GUARD_DIGITS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %77
  %102 = load i32, i32* @DIV_GUARD_DIGITS, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %101, %77
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %26, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %26, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i64 @palloc0(i32 %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %14, align 8
  store i32 0, i32* %25, align 4
  br label %117

117:                                              ; preds = %132, %109
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %26, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i32*, i32** %28, align 8
  %123 = load i32, i32* %25, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %25, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %25, align 4
  br label %117

135:                                              ; preds = %117
  %136 = load i32*, i32** %29, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = sitofp i32 %138 to double
  store double %139, double* %21, align 8
  store i32 1, i32* %25, align 4
  br label %140

140:                                              ; preds = %160, %135
  %141 = load i32, i32* %25, align 4
  %142 = icmp slt i32 %141, 4
  br i1 %142, label %143, label %163

143:                                              ; preds = %140
  %144 = load double, double* @NBASE, align 8
  %145 = load double, double* %21, align 8
  %146 = fmul double %145, %144
  store double %146, double* %21, align 8
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* %27, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load i32*, i32** %29, align 8
  %152 = load i32, i32* %25, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sitofp i32 %155 to double
  %157 = load double, double* %21, align 8
  %158 = fadd double %157, %156
  store double %158, double* %21, align 8
  br label %159

159:                                              ; preds = %150, %143
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %25, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %25, align 4
  br label %140

163:                                              ; preds = %140
  %164 = load double, double* %21, align 8
  %165 = fdiv double 1.000000e+00, %164
  store double %165, double* %22, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %24, align 4
  br label %166

166:                                              ; preds = %429, %163
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %432

170:                                              ; preds = %166
  %171 = load i32*, i32** %14, align 8
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sitofp i32 %175 to double
  store double %176, double* %20, align 8
  store i32 1, i32* %25, align 4
  br label %177

177:                                              ; preds = %201, %170
  %178 = load i32, i32* %25, align 4
  %179 = icmp slt i32 %178, 4
  br i1 %179, label %180, label %204

180:                                              ; preds = %177
  %181 = load double, double* @NBASE, align 8
  %182 = load double, double* %20, align 8
  %183 = fmul double %182, %181
  store double %183, double* %20, align 8
  %184 = load i32, i32* %24, align 4
  %185 = load i32, i32* %25, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %11, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %180
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %25, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to double
  %198 = load double, double* %20, align 8
  %199 = fadd double %198, %197
  store double %199, double* %20, align 8
  br label %200

200:                                              ; preds = %189, %180
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %25, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %25, align 4
  br label %177

204:                                              ; preds = %177
  %205 = load double, double* %20, align 8
  %206 = load double, double* %22, align 8
  %207 = fmul double %205, %206
  store double %207, double* %23, align 8
  %208 = load double, double* %23, align 8
  %209 = fcmp oge double %208, 0.000000e+00
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load double, double* %23, align 8
  %212 = fptosi double %211 to i32
  br label %217

213:                                              ; preds = %204
  %214 = load double, double* %23, align 8
  %215 = fptosi double %214 to i32
  %216 = sub nsw i32 %215, 1
  br label %217

217:                                              ; preds = %213, %210
  %218 = phi i32 [ %212, %210 ], [ %216, %213 ]
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %406

221:                                              ; preds = %217
  %222 = load i32, i32* %15, align 4
  %223 = call i64 @Abs(i32 %222)
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %223
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = sitofp i32 %228 to double
  %230 = load double, double* @INT_MAX, align 8
  %231 = load double, double* @INT_MAX, align 8
  %232 = load double, double* @NBASE, align 8
  %233 = fdiv double %231, %232
  %234 = fsub double %230, %233
  %235 = fsub double %234, 1.000000e+00
  %236 = load double, double* @NBASE, align 8
  %237 = fsub double %236, 1.000000e+00
  %238 = fdiv double %235, %237
  %239 = fcmp ogt double %229, %238
  br i1 %239, label %240, label %371

240:                                              ; preds = %221
  store i32 0, i32* %16, align 4
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %25, align 4
  br label %242

242:                                              ; preds = %301, %240
  %243 = load i32, i32* %25, align 4
  %244 = load i32, i32* %24, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %304

246:                                              ; preds = %242
  %247 = load i32*, i32** %14, align 8
  %248 = load i32, i32* %25, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %16, align 4
  %253 = add nsw i32 %251, %252
  store i32 %253, i32* %18, align 4
  %254 = load i32, i32* %18, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %246
  %257 = load i32, i32* %18, align 4
  %258 = sub nsw i32 0, %257
  %259 = sub nsw i32 %258, 1
  %260 = sitofp i32 %259 to double
  %261 = load double, double* @NBASE, align 8
  %262 = fdiv double %260, %261
  %263 = fneg double %262
  %264 = fsub double %263, 1.000000e+00
  %265 = fptosi double %264 to i32
  store i32 %265, i32* %16, align 4
  %266 = load i32, i32* %16, align 4
  %267 = sitofp i32 %266 to double
  %268 = load double, double* @NBASE, align 8
  %269 = fmul double %267, %268
  %270 = load i32, i32* %18, align 4
  %271 = sitofp i32 %270 to double
  %272 = fsub double %271, %269
  %273 = fptosi double %272 to i32
  store i32 %273, i32* %18, align 4
  br label %295

274:                                              ; preds = %246
  %275 = load i32, i32* %18, align 4
  %276 = sitofp i32 %275 to double
  %277 = load double, double* @NBASE, align 8
  %278 = fcmp oge double %276, %277
  br i1 %278, label %279, label %293

279:                                              ; preds = %274
  %280 = load i32, i32* %18, align 4
  %281 = sitofp i32 %280 to double
  %282 = load double, double* @NBASE, align 8
  %283 = fdiv double %281, %282
  %284 = fptosi double %283 to i32
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %16, align 4
  %286 = sitofp i32 %285 to double
  %287 = load double, double* @NBASE, align 8
  %288 = fmul double %286, %287
  %289 = load i32, i32* %18, align 4
  %290 = sitofp i32 %289 to double
  %291 = fsub double %290, %288
  %292 = fptosi double %291 to i32
  store i32 %292, i32* %18, align 4
  br label %294

293:                                              ; preds = %274
  store i32 0, i32* %16, align 4
  br label %294

294:                                              ; preds = %293, %279
  br label %295

295:                                              ; preds = %294, %256
  %296 = load i32, i32* %18, align 4
  %297 = load i32*, i32** %14, align 8
  %298 = load i32, i32* %25, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %296, i32* %300, align 4
  br label %301

301:                                              ; preds = %295
  %302 = load i32, i32* %25, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %25, align 4
  br label %242

304:                                              ; preds = %242
  %305 = load i32*, i32** %14, align 8
  %306 = load i32, i32* %24, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %16, align 4
  %311 = add nsw i32 %309, %310
  store i32 %311, i32* %18, align 4
  %312 = load i32, i32* %18, align 4
  %313 = load i32*, i32** %14, align 8
  %314 = load i32, i32* %24, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %312, i32* %316, align 4
  store i32 1, i32* %17, align 4
  %317 = load i32*, i32** %14, align 8
  %318 = load i32, i32* %24, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = sitofp i32 %321 to double
  store double %322, double* %20, align 8
  store i32 1, i32* %25, align 4
  br label %323

323:                                              ; preds = %347, %304
  %324 = load i32, i32* %25, align 4
  %325 = icmp slt i32 %324, 4
  br i1 %325, label %326, label %350

326:                                              ; preds = %323
  %327 = load double, double* @NBASE, align 8
  %328 = load double, double* %20, align 8
  %329 = fmul double %328, %327
  store double %329, double* %20, align 8
  %330 = load i32, i32* %24, align 4
  %331 = load i32, i32* %25, align 4
  %332 = add nsw i32 %330, %331
  %333 = load i32, i32* %11, align 4
  %334 = icmp sle i32 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %326
  %336 = load i32*, i32** %14, align 8
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %25, align 4
  %339 = add nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %336, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = sitofp i32 %342 to double
  %344 = load double, double* %20, align 8
  %345 = fadd double %344, %343
  store double %345, double* %20, align 8
  br label %346

346:                                              ; preds = %335, %326
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %25, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %25, align 4
  br label %323

350:                                              ; preds = %323
  %351 = load double, double* %20, align 8
  %352 = load double, double* %22, align 8
  %353 = fmul double %351, %352
  store double %353, double* %23, align 8
  %354 = load double, double* %23, align 8
  %355 = fcmp oge double %354, 0.000000e+00
  br i1 %355, label %356, label %359

356:                                              ; preds = %350
  %357 = load double, double* %23, align 8
  %358 = fptosi double %357 to i32
  br label %363

359:                                              ; preds = %350
  %360 = load double, double* %23, align 8
  %361 = fptosi double %360 to i32
  %362 = sub nsw i32 %361, 1
  br label %363

363:                                              ; preds = %359, %356
  %364 = phi i32 [ %358, %356 ], [ %362, %359 ]
  store i32 %364, i32* %15, align 4
  %365 = load i32, i32* %15, align 4
  %366 = call i64 @Abs(i32 %365)
  %367 = load i32, i32* %17, align 4
  %368 = sext i32 %367 to i64
  %369 = add nsw i64 %368, %366
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %17, align 4
  br label %371

371:                                              ; preds = %363, %221
  %372 = load i32, i32* %15, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %405

374:                                              ; preds = %371
  %375 = load i32, i32* %27, align 4
  %376 = load i32, i32* %11, align 4
  %377 = load i32, i32* %24, align 4
  %378 = sub nsw i32 %376, %377
  %379 = add nsw i32 %378, 1
  %380 = call i32 @Min(i32 %375, i32 %379)
  store i32 %380, i32* %30, align 4
  store i32 0, i32* %25, align 4
  br label %381

381:                                              ; preds = %401, %374
  %382 = load i32, i32* %25, align 4
  %383 = load i32, i32* %30, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %404

385:                                              ; preds = %381
  %386 = load i32, i32* %15, align 4
  %387 = load i32*, i32** %29, align 8
  %388 = load i32, i32* %25, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = mul nsw i32 %386, %391
  %393 = load i32*, i32** %14, align 8
  %394 = load i32, i32* %24, align 4
  %395 = load i32, i32* %25, align 4
  %396 = add nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %393, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = sub nsw i32 %399, %392
  store i32 %400, i32* %398, align 4
  br label %401

401:                                              ; preds = %385
  %402 = load i32, i32* %25, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %25, align 4
  br label %381

404:                                              ; preds = %381
  br label %405

405:                                              ; preds = %404, %371
  br label %406

406:                                              ; preds = %405, %217
  %407 = load i32*, i32** %14, align 8
  %408 = load i32, i32* %24, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = sitofp i32 %411 to double
  %413 = load double, double* @NBASE, align 8
  %414 = fmul double %412, %413
  %415 = load i32*, i32** %14, align 8
  %416 = load i32, i32* %24, align 4
  %417 = add nsw i32 %416, 1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = sitofp i32 %420 to double
  %422 = fadd double %421, %414
  %423 = fptosi double %422 to i32
  store i32 %423, i32* %419, align 4
  %424 = load i32, i32* %15, align 4
  %425 = load i32*, i32** %14, align 8
  %426 = load i32, i32* %24, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %424, i32* %428, align 4
  br label %429

429:                                              ; preds = %406
  %430 = load i32, i32* %24, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %24, align 4
  br label %166

432:                                              ; preds = %166
  %433 = load i32*, i32** %14, align 8
  %434 = load i32, i32* %24, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = sitofp i32 %437 to double
  store double %438, double* %20, align 8
  store i32 1, i32* %25, align 4
  br label %439

439:                                              ; preds = %446, %432
  %440 = load i32, i32* %25, align 4
  %441 = icmp slt i32 %440, 4
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  %443 = load double, double* @NBASE, align 8
  %444 = load double, double* %20, align 8
  %445 = fmul double %444, %443
  store double %445, double* %20, align 8
  br label %446

446:                                              ; preds = %442
  %447 = load i32, i32* %25, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %25, align 4
  br label %439

449:                                              ; preds = %439
  %450 = load double, double* %20, align 8
  %451 = load double, double* %22, align 8
  %452 = fmul double %450, %451
  store double %452, double* %23, align 8
  %453 = load double, double* %23, align 8
  %454 = fcmp oge double %453, 0.000000e+00
  br i1 %454, label %455, label %458

455:                                              ; preds = %449
  %456 = load double, double* %23, align 8
  %457 = fptosi double %456 to i32
  br label %462

458:                                              ; preds = %449
  %459 = load double, double* %23, align 8
  %460 = fptosi double %459 to i32
  %461 = sub nsw i32 %460, 1
  br label %462

462:                                              ; preds = %458, %455
  %463 = phi i32 [ %457, %455 ], [ %461, %458 ]
  store i32 %463, i32* %15, align 4
  %464 = load i32, i32* %15, align 4
  %465 = load i32*, i32** %14, align 8
  %466 = load i32, i32* %24, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  store i32 %464, i32* %468, align 4
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %470 = load i32, i32* %11, align 4
  %471 = add nsw i32 %470, 1
  %472 = call i32 @alloc_var(%struct.TYPE_10__* %469, i32 %471)
  %473 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 1
  %475 = load i32*, i32** %474, align 8
  store i32* %475, i32** %19, align 8
  store i32 0, i32* %16, align 4
  %476 = load i32, i32* %11, align 4
  store i32 %476, i32* %25, align 4
  br label %477

477:                                              ; preds = %535, %462
  %478 = load i32, i32* %25, align 4
  %479 = icmp sge i32 %478, 0
  br i1 %479, label %480, label %538

480:                                              ; preds = %477
  %481 = load i32*, i32** %14, align 8
  %482 = load i32, i32* %25, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %16, align 4
  %487 = add nsw i32 %485, %486
  store i32 %487, i32* %18, align 4
  %488 = load i32, i32* %18, align 4
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %508

490:                                              ; preds = %480
  %491 = load i32, i32* %18, align 4
  %492 = sub nsw i32 0, %491
  %493 = sub nsw i32 %492, 1
  %494 = sitofp i32 %493 to double
  %495 = load double, double* @NBASE, align 8
  %496 = fdiv double %494, %495
  %497 = fneg double %496
  %498 = fsub double %497, 1.000000e+00
  %499 = fptosi double %498 to i32
  store i32 %499, i32* %16, align 4
  %500 = load i32, i32* %16, align 4
  %501 = sitofp i32 %500 to double
  %502 = load double, double* @NBASE, align 8
  %503 = fmul double %501, %502
  %504 = load i32, i32* %18, align 4
  %505 = sitofp i32 %504 to double
  %506 = fsub double %505, %503
  %507 = fptosi double %506 to i32
  store i32 %507, i32* %18, align 4
  br label %529

508:                                              ; preds = %480
  %509 = load i32, i32* %18, align 4
  %510 = sitofp i32 %509 to double
  %511 = load double, double* @NBASE, align 8
  %512 = fcmp oge double %510, %511
  br i1 %512, label %513, label %527

513:                                              ; preds = %508
  %514 = load i32, i32* %18, align 4
  %515 = sitofp i32 %514 to double
  %516 = load double, double* @NBASE, align 8
  %517 = fdiv double %515, %516
  %518 = fptosi double %517 to i32
  store i32 %518, i32* %16, align 4
  %519 = load i32, i32* %16, align 4
  %520 = sitofp i32 %519 to double
  %521 = load double, double* @NBASE, align 8
  %522 = fmul double %520, %521
  %523 = load i32, i32* %18, align 4
  %524 = sitofp i32 %523 to double
  %525 = fsub double %524, %522
  %526 = fptosi double %525 to i32
  store i32 %526, i32* %18, align 4
  br label %528

527:                                              ; preds = %508
  store i32 0, i32* %16, align 4
  br label %528

528:                                              ; preds = %527, %513
  br label %529

529:                                              ; preds = %528, %490
  %530 = load i32, i32* %18, align 4
  %531 = load i32*, i32** %19, align 8
  %532 = load i32, i32* %25, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  store i32 %530, i32* %534, align 4
  br label %535

535:                                              ; preds = %529
  %536 = load i32, i32* %25, align 4
  %537 = add nsw i32 %536, -1
  store i32 %537, i32* %25, align 4
  br label %477

538:                                              ; preds = %477
  %539 = load i32, i32* %16, align 4
  %540 = icmp eq i32 %539, 0
  %541 = zext i1 %540 to i32
  %542 = call i32 @Assert(i32 %541)
  %543 = load i32*, i32** %14, align 8
  %544 = call i32 @pfree(i32* %543)
  %545 = load i32, i32* %13, align 4
  %546 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %547 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %546, i32 0, i32 4
  store i32 %545, i32* %547, align 8
  %548 = load i32, i32* %12, align 4
  %549 = sext i32 %548 to i64
  %550 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %551 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %550, i32 0, i32 3
  store i64 %549, i64* %551, align 8
  %552 = load i32, i32* %10, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %538
  %555 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %556 = load i32, i32* %9, align 4
  %557 = call i32 @round_var(%struct.TYPE_10__* %555, i32 %556)
  br label %562

558:                                              ; preds = %538
  %559 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %560 = load i32, i32* %9, align 4
  %561 = call i32 @trunc_var(%struct.TYPE_10__* %559, i32 %560)
  br label %562

562:                                              ; preds = %558, %554
  %563 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %564 = call i32 @strip_var(%struct.TYPE_10__* %563)
  br label %565

565:                                              ; preds = %562, %59
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @zero_var(%struct.TYPE_10__*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @Abs(i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @alloc_var(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @round_var(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @trunc_var(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strip_var(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
