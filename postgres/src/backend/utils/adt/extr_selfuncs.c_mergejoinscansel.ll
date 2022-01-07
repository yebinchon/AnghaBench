; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_mergejoinscansel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_mergejoinscansel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@BTLessEqualStrategyNumber = common dso_local global i32 0, align 4
@BTGreaterEqualStrategyNumber = common dso_local global i32 0, align 4
@DEFAULT_INEQ_SEL = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mergejoinscansel(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, double* %5, double* %6, double* %7, double* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca %struct.TYPE_8__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca double, align 8
  %41 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store double* %5, double** %15, align 8
  store double* %6, double** %16, align 8
  store double* %7, double** %17, align 8
  store double* %8, double** %18, align 8
  %42 = load double*, double** %17, align 8
  store double 0.000000e+00, double* %42, align 8
  %43 = load double*, double** %15, align 8
  store double 0.000000e+00, double* %43, align 8
  %44 = load double*, double** %18, align 8
  store double 1.000000e+00, double* %44, align 8
  %45 = load double*, double** %16, align 8
  store double 1.000000e+00, double* %45, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @is_opclause(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %9
  br label %432

50:                                               ; preds = %9
  %51 = load i32*, i32** %11, align 8
  %52 = bitcast i32* %51 to %struct.TYPE_9__*
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %26, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @get_leftop(i32* %55)
  store i32* %56, i32** %19, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32* @get_rightop(i32* %57)
  store i32* %58, i32** %20, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %432

62:                                               ; preds = %50
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @examine_variable(i32* %63, i32* %64, i32 0, %struct.TYPE_8__* %21)
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @examine_variable(i32* %66, i32* %67, i32 0, %struct.TYPE_8__* %22)
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @get_op_opfamily_properties(i32 %69, i32 %70, i32 0, i32* %23, i32* %24, i32* %25)
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* @BTEqualStrategyNumber, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i32, i32* %13, align 4
  switch i32 %77, label %187 [
    i32 128, label %78
    i32 129, label %128
  ]

78:                                               ; preds = %62
  store i32 0, i32* %35, align 4
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %25, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %25, align 4
  %86 = call i32 @get_opfamily_member(i32 %83, i32 %84, i32 %85, i32 128)
  store i32 %86, i32* %31, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %24, align 4
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %91 = call i32 @get_opfamily_member(i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %32, align 4
  %92 = load i32, i32* %31, align 4
  store i32 %92, i32* %27, align 4
  %93 = load i32, i32* %31, align 4
  store i32 %93, i32* %28, align 4
  %94 = load i32, i32* %27, align 4
  store i32 %94, i32* %29, align 4
  %95 = load i32, i32* %28, align 4
  store i32 %95, i32* %30, align 4
  %96 = load i32, i32* %31, align 4
  store i32 %96, i32* %33, align 4
  %97 = load i32, i32* %32, align 4
  store i32 %97, i32* %34, align 4
  br label %127

98:                                               ; preds = %78
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @get_opfamily_member(i32 %99, i32 %100, i32 %101, i32 128)
  store i32 %102, i32* %31, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %25, align 4
  %106 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %107 = call i32 @get_opfamily_member(i32 %103, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %32, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %24, align 4
  %111 = call i32 @get_opfamily_member(i32 %108, i32 %109, i32 %110, i32 128)
  store i32 %111, i32* %27, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %25, align 4
  %115 = call i32 @get_opfamily_member(i32 %112, i32 %113, i32 %114, i32 128)
  store i32 %115, i32* %28, align 4
  %116 = load i32, i32* %27, align 4
  store i32 %116, i32* %29, align 4
  %117 = load i32, i32* %28, align 4
  store i32 %117, i32* %30, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* %24, align 4
  %121 = call i32 @get_opfamily_member(i32 %118, i32 %119, i32 %120, i32 128)
  store i32 %121, i32* %33, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %126 = call i32 @get_opfamily_member(i32 %122, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %34, align 4
  br label %127

127:                                              ; preds = %98, %82
  br label %188

128:                                              ; preds = %62
  store i32 1, i32* %35, align 4
  %129 = load i32, i32* %24, align 4
  %130 = load i32, i32* %25, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %25, align 4
  %136 = call i32 @get_opfamily_member(i32 %133, i32 %134, i32 %135, i32 129)
  store i32 %136, i32* %31, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %141 = call i32 @get_opfamily_member(i32 %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %32, align 4
  %142 = load i32, i32* %31, align 4
  store i32 %142, i32* %27, align 4
  %143 = load i32, i32* %31, align 4
  store i32 %143, i32* %28, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @get_opfamily_member(i32 %144, i32 %145, i32 %146, i32 128)
  store i32 %147, i32* %29, align 4
  %148 = load i32, i32* %29, align 4
  store i32 %148, i32* %30, align 4
  %149 = load i32, i32* %31, align 4
  store i32 %149, i32* %33, align 4
  %150 = load i32, i32* %32, align 4
  store i32 %150, i32* %34, align 4
  br label %186

151:                                              ; preds = %128
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %25, align 4
  %155 = call i32 @get_opfamily_member(i32 %152, i32 %153, i32 %154, i32 129)
  store i32 %155, i32* %31, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %160 = call i32 @get_opfamily_member(i32 %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %32, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @get_opfamily_member(i32 %161, i32 %162, i32 %163, i32 129)
  store i32 %164, i32* %27, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %25, align 4
  %167 = load i32, i32* %25, align 4
  %168 = call i32 @get_opfamily_member(i32 %165, i32 %166, i32 %167, i32 129)
  store i32 %168, i32* %28, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %24, align 4
  %172 = call i32 @get_opfamily_member(i32 %169, i32 %170, i32 %171, i32 128)
  store i32 %172, i32* %29, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %25, align 4
  %176 = call i32 @get_opfamily_member(i32 %173, i32 %174, i32 %175, i32 128)
  store i32 %176, i32* %30, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %24, align 4
  %180 = call i32 @get_opfamily_member(i32 %177, i32 %178, i32 %179, i32 129)
  store i32 %180, i32* %33, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %25, align 4
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %185 = call i32 @get_opfamily_member(i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %34, align 4
  br label %186

186:                                              ; preds = %151, %132
  br label %188

187:                                              ; preds = %62
  br label %425

188:                                              ; preds = %186, %127
  %189 = load i32, i32* %27, align 4
  %190 = call i32 @OidIsValid(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %220

192:                                              ; preds = %188
  %193 = load i32, i32* %28, align 4
  %194 = call i32 @OidIsValid(i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %220

196:                                              ; preds = %192
  %197 = load i32, i32* %29, align 4
  %198 = call i32 @OidIsValid(i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %196
  %201 = load i32, i32* %30, align 4
  %202 = call i32 @OidIsValid(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = load i32, i32* %31, align 4
  %206 = call i32 @OidIsValid(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i32, i32* %32, align 4
  %210 = call i32 @OidIsValid(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load i32, i32* %33, align 4
  %214 = call i32 @OidIsValid(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load i32, i32* %34, align 4
  %218 = call i32 @OidIsValid(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216, %212, %208, %204, %200, %196, %192, %188
  br label %425

221:                                              ; preds = %216
  %222 = load i32, i32* %35, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %237, label %224

224:                                              ; preds = %221
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %29, align 4
  %227 = call i32 @get_variable_range(i32* %225, %struct.TYPE_8__* %21, i32 %226, i32* %36, i32* %37)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  br label %425

230:                                              ; preds = %224
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %30, align 4
  %233 = call i32 @get_variable_range(i32* %231, %struct.TYPE_8__* %22, i32 %232, i32* %38, i32* %39)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %230
  br label %425

236:                                              ; preds = %230
  br label %250

237:                                              ; preds = %221
  %238 = load i32*, i32** %10, align 8
  %239 = load i32, i32* %29, align 4
  %240 = call i32 @get_variable_range(i32* %238, %struct.TYPE_8__* %21, i32 %239, i32* %37, i32* %36)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  br label %425

243:                                              ; preds = %237
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %30, align 4
  %246 = call i32 @get_variable_range(i32* %244, %struct.TYPE_8__* %22, i32 %245, i32* %39, i32* %38)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %243
  br label %425

249:                                              ; preds = %243
  br label %250

250:                                              ; preds = %249, %236
  %251 = load i32*, i32** %10, align 8
  %252 = load i32, i32* %32, align 4
  %253 = load i32, i32* %35, align 4
  %254 = load i32, i32* %39, align 4
  %255 = load i32, i32* %25, align 4
  %256 = call double @scalarineqsel(i32* %251, i32 %252, i32 %253, i32 1, %struct.TYPE_8__* %21, i32 %254, i32 %255)
  store double %256, double* %40, align 8
  %257 = load double, double* %40, align 8
  %258 = load double, double* @DEFAULT_INEQ_SEL, align 8
  %259 = fcmp une double %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = load double, double* %40, align 8
  %262 = load double*, double** %16, align 8
  store double %261, double* %262, align 8
  br label %263

263:                                              ; preds = %260, %250
  %264 = load i32*, i32** %10, align 8
  %265 = load i32, i32* %34, align 4
  %266 = load i32, i32* %35, align 4
  %267 = load i32, i32* %37, align 4
  %268 = load i32, i32* %24, align 4
  %269 = call double @scalarineqsel(i32* %264, i32 %265, i32 %266, i32 1, %struct.TYPE_8__* %22, i32 %267, i32 %268)
  store double %269, double* %40, align 8
  %270 = load double, double* %40, align 8
  %271 = load double, double* @DEFAULT_INEQ_SEL, align 8
  %272 = fcmp une double %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %263
  %274 = load double, double* %40, align 8
  %275 = load double*, double** %18, align 8
  store double %274, double* %275, align 8
  br label %276

276:                                              ; preds = %273, %263
  %277 = load double*, double** %16, align 8
  %278 = load double, double* %277, align 8
  %279 = load double*, double** %18, align 8
  %280 = load double, double* %279, align 8
  %281 = fcmp ogt double %278, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load double*, double** %16, align 8
  store double 1.000000e+00, double* %283, align 8
  br label %296

284:                                              ; preds = %276
  %285 = load double*, double** %16, align 8
  %286 = load double, double* %285, align 8
  %287 = load double*, double** %18, align 8
  %288 = load double, double* %287, align 8
  %289 = fcmp olt double %286, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = load double*, double** %18, align 8
  store double 1.000000e+00, double* %291, align 8
  br label %295

292:                                              ; preds = %284
  %293 = load double*, double** %18, align 8
  store double 1.000000e+00, double* %293, align 8
  %294 = load double*, double** %16, align 8
  store double 1.000000e+00, double* %294, align 8
  br label %295

295:                                              ; preds = %292, %290
  br label %296

296:                                              ; preds = %295, %282
  %297 = load i32*, i32** %10, align 8
  %298 = load i32, i32* %31, align 4
  %299 = load i32, i32* %35, align 4
  %300 = load i32, i32* %38, align 4
  %301 = load i32, i32* %25, align 4
  %302 = call double @scalarineqsel(i32* %297, i32 %298, i32 %299, i32 0, %struct.TYPE_8__* %21, i32 %300, i32 %301)
  store double %302, double* %40, align 8
  %303 = load double, double* %40, align 8
  %304 = load double, double* @DEFAULT_INEQ_SEL, align 8
  %305 = fcmp une double %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %296
  %307 = load double, double* %40, align 8
  %308 = load double*, double** %15, align 8
  store double %307, double* %308, align 8
  br label %309

309:                                              ; preds = %306, %296
  %310 = load i32*, i32** %10, align 8
  %311 = load i32, i32* %33, align 4
  %312 = load i32, i32* %35, align 4
  %313 = load i32, i32* %36, align 4
  %314 = load i32, i32* %24, align 4
  %315 = call double @scalarineqsel(i32* %310, i32 %311, i32 %312, i32 0, %struct.TYPE_8__* %22, i32 %313, i32 %314)
  store double %315, double* %40, align 8
  %316 = load double, double* %40, align 8
  %317 = load double, double* @DEFAULT_INEQ_SEL, align 8
  %318 = fcmp une double %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %309
  %320 = load double, double* %40, align 8
  %321 = load double*, double** %17, align 8
  store double %320, double* %321, align 8
  br label %322

322:                                              ; preds = %319, %309
  %323 = load double*, double** %15, align 8
  %324 = load double, double* %323, align 8
  %325 = load double*, double** %17, align 8
  %326 = load double, double* %325, align 8
  %327 = fcmp olt double %324, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %322
  %329 = load double*, double** %15, align 8
  store double 0.000000e+00, double* %329, align 8
  br label %342

330:                                              ; preds = %322
  %331 = load double*, double** %15, align 8
  %332 = load double, double* %331, align 8
  %333 = load double*, double** %17, align 8
  %334 = load double, double* %333, align 8
  %335 = fcmp ogt double %332, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %330
  %337 = load double*, double** %17, align 8
  store double 0.000000e+00, double* %337, align 8
  br label %341

338:                                              ; preds = %330
  %339 = load double*, double** %17, align 8
  store double 0.000000e+00, double* %339, align 8
  %340 = load double*, double** %15, align 8
  store double 0.000000e+00, double* %340, align 8
  br label %341

341:                                              ; preds = %338, %336
  br label %342

342:                                              ; preds = %341, %328
  %343 = load i32, i32* %14, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %406

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i64 @HeapTupleIsValid(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %375

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i64 @GETSTRUCT(i32 %352)
  %354 = inttoptr i64 %353 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %354, %struct.TYPE_10__** %41, align 8
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = sitofp i64 %357 to double
  %359 = load double*, double** %15, align 8
  %360 = load double, double* %359, align 8
  %361 = fadd double %360, %358
  store double %361, double* %359, align 8
  %362 = load double*, double** %15, align 8
  %363 = load double, double* %362, align 8
  %364 = call i32 @CLAMP_PROBABILITY(double %363)
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = sitofp i64 %367 to double
  %369 = load double*, double** %16, align 8
  %370 = load double, double* %369, align 8
  %371 = fadd double %370, %368
  store double %371, double* %369, align 8
  %372 = load double*, double** %16, align 8
  %373 = load double, double* %372, align 8
  %374 = call i32 @CLAMP_PROBABILITY(double %373)
  br label %375

375:                                              ; preds = %350, %345
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @HeapTupleIsValid(i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %405

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = call i64 @GETSTRUCT(i32 %382)
  %384 = inttoptr i64 %383 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %384, %struct.TYPE_10__** %41, align 8
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = sitofp i64 %387 to double
  %389 = load double*, double** %17, align 8
  %390 = load double, double* %389, align 8
  %391 = fadd double %390, %388
  store double %391, double* %389, align 8
  %392 = load double*, double** %17, align 8
  %393 = load double, double* %392, align 8
  %394 = call i32 @CLAMP_PROBABILITY(double %393)
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = sitofp i64 %397 to double
  %399 = load double*, double** %18, align 8
  %400 = load double, double* %399, align 8
  %401 = fadd double %400, %398
  store double %401, double* %399, align 8
  %402 = load double*, double** %18, align 8
  %403 = load double, double* %402, align 8
  %404 = call i32 @CLAMP_PROBABILITY(double %403)
  br label %405

405:                                              ; preds = %380, %375
  br label %406

406:                                              ; preds = %405, %342
  %407 = load double*, double** %15, align 8
  %408 = load double, double* %407, align 8
  %409 = load double*, double** %16, align 8
  %410 = load double, double* %409, align 8
  %411 = fcmp oge double %408, %410
  br i1 %411, label %412, label %415

412:                                              ; preds = %406
  %413 = load double*, double** %15, align 8
  store double 0.000000e+00, double* %413, align 8
  %414 = load double*, double** %16, align 8
  store double 1.000000e+00, double* %414, align 8
  br label %415

415:                                              ; preds = %412, %406
  %416 = load double*, double** %17, align 8
  %417 = load double, double* %416, align 8
  %418 = load double*, double** %18, align 8
  %419 = load double, double* %418, align 8
  %420 = fcmp oge double %417, %419
  br i1 %420, label %421, label %424

421:                                              ; preds = %415
  %422 = load double*, double** %17, align 8
  store double 0.000000e+00, double* %422, align 8
  %423 = load double*, double** %18, align 8
  store double 1.000000e+00, double* %423, align 8
  br label %424

424:                                              ; preds = %421, %415
  br label %425

425:                                              ; preds = %424, %248, %242, %235, %229, %220, %187
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @ReleaseVariableStats(i32 %427)
  %429 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @ReleaseVariableStats(i32 %430)
  br label %432

432:                                              ; preds = %425, %61, %49
  ret void
}

declare dso_local i32 @is_opclause(i32*) #1

declare dso_local i32* @get_leftop(i32*) #1

declare dso_local i32* @get_rightop(i32*) #1

declare dso_local i32 @examine_variable(i32*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @get_op_opfamily_properties(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @get_opfamily_member(i32, i32, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_variable_range(i32*, %struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local double @scalarineqsel(i32*, i32, i32, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @CLAMP_PROBABILITY(double) #1

declare dso_local i32 @ReleaseVariableStats(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
