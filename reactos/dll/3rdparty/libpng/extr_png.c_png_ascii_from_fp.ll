; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_ascii_from_fp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_ascii_from_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_DIG = common dso_local global i32 0, align 4
@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [34 x i8] c"ASCII conversion buffer too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_ascii_from_fp(i32 %0, i32* %1, i64 %2, double %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [10 x i8], align 1
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @DBL_DIG, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DBL_DIG, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @DBL_DIG, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 5
  %38 = zext i32 %37 to i64
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %371

40:                                               ; preds = %34
  %41 = load double, double* %9, align 8
  %42 = fcmp olt double %41, 0.000000e+00
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load double, double* %9, align 8
  %45 = fneg double %44
  store double %45, double* %9, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  store i32 45, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %43, %40
  %51 = load double, double* %9, align 8
  %52 = load double, double* @DBL_MIN, align 8
  %53 = fcmp oge double %51, %52
  br i1 %53, label %54, label %354

54:                                               ; preds = %50
  %55 = load double, double* %9, align 8
  %56 = load double, double* @DBL_MAX, align 8
  %57 = fcmp ole double %55, %56
  br i1 %57, label %58, label %354

58:                                               ; preds = %54
  %59 = load double, double* %9, align 8
  %60 = call i32 @frexp(double %59, i32* %11)
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 77
  %63 = ashr i32 %62, 8
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call double @png_pow10(i32 %64)
  store double %65, double* %12, align 8
  br label %66

66:                                               ; preds = %88, %58
  %67 = load double, double* %12, align 8
  %68 = load double, double* @DBL_MIN, align 8
  %69 = fcmp olt double %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load double, double* %12, align 8
  %72 = load double, double* %9, align 8
  %73 = fcmp olt double %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ true, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %89

76:                                               ; preds = %74
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = call double @png_pow10(i32 %78)
  store double %79, double* %13, align 8
  %80 = load double, double* %13, align 8
  %81 = load double, double* @DBL_MAX, align 8
  %82 = fcmp ole double %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load double, double* %13, align 8
  store double %86, double* %12, align 8
  br label %88

87:                                               ; preds = %76
  br label %89

88:                                               ; preds = %83
  br label %66

89:                                               ; preds = %87, %74
  %90 = load double, double* %12, align 8
  %91 = load double, double* %9, align 8
  %92 = fdiv double %91, %90
  store double %92, double* %9, align 8
  br label %93

93:                                               ; preds = %96, %89
  %94 = load double, double* %9, align 8
  %95 = fcmp oge double %94, 1.000000e+00
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load double, double* %9, align 8
  %98 = fdiv double %97, 1.000000e+01
  store double %98, double* %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %93

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, -3
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = sub i32 0, %108
  store i32 %109, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %111

110:                                              ; preds = %104, %101
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %113

113:                                              ; preds = %279, %111
  %114 = load double, double* %9, align 8
  %115 = fmul double %114, 1.000000e+01
  store double %115, double* %9, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %14, align 4
  %118 = add i32 %116, %117
  %119 = add i32 %118, 1
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %15, align 4
  %122 = add i32 %120, %121
  %123 = icmp ult i32 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load double, double* %9, align 8
  %126 = call double @modf(double %125, double* %18) #4
  store double %126, double* %9, align 8
  br label %202

127:                                              ; preds = %113
  %128 = load double, double* %9, align 8
  %129 = fadd double %128, 5.000000e-01
  %130 = call double @llvm.floor.f64(double %129)
  store double %130, double* %18, align 8
  %131 = load double, double* %18, align 8
  %132 = fcmp ogt double %131, 9.000000e+00
  br i1 %132, label %133, label %201

133:                                              ; preds = %127
  %134 = load i32, i32* %14, align 4
  %135 = icmp ugt i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load i32, i32* %14, align 4
  %138 = add i32 %137, -1
  store i32 %138, i32* %14, align 4
  store double 1.000000e+00, double* %18, align 8
  %139 = load i32, i32* %16, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %15, align 4
  %143 = add i32 %142, -1
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %141, %136
  br label %200

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %173, %145
  %147 = load i32, i32* %16, align 4
  %148 = icmp ugt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load double, double* %18, align 8
  %151 = fcmp ogt double %150, 9.000000e+00
  br label %152

152:                                              ; preds = %149, %146
  %153 = phi i1 [ false, %146 ], [ %151, %149 ]
  br i1 %153, label %154, label %179

154:                                              ; preds = %152
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 -1
  store i32* %156, i32** %7, align 8
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %173

163:                                              ; preds = %154
  %164 = load i32, i32* %19, align 4
  %165 = icmp eq i32 %164, 46
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 -1
  store i32* %168, i32** %7, align 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %19, align 4
  %170 = load i64, i64* %8, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %8, align 8
  store i32 1, i32* %11, align 4
  br label %172

172:                                              ; preds = %166, %163
  br label %173

173:                                              ; preds = %172, %160
  %174 = load i32, i32* %16, align 4
  %175 = add i32 %174, -1
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %19, align 4
  %177 = sub nsw i32 %176, 47
  %178 = sitofp i32 %177 to double
  store double %178, double* %18, align 8
  br label %146

179:                                              ; preds = %152
  %180 = load double, double* %18, align 8
  %181 = fcmp ogt double %180, 9.000000e+00
  br i1 %181, label %182, label %199

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 -1
  store i32* %187, i32** %7, align 8
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp eq i32 %189, 46
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i64, i64* %8, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %8, align 8
  store i32 1, i32* %11, align 4
  br label %194

194:                                              ; preds = %191, %185
  br label %198

195:                                              ; preds = %182
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %198

198:                                              ; preds = %195, %194
  store double 1.000000e+00, double* %18, align 8
  br label %199

199:                                              ; preds = %198, %179
  br label %200

200:                                              ; preds = %199, %144
  br label %201

201:                                              ; preds = %200, %127
  store double 0.000000e+00, double* %9, align 8
  br label %202

202:                                              ; preds = %201, %124
  %203 = load double, double* %18, align 8
  %204 = fcmp oeq double %203, 0.000000e+00
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i32, i32* %14, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* %15, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %15, align 4
  br label %213

213:                                              ; preds = %210, %205
  br label %266

214:                                              ; preds = %202
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %15, align 4
  %217 = sub i32 %215, %216
  %218 = load i32, i32* %16, align 4
  %219 = add i32 %218, %217
  store i32 %219, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %220

220:                                              ; preds = %237, %214
  %221 = load i32, i32* %14, align 4
  %222 = icmp ugt i32 %221, 0
  br i1 %222, label %223, label %242

223:                                              ; preds = %220
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, -1
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = load i32, i32* %11, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load i32*, i32** %7, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %7, align 8
  store i32 46, i32* %230, align 4
  %232 = load i64, i64* %8, align 8
  %233 = add i64 %232, -1
  store i64 %233, i64* %8, align 8
  br label %234

234:                                              ; preds = %229, %226
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %234, %223
  %238 = load i32*, i32** %7, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %7, align 8
  store i32 48, i32* %238, align 4
  %240 = load i32, i32* %14, align 4
  %241 = add i32 %240, -1
  store i32 %241, i32* %14, align 4
  br label %220

242:                                              ; preds = %220
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, -1
  br i1 %244, label %245, label %256

245:                                              ; preds = %242
  %246 = load i32, i32* %11, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load i32*, i32** %7, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %7, align 8
  store i32 46, i32* %249, align 4
  %251 = load i64, i64* %8, align 8
  %252 = add i64 %251, -1
  store i64 %252, i64* %8, align 8
  br label %253

253:                                              ; preds = %248, %245
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %253, %242
  %257 = load double, double* %18, align 8
  %258 = fptosi double %257 to i32
  %259 = add nsw i32 48, %258
  %260 = trunc i32 %259 to i8
  %261 = sext i8 %260 to i32
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %7, align 8
  store i32 %261, i32* %262, align 4
  %264 = load i32, i32* %16, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %16, align 4
  br label %266

266:                                              ; preds = %256, %213
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %14, align 4
  %270 = add i32 %268, %269
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %15, align 4
  %273 = add i32 %271, %272
  %274 = icmp ult i32 %270, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = load double, double* %9, align 8
  %277 = load double, double* @DBL_MIN, align 8
  %278 = fcmp ogt double %276, %277
  br label %279

279:                                              ; preds = %275, %267
  %280 = phi i1 [ false, %267 ], [ %278, %275 ]
  br i1 %280, label %113, label %281

281:                                              ; preds = %279
  %282 = load i32, i32* %11, align 4
  %283 = icmp sge i32 %282, -1
  br i1 %283, label %284, label %297

284:                                              ; preds = %281
  %285 = load i32, i32* %11, align 4
  %286 = icmp sle i32 %285, 2
  br i1 %286, label %287, label %297

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %292, %287
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %11, align 4
  %291 = icmp sgt i32 %289, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load i32*, i32** %7, align 8
  %294 = getelementptr inbounds i32, i32* %293, i32 1
  store i32* %294, i32** %7, align 8
  store i32 48, i32* %293, align 4
  br label %288

295:                                              ; preds = %288
  %296 = load i32*, i32** %7, align 8
  store i32 0, i32* %296, align 4
  br label %374

297:                                              ; preds = %284, %281
  %298 = load i32, i32* %16, align 4
  %299 = zext i32 %298 to i64
  %300 = load i64, i64* %8, align 8
  %301 = sub i64 %300, %299
  store i64 %301, i64* %8, align 8
  %302 = load i32*, i32** %7, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %7, align 8
  store i32 69, i32* %302, align 4
  %304 = load i64, i64* %8, align 8
  %305 = add i64 %304, -1
  store i64 %305, i64* %8, align 8
  %306 = load i32, i32* %11, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %297
  %309 = load i32*, i32** %7, align 8
  %310 = getelementptr inbounds i32, i32* %309, i32 1
  store i32* %310, i32** %7, align 8
  store i32 45, i32* %309, align 4
  %311 = load i64, i64* %8, align 8
  %312 = add i64 %311, -1
  store i64 %312, i64* %8, align 8
  %313 = load i32, i32* %11, align 4
  %314 = sub i32 0, %313
  store i32 %314, i32* %21, align 4
  br label %318

315:                                              ; preds = %297
  %316 = load i32, i32* %11, align 4
  %317 = add i32 0, %316
  store i32 %317, i32* %21, align 4
  br label %318

318:                                              ; preds = %315, %308
  store i32 0, i32* %16, align 4
  br label %319

319:                                              ; preds = %322, %318
  %320 = load i32, i32* %21, align 4
  %321 = icmp ugt i32 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %319
  %323 = load i32, i32* %21, align 4
  %324 = urem i32 %323, 10
  %325 = add i32 48, %324
  %326 = trunc i32 %325 to i8
  %327 = load i32, i32* %16, align 4
  %328 = add i32 %327, 1
  store i32 %328, i32* %16, align 4
  %329 = zext i32 %327 to i64
  %330 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 %329
  store i8 %326, i8* %330, align 1
  %331 = load i32, i32* %21, align 4
  %332 = udiv i32 %331, 10
  store i32 %332, i32* %21, align 4
  br label %319

333:                                              ; preds = %319
  %334 = load i64, i64* %8, align 8
  %335 = load i32, i32* %16, align 4
  %336 = zext i32 %335 to i64
  %337 = icmp ugt i64 %334, %336
  br i1 %337, label %338, label %353

338:                                              ; preds = %333
  br label %339

339:                                              ; preds = %342, %338
  %340 = load i32, i32* %16, align 4
  %341 = icmp ugt i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %339
  %343 = load i32, i32* %16, align 4
  %344 = add i32 %343, -1
  store i32 %344, i32* %16, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = load i32*, i32** %7, align 8
  %350 = getelementptr inbounds i32, i32* %349, i32 1
  store i32* %350, i32** %7, align 8
  store i32 %348, i32* %349, align 4
  br label %339

351:                                              ; preds = %339
  %352 = load i32*, i32** %7, align 8
  store i32 0, i32* %352, align 4
  br label %374

353:                                              ; preds = %333
  br label %370

354:                                              ; preds = %54, %50
  %355 = load double, double* %9, align 8
  %356 = load double, double* @DBL_MIN, align 8
  %357 = fcmp oge double %355, %356
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = load i32*, i32** %7, align 8
  %360 = getelementptr inbounds i32, i32* %359, i32 1
  store i32* %360, i32** %7, align 8
  store i32 48, i32* %359, align 4
  %361 = load i32*, i32** %7, align 8
  store i32 0, i32* %361, align 4
  br label %374

362:                                              ; preds = %354
  %363 = load i32*, i32** %7, align 8
  %364 = getelementptr inbounds i32, i32* %363, i32 1
  store i32* %364, i32** %7, align 8
  store i32 105, i32* %363, align 4
  %365 = load i32*, i32** %7, align 8
  %366 = getelementptr inbounds i32, i32* %365, i32 1
  store i32* %366, i32** %7, align 8
  store i32 110, i32* %365, align 4
  %367 = load i32*, i32** %7, align 8
  %368 = getelementptr inbounds i32, i32* %367, i32 1
  store i32* %368, i32** %7, align 8
  store i32 102, i32* %367, align 4
  %369 = load i32*, i32** %7, align 8
  store i32 0, i32* %369, align 4
  br label %374

370:                                              ; preds = %353
  br label %371

371:                                              ; preds = %370, %34
  %372 = load i32, i32* %6, align 4
  %373 = call i32 @png_error(i32 %372, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %374

374:                                              ; preds = %371, %362, %358, %351, %295
  ret void
}

declare dso_local i32 @frexp(double, i32*) #1

declare dso_local double @png_pow10(i32) #1

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local i32 @png_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
