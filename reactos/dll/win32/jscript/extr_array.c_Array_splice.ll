; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_splice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@lengthW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @Array_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_splice(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %25 = load i64, i64* @S_OK, align 8
  store i64 %25, i64* %24, align 8
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @get_length(i32* %27, i32* %28, i32** %20, i32* %14)
  store i64 %29, i64* %24, align 8
  %30 = load i64, i64* %24, align 8
  %31 = call i64 @FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i64, i64* %24, align 8
  store i64 %34, i64* %7, align 8
  br label %376

35:                                               ; preds = %6
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @to_integer(i32* %39, i32 %42, double* %22)
  store i64 %43, i64* %24, align 8
  %44 = load i64, i64* %24, align 8
  %45 = call i64 @FAILED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i64, i64* %24, align 8
  store i64 %48, i64* %7, align 8
  br label %376

49:                                               ; preds = %38
  %50 = load double, double* %22, align 8
  %51 = call i64 @is_int32(double %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load double, double* %22, align 8
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %23, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @min(i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  br label %73

61:                                               ; preds = %53
  %62 = load i32, i32* %23, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32, i32* %14, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %23, align 4
  %70 = add nsw i32 %68, %69
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i32 [ 0, %66 ], [ %70, %67 ]
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %71, %57
  br label %82

74:                                               ; preds = %49
  %75 = load double, double* %22, align 8
  %76 = fcmp olt double %75, 0.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ 0, %77 ], [ %79, %78 ]
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %80, %73
  br label %83

83:                                               ; preds = %82, %35
  %84 = load i32, i32* %11, align 4
  %85 = icmp uge i32 %84, 2
  br i1 %85, label %86, label %123

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @to_integer(i32* %87, i32 %90, double* %22)
  store i64 %91, i64* %24, align 8
  %92 = load i64, i64* %24, align 8
  %93 = call i64 @FAILED(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i64, i64* %24, align 8
  store i64 %96, i64* %7, align 8
  br label %376

97:                                               ; preds = %86
  %98 = load double, double* %22, align 8
  %99 = call i64 @is_int32(double %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load double, double* %22, align 8
  %103 = fptosi double %102 to i32
  store i32 %103, i32* %23, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call i32 @min(i32 %106, i32 %109)
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %105, %101
  br label %120

112:                                              ; preds = %97
  %113 = load double, double* %22, align 8
  %114 = fcmp ogt double %113, 0.000000e+00
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i32, i32* %11, align 4
  %122 = sub i32 %121, 2
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %120, %83
  %124 = load i32*, i32** %13, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %183

126:                                              ; preds = %123
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @create_array(i32* %127, i32 0, i32** %19)
  store i64 %128, i64* %24, align 8
  %129 = load i64, i64* %24, align 8
  %130 = call i64 @FAILED(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i64, i64* %24, align 8
  store i64 %133, i64* %7, align 8
  br label %376

134:                                              ; preds = %126
  store i32 0, i32* %17, align 4
  br label %135

135:                                              ; preds = %169, %134
  %136 = load i64, i64* %24, align 8
  %137 = call i64 @SUCCEEDED(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp slt i32 %140, %141
  br label %143

143:                                              ; preds = %139, %135
  %144 = phi i1 [ false, %135 ], [ %142, %139 ]
  br i1 %144, label %145, label %172

145:                                              ; preds = %143
  %146 = load i32*, i32** %20, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i64 @jsdisp_get_idx(i32* %146, i32 %149, i32* %21)
  store i64 %150, i64* %24, align 8
  %151 = load i64, i64* %24, align 8
  %152 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i64, i64* @S_OK, align 8
  store i64 %155, i64* %24, align 8
  br label %168

156:                                              ; preds = %145
  %157 = load i64, i64* %24, align 8
  %158 = call i64 @SUCCEEDED(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i32*, i32** %19, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %21, align 4
  %164 = call i64 @jsdisp_propput_idx(i32* %161, i32 %162, i32 %163)
  store i64 %164, i64* %24, align 8
  %165 = load i32, i32* %21, align 4
  %166 = call i32 @jsval_release(i32 %165)
  br label %167

167:                                              ; preds = %160, %156
  br label %168

168:                                              ; preds = %167, %154
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %135

172:                                              ; preds = %143
  %173 = load i64, i64* %24, align 8
  %174 = call i64 @SUCCEEDED(i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i32*, i32** %19, align 8
  %178 = load i32, i32* @lengthW, align 4
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @jsval_number(i32 %179)
  %181 = call i64 @jsdisp_propput_name(i32* %177, i32 %178, i32 %180)
  store i64 %181, i64* %24, align 8
  br label %182

182:                                              ; preds = %176, %172
  br label %183

183:                                              ; preds = %182, %123
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %259

187:                                              ; preds = %183
  %188 = load i32, i32* %15, align 4
  store i32 %188, i32* %17, align 4
  br label %189

189:                                              ; preds = %231, %187
  %190 = load i64, i64* %24, align 8
  %191 = call i64 @SUCCEEDED(i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %16, align 4
  %197 = sub nsw i32 %195, %196
  %198 = icmp slt i32 %194, %197
  br label %199

199:                                              ; preds = %193, %189
  %200 = phi i1 [ false, %189 ], [ %198, %193 ]
  br i1 %200, label %201, label %234

201:                                              ; preds = %199
  %202 = load i32*, i32** %20, align 8
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %203, %204
  %206 = call i64 @jsdisp_get_idx(i32* %202, i32 %205, i32* %21)
  store i64 %206, i64* %24, align 8
  %207 = load i64, i64* %24, align 8
  %208 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %201
  %211 = load i32*, i32** %20, align 8
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %18, align 4
  %214 = add nsw i32 %212, %213
  %215 = call i64 @jsdisp_delete_idx(i32* %211, i32 %214)
  store i64 %215, i64* %24, align 8
  br label %230

216:                                              ; preds = %201
  %217 = load i64, i64* %24, align 8
  %218 = call i64 @SUCCEEDED(i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i32*, i32** %20, align 8
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %21, align 4
  %226 = call i64 @jsdisp_propput_idx(i32* %221, i32 %224, i32 %225)
  store i64 %226, i64* %24, align 8
  %227 = load i32, i32* %21, align 4
  %228 = call i32 @jsval_release(i32 %227)
  br label %229

229:                                              ; preds = %220, %216
  br label %230

230:                                              ; preds = %229, %210
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %17, align 4
  br label %189

234:                                              ; preds = %199
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %17, align 4
  br label %236

236:                                              ; preds = %255, %234
  %237 = load i64, i64* %24, align 8
  %238 = call i64 @SUCCEEDED(i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %16, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %244, %245
  %247 = icmp ne i32 %241, %246
  br label %248

248:                                              ; preds = %240, %236
  %249 = phi i1 [ false, %236 ], [ %247, %240 ]
  br i1 %249, label %250, label %258

250:                                              ; preds = %248
  %251 = load i32*, i32** %20, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sub nsw i32 %252, 1
  %254 = call i64 @jsdisp_delete_idx(i32* %251, i32 %253)
  store i64 %254, i64* %24, align 8
  br label %255

255:                                              ; preds = %250
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %17, align 4
  br label %236

258:                                              ; preds = %248
  br label %315

259:                                              ; preds = %183
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %16, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %314

263:                                              ; preds = %259
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %16, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* %17, align 4
  br label %267

267:                                              ; preds = %310, %263
  %268 = load i64, i64* %24, align 8
  %269 = call i64 @SUCCEEDED(i64 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp ne i32 %272, %273
  br label %275

275:                                              ; preds = %271, %267
  %276 = phi i1 [ false, %267 ], [ %274, %271 ]
  br i1 %276, label %277, label %313

277:                                              ; preds = %275
  %278 = load i32*, i32** %20, align 8
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %279, %280
  %282 = sub nsw i32 %281, 1
  %283 = call i64 @jsdisp_get_idx(i32* %278, i32 %282, i32* %21)
  store i64 %283, i64* %24, align 8
  %284 = load i64, i64* %24, align 8
  %285 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %277
  %288 = load i32*, i32** %20, align 8
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %18, align 4
  %291 = add nsw i32 %289, %290
  %292 = sub nsw i32 %291, 1
  %293 = call i64 @jsdisp_delete_idx(i32* %288, i32 %292)
  store i64 %293, i64* %24, align 8
  br label %309

294:                                              ; preds = %277
  %295 = load i64, i64* %24, align 8
  %296 = call i64 @SUCCEEDED(i64 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %294
  %299 = load i32*, i32** %20, align 8
  %300 = load i32, i32* %17, align 4
  %301 = load i32, i32* %18, align 4
  %302 = add nsw i32 %300, %301
  %303 = sub nsw i32 %302, 1
  %304 = load i32, i32* %21, align 4
  %305 = call i64 @jsdisp_propput_idx(i32* %299, i32 %303, i32 %304)
  store i64 %305, i64* %24, align 8
  %306 = load i32, i32* %21, align 4
  %307 = call i32 @jsval_release(i32 %306)
  br label %308

308:                                              ; preds = %298, %294
  br label %309

309:                                              ; preds = %308, %287
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %17, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %17, align 4
  br label %267

313:                                              ; preds = %275
  br label %314

314:                                              ; preds = %313, %259
  br label %315

315:                                              ; preds = %314, %258
  store i32 0, i32* %17, align 4
  br label %316

316:                                              ; preds = %338, %315
  %317 = load i64, i64* %24, align 8
  %318 = call i64 @SUCCEEDED(i64 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %316
  %321 = load i32, i32* %17, align 4
  %322 = load i32, i32* %18, align 4
  %323 = icmp slt i32 %321, %322
  br label %324

324:                                              ; preds = %320, %316
  %325 = phi i1 [ false, %316 ], [ %323, %320 ]
  br i1 %325, label %326, label %341

326:                                              ; preds = %324
  %327 = load i32*, i32** %20, align 8
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %17, align 4
  %330 = add nsw i32 %328, %329
  %331 = load i32*, i32** %12, align 8
  %332 = load i32, i32* %17, align 4
  %333 = add nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @jsdisp_propput_idx(i32* %327, i32 %330, i32 %336)
  store i64 %337, i64* %24, align 8
  br label %338

338:                                              ; preds = %326
  %339 = load i32, i32* %17, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %17, align 4
  br label %316

341:                                              ; preds = %324
  %342 = load i64, i64* %24, align 8
  %343 = call i64 @SUCCEEDED(i64 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %355

345:                                              ; preds = %341
  %346 = load i32*, i32** %20, align 8
  %347 = load i32, i32* @lengthW, align 4
  %348 = load i32, i32* %14, align 4
  %349 = load i32, i32* %16, align 4
  %350 = sub nsw i32 %348, %349
  %351 = load i32, i32* %18, align 4
  %352 = add nsw i32 %350, %351
  %353 = call i32 @jsval_number(i32 %352)
  %354 = call i64 @jsdisp_propput_name(i32* %346, i32 %347, i32 %353)
  store i64 %354, i64* %24, align 8
  br label %355

355:                                              ; preds = %345, %341
  %356 = load i64, i64* %24, align 8
  %357 = call i64 @FAILED(i64 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %355
  %360 = load i32*, i32** %19, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i32*, i32** %19, align 8
  %364 = call i32 @jsdisp_release(i32* %363)
  br label %365

365:                                              ; preds = %362, %359
  %366 = load i64, i64* %24, align 8
  store i64 %366, i64* %7, align 8
  br label %376

367:                                              ; preds = %355
  %368 = load i32*, i32** %13, align 8
  %369 = icmp ne i32* %368, null
  br i1 %369, label %370, label %374

370:                                              ; preds = %367
  %371 = load i32*, i32** %19, align 8
  %372 = call i32 @jsval_obj(i32* %371)
  %373 = load i32*, i32** %13, align 8
  store i32 %372, i32* %373, align 4
  br label %374

374:                                              ; preds = %370, %367
  %375 = load i64, i64* @S_OK, align 8
  store i64 %375, i64* %7, align 8
  br label %376

376:                                              ; preds = %374, %365, %132, %95, %47, %33
  %377 = load i64, i64* %7, align 8
  ret i64 %377
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @to_integer(i32*, i32, double*) #1

declare dso_local i64 @is_int32(double) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @create_array(i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i64 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @jsdisp_propput_name(i32*, i32, i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i64 @jsdisp_delete_idx(i32*, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_obj(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
