; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_typanalyze.c_compute_range_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_typanalyze.c_compute_range_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, double, double, double, i32*, i32*, i32*, i8*, double**, i32*, i32*, i32*, i32**, i32*, i32*, i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64 }

@range_bound_qsort_cmp = common dso_local global i32 0, align 4
@STATISTIC_KIND_BOUNDS_HISTOGRAM = common dso_local global i32 0, align 4
@float8_qsort_cmp = common dso_local global i32 0, align 4
@Float8LessOperator = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@FLOAT8OID = common dso_local global i32 0, align 4
@STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32 (%struct.TYPE_19__*, i32, i32*)*, i32, double)* @compute_range_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_range_stats(%struct.TYPE_19__* %0, i32 (%struct.TYPE_19__*, i32, i32*)* %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32 (%struct.TYPE_19__*, i32, i32*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_21__, align 8
  %28 = alloca %struct.TYPE_21__, align 8
  %29 = alloca double, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca double*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 (%struct.TYPE_19__*, i32, i32*)* %1, i32 (%struct.TYPE_19__*, i32, i32*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 17
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %9, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @OidIsValid(i32 %46)
  store i32 %47, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 16
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %17, align 4
  store double 0.000000e+00, double* %22, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 16, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32* @palloc(i32 %56)
  %58 = bitcast i32* %57 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %20, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 16, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32* @palloc(i32 %62)
  %64 = bitcast i32* %63 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %21, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32* @palloc(i32 %68)
  %70 = bitcast i32* %69 to double*
  store double* %70, double** %19, align 8
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %153, %4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %156

75:                                               ; preds = %71
  %76 = call i32 (...) @vacuum_delay_point()
  %77 = load i32 (%struct.TYPE_19__*, i32, i32*)*, i32 (%struct.TYPE_19__*, i32, i32*)** %6, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 %77(%struct.TYPE_19__* %78, i32 %79, i32* %24)
  store i32 %80, i32* %23, align 4
  %81 = load i32, i32* %24, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %153

86:                                               ; preds = %75
  %87 = load i32, i32* %23, align 4
  %88 = call i32 @DatumGetPointer(i32 %87)
  %89 = call i64 @VARSIZE_ANY(i32 %88)
  %90 = sitofp i64 %89 to double
  %91 = load double, double* %22, align 8
  %92 = fadd double %91, %90
  store double %92, double* %22, align 8
  %93 = load i32, i32* %23, align 4
  %94 = call i32* @DatumGetRangeTypeP(i32 %93)
  store i32* %94, i32** %26, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %96 = load i32*, i32** %26, align 8
  %97 = call i32 @range_deserialize(%struct.TYPE_20__* %95, i32* %96, %struct.TYPE_21__* %27, %struct.TYPE_21__* %28, i32* %25)
  %98 = load i32, i32* %25, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %147, label %100

100:                                              ; preds = %86
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i64 %103
  %105 = bitcast %struct.TYPE_21__* %104 to i8*
  %106 = bitcast %struct.TYPE_21__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i64 %109
  %111 = bitcast %struct.TYPE_21__* %110 to i8*
  %112 = bitcast %struct.TYPE_21__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %100
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116, %100
  %121 = call double (...) @get_float8_infinity()
  store double %121, double* %29, align 8
  br label %139

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @FunctionCall2Coll(%struct.TYPE_17__* %127, i32 %130, i32 %132, i32 %134)
  %136 = call double @DatumGetFloat8(i32 %135)
  store double %136, double* %29, align 8
  br label %138

137:                                              ; preds = %122
  store double 1.000000e+00, double* %29, align 8
  br label %138

138:                                              ; preds = %137, %125
  br label %139

139:                                              ; preds = %138, %120
  %140 = load double, double* %29, align 8
  %141 = load double*, double** %19, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  store double %140, double* %144, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %150

147:                                              ; preds = %86
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %147, %139
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %150, %83
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %71

156:                                              ; preds = %71
  store i32 0, i32* %16, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %443

159:                                              ; preds = %156
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sitofp i32 %162 to double
  %164 = load i32, i32* %7, align 4
  %165 = sitofp i32 %164 to double
  %166 = fdiv double %163, %165
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  store double %166, double* %168, align 8
  %169 = load double, double* %22, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sitofp i32 %170 to double
  %172 = fdiv double %169, %171
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  store double %172, double* %174, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load double, double* %176, align 8
  %178 = fsub double 1.000000e+00, %177
  %179 = fmul double -1.000000e+00, %178
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 3
  store double %179, double* %181, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 15
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @MemoryContextSwitchTo(i32 %184)
  store i32 %185, i32* %37, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp sge i32 %186, 2
  br i1 %187, label %188, label %287

188:                                              ; preds = %159
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @range_bound_qsort_cmp, align 4
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %193 = call i32 @qsort_arg(%struct.TYPE_21__* %189, i32 %190, i32 16, i32 %191, %struct.TYPE_20__* %192)
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @range_bound_qsort_cmp, align 4
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %198 = call i32 @qsort_arg(%struct.TYPE_21__* %194, i32 %195, i32 16, i32 %196, %struct.TYPE_20__* %197)
  %199 = load i32, i32* %13, align 4
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %188
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %203, %188
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = call i32* @palloc(i32 %210)
  store i32* %211, i32** %30, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sub nsw i32 %212, 1
  %214 = load i32, i32* %18, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sdiv i32 %213, %215
  store i32 %216, i32* %34, align 4
  %217 = load i32, i32* %13, align 4
  %218 = sub nsw i32 %217, 1
  %219 = load i32, i32* %18, align 4
  %220 = sub nsw i32 %219, 1
  %221 = srem i32 %218, %220
  store i32 %221, i32* %35, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %36, align 4
  br label %222

222:                                              ; preds = %260, %206
  %223 = load i32, i32* %36, align 4
  %224 = load i32, i32* %18, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %263

226:                                              ; preds = %222
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %229 = load i32, i32* %32, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i64 %230
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %233 = load i32, i32* %32, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i64 %234
  %236 = call i32 @range_serialize(%struct.TYPE_20__* %227, %struct.TYPE_21__* %231, %struct.TYPE_21__* %235, i32 0)
  %237 = call i32 @PointerGetDatum(i32 %236)
  %238 = load i32*, i32** %30, align 8
  %239 = load i32, i32* %36, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %237, i32* %241, align 4
  %242 = load i32, i32* %34, align 4
  %243 = load i32, i32* %32, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %32, align 4
  %245 = load i32, i32* %35, align 4
  %246 = load i32, i32* %33, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %33, align 4
  %248 = load i32, i32* %33, align 4
  %249 = load i32, i32* %18, align 4
  %250 = sub nsw i32 %249, 1
  %251 = icmp sge i32 %248, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %226
  %253 = load i32, i32* %32, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %32, align 4
  %255 = load i32, i32* %18, align 4
  %256 = sub nsw i32 %255, 1
  %257 = load i32, i32* %33, align 4
  %258 = sub nsw i32 %257, %256
  store i32 %258, i32* %33, align 4
  br label %259

259:                                              ; preds = %252, %226
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %36, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %36, align 4
  br label %222

263:                                              ; preds = %222
  %264 = load i32, i32* @STATISTIC_KIND_BOUNDS_HISTOGRAM, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 10
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %16, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 %264, i32* %270, align 4
  %271 = load i32*, i32** %30, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 12
  %274 = load i32**, i32*** %273, align 8
  %275 = load i32, i32* %16, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  store i32* %271, i32** %277, align 8
  %278 = load i32, i32* %18, align 4
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %16, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 %278, i32* %284, align 4
  %285 = load i32, i32* %16, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %16, align 4
  br label %287

287:                                              ; preds = %263, %159
  %288 = load i32, i32* %13, align 4
  %289 = icmp sge i32 %288, 2
  br i1 %289, label %290, label %355

290:                                              ; preds = %287
  %291 = load double*, double** %19, align 8
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* @float8_qsort_cmp, align 4
  %294 = call i32 @qsort(double* %291, i32 %292, i32 8, i32 %293)
  %295 = load i32, i32* %13, align 4
  store i32 %295, i32* %18, align 4
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* %17, align 4
  %298 = icmp sgt i32 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %290
  %300 = load i32, i32* %17, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %18, align 4
  br label %302

302:                                              ; preds = %299, %290
  %303 = load i32, i32* %18, align 4
  %304 = sext i32 %303 to i64
  %305 = mul i64 %304, 4
  %306 = trunc i64 %305 to i32
  %307 = call i32* @palloc(i32 %306)
  store i32* %307, i32** %31, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sub nsw i32 %308, 1
  %310 = load i32, i32* %18, align 4
  %311 = sub nsw i32 %310, 1
  %312 = sdiv i32 %309, %311
  store i32 %312, i32* %34, align 4
  %313 = load i32, i32* %13, align 4
  %314 = sub nsw i32 %313, 1
  %315 = load i32, i32* %18, align 4
  %316 = sub nsw i32 %315, 1
  %317 = srem i32 %314, %316
  store i32 %317, i32* %35, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %36, align 4
  br label %318

318:                                              ; preds = %351, %302
  %319 = load i32, i32* %36, align 4
  %320 = load i32, i32* %18, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %354

322:                                              ; preds = %318
  %323 = load double*, double** %19, align 8
  %324 = load i32, i32* %32, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds double, double* %323, i64 %325
  %327 = load double, double* %326, align 8
  %328 = call i32 @Float8GetDatum(double %327)
  %329 = load i32*, i32** %31, align 8
  %330 = load i32, i32* %36, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %328, i32* %332, align 4
  %333 = load i32, i32* %34, align 4
  %334 = load i32, i32* %32, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %32, align 4
  %336 = load i32, i32* %35, align 4
  %337 = load i32, i32* %33, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %33, align 4
  %339 = load i32, i32* %33, align 4
  %340 = load i32, i32* %18, align 4
  %341 = sub nsw i32 %340, 1
  %342 = icmp sge i32 %339, %341
  br i1 %342, label %343, label %350

343:                                              ; preds = %322
  %344 = load i32, i32* %32, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %32, align 4
  %346 = load i32, i32* %18, align 4
  %347 = sub nsw i32 %346, 1
  %348 = load i32, i32* %33, align 4
  %349 = sub nsw i32 %348, %347
  store i32 %349, i32* %33, align 4
  br label %350

350:                                              ; preds = %343, %322
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %36, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %36, align 4
  br label %318

354:                                              ; preds = %318
  br label %357

355:                                              ; preds = %287
  %356 = call i32* @palloc(i32 0)
  store i32* %356, i32** %31, align 8
  store i32 0, i32* %18, align 4
  br label %357

357:                                              ; preds = %355, %354
  %358 = load i32, i32* @Float8LessOperator, align 4
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 14
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %16, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 %358, i32* %364, align 4
  %365 = load i32, i32* @InvalidOid, align 4
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 13
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %16, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %365, i32* %371, align 4
  %372 = load i32*, i32** %31, align 8
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 12
  %375 = load i32**, i32*** %374, align 8
  %376 = load i32, i32* %16, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32*, i32** %375, i64 %377
  store i32* %372, i32** %378, align 8
  %379 = load i32, i32* %18, align 4
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  store i32 %379, i32* %385, align 4
  %386 = load i32, i32* @FLOAT8OID, align 4
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 11
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %16, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  store i32 %386, i32* %392, align 4
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 5
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %16, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  store i32 8, i32* %398, align 4
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 6
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  store i32 0, i32* %404, align 4
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 7
  %407 = load i8*, i8** %406, align 8
  %408 = load i32, i32* %16, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %407, i64 %409
  store i8 100, i8* %410, align 1
  %411 = call i32* @palloc(i32 8)
  %412 = bitcast i32* %411 to double*
  store double* %412, double** %38, align 8
  %413 = load i32, i32* %14, align 4
  %414 = sitofp i32 %413 to double
  %415 = load i32, i32* %12, align 4
  %416 = sitofp i32 %415 to double
  %417 = fdiv double %414, %416
  %418 = load double*, double** %38, align 8
  store double %417, double* %418, align 8
  %419 = load double*, double** %38, align 8
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 8
  %422 = load double**, double*** %421, align 8
  %423 = load i32, i32* %16, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds double*, double** %422, i64 %424
  store double* %419, double** %425, align 8
  %426 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 9
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %16, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  store i32 1, i32* %431, align 4
  %432 = load i32, i32* @STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM, align 4
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 10
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %16, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store i32 %432, i32* %438, align 4
  %439 = load i32, i32* %16, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %16, align 4
  %441 = load i32, i32* %37, align 4
  %442 = call i32 @MemoryContextSwitchTo(i32 %441)
  br label %456

443:                                              ; preds = %156
  %444 = load i32, i32* %11, align 4
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %443
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i32 0, i32 0
  store i32 1, i32* %448, align 8
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 1
  store double 1.000000e+00, double* %450, align 8
  %451 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %451, i32 0, i32 2
  store double 0.000000e+00, double* %452, align 8
  %453 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i32 0, i32 3
  store double 0.000000e+00, double* %454, align 8
  br label %455

455:                                              ; preds = %446, %443
  br label %456

456:                                              ; preds = %455, %357
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i64 @VARSIZE_ANY(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32* @DatumGetRangeTypeP(i32) #1

declare dso_local i32 @range_deserialize(%struct.TYPE_20__*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local double @get_float8_infinity(...) #1

declare dso_local double @DatumGetFloat8(i32) #1

declare dso_local i32 @FunctionCall2Coll(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @qsort_arg(%struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @range_serialize(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @qsort(double*, i32, i32, i32) #1

declare dso_local i32 @Float8GetDatum(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
