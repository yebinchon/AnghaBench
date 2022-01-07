; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank_cd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }

@weights = common dso_local global i64* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"weight out of range\00", align 1
@RANK_NORM_LOGLENGTH = common dso_local global i32 0, align 4
@RANK_NORM_LENGTH = common dso_local global i32 0, align 4
@RANK_NORM_EXTDIST = common dso_local global i32 0, align 4
@RANK_NORM_UNIQ = common dso_local global i32 0, align 4
@RANK_NORM_LOGUNIQ = common dso_local global i32 0, align 4
@RANK_NORM_RDIVRPLUS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32)* @calc_rank_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_rank_cd(i64* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca double, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_21__, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_20__*, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store double 0.000000e+00, double* %15, align 8
  %28 = load i64*, i64** @weights, align 8
  %29 = call i32 @lengthof(i64* %28)
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca double, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  store double 0.000000e+00, double* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %83, %4
  %34 = load i32, i32* %12, align 4
  %35 = load i64*, i64** @weights, align 8
  %36 = call i32 @lengthof(i64* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %33
  %39 = load i64*, i64** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  br label %57

51:                                               ; preds = %38
  %52 = load i64*, i64** @weights, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = phi i64 [ %50, %45 ], [ %56, %51 ]
  %59 = sitofp i64 %58 to double
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %32, i64 %61
  store double %59, double* %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %32, i64 %64
  %66 = load double, double* %65, align 8
  %67 = fcmp ogt double %66, 1.000000e+00
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %57
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %32, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fdiv double 1.000000e+00, %78
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %32, i64 %81
  store double %79, double* %82, align 8
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %33

86:                                               ; preds = %33
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call i64 @palloc0(i32 %94)
  %96 = inttoptr i64 %95 to %struct.TYPE_20__*
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = call %struct.TYPE_20__* @get_docrep(%struct.TYPE_18__* %98, %struct.TYPE_21__* %22, i32* %13)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %10, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %101 = icmp ne %struct.TYPE_20__* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %86
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = call i32 @pfree(%struct.TYPE_20__* %104)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %314

106:                                              ; preds = %86
  %107 = call i32 @MemSet(%struct.TYPE_22__* %14, i32 0, i32 24)
  br label %108

108:                                              ; preds = %202, %106
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @Cover(%struct.TYPE_20__* %109, i32 %110, %struct.TYPE_21__* %22, %struct.TYPE_22__* %14)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %206

113:                                              ; preds = %108
  store double 0.000000e+00, double* %24, align 8
  store double 0.000000e+00, double* %25, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %27, align 8
  br label %116

116:                                              ; preds = %121, %113
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = icmp ule %struct.TYPE_20__* %117, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @WEP_GETWEIGHT(i32 %124)
  %126 = getelementptr inbounds double, double* %32, i64 %125
  %127 = load double, double* %126, align 8
  %128 = load double, double* %25, align 8
  %129 = fadd double %128, %127
  store double %129, double* %25, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 1
  store %struct.TYPE_20__* %131, %struct.TYPE_20__** %27, align 8
  br label %116

132:                                              ; preds = %116
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = ptrtoint %struct.TYPE_20__* %134 to i64
  %138 = ptrtoint %struct.TYPE_20__* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = add nsw i64 %140, 1
  %142 = sitofp i64 %141 to double
  %143 = load double, double* %25, align 8
  %144 = fdiv double %142, %143
  store double %144, double* %24, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %146, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = ptrtoint %struct.TYPE_20__* %152 to i64
  %156 = ptrtoint %struct.TYPE_20__* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = sub nsw i64 %150, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %26, align 4
  %161 = load i32, i32* %26, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %132
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = ptrtoint %struct.TYPE_20__* %165 to i64
  %169 = ptrtoint %struct.TYPE_20__* %167 to i64
  %170 = sub i64 %168, %169
  %171 = sdiv exact i64 %170, 4
  %172 = sdiv i64 %171, 2
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %26, align 4
  br label %174

174:                                              ; preds = %163, %132
  %175 = load double, double* %24, align 8
  %176 = load i32, i32* %26, align 4
  %177 = add nsw i32 1, %176
  %178 = sitofp i32 %177 to double
  %179 = fdiv double %175, %178
  %180 = load double, double* %15, align 8
  %181 = fadd double %180, %179
  store double %181, double* %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %183, %185
  %187 = sitofp i32 %186 to double
  %188 = fdiv double %187, 2.000000e+00
  store double %188, double* %20, align 8
  %189 = load i32, i32* %21, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %174
  %192 = load double, double* %20, align 8
  %193 = load double, double* %19, align 8
  %194 = fcmp ogt double %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load double, double* %20, align 8
  %197 = load double, double* %19, align 8
  %198 = fsub double %196, %197
  %199 = fdiv double 1.000000e+00, %198
  %200 = load double, double* %18, align 8
  %201 = fadd double %200, %199
  store double %201, double* %18, align 8
  br label %202

202:                                              ; preds = %195, %191, %174
  %203 = load double, double* %20, align 8
  store double %203, double* %19, align 8
  %204 = load i32, i32* %21, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %21, align 4
  br label %108

206:                                              ; preds = %108
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @RANK_NORM_LOGLENGTH, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %206
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %218 = call i32 @cnt_length(%struct.TYPE_18__* %217)
  %219 = add nsw i32 %218, 1
  %220 = sitofp i32 %219 to double
  %221 = call double @log(double %220) #2
  %222 = load double, double* %15, align 8
  %223 = fdiv double %222, %221
  store double %223, double* %15, align 8
  br label %224

224:                                              ; preds = %216, %211, %206
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @RANK_NORM_LENGTH, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %231 = call i32 @cnt_length(%struct.TYPE_18__* %230)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load i32, i32* %11, align 4
  %236 = sitofp i32 %235 to double
  %237 = load double, double* %15, align 8
  %238 = fdiv double %237, %236
  store double %238, double* %15, align 8
  br label %239

239:                                              ; preds = %234, %229
  br label %240

240:                                              ; preds = %239, %224
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @RANK_NORM_EXTDIST, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %240
  %246 = load i32, i32* %21, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %245
  %249 = load double, double* %18, align 8
  %250 = fcmp ogt double %249, 0.000000e+00
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load i32, i32* %21, align 4
  %253 = sitofp i32 %252 to double
  %254 = load double, double* %18, align 8
  %255 = fdiv double %253, %254
  %256 = load double, double* %15, align 8
  %257 = fdiv double %256, %255
  store double %257, double* %15, align 8
  br label %258

258:                                              ; preds = %251, %248, %245, %240
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @RANK_NORM_UNIQ, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %258
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = sitofp i64 %271 to double
  %273 = load double, double* %15, align 8
  %274 = fdiv double %273, %272
  store double %274, double* %15, align 8
  br label %275

275:                                              ; preds = %268, %263, %258
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @RANK_NORM_LOGUNIQ, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %296

280:                                              ; preds = %275
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %280
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, 1
  %290 = sitofp i64 %289 to double
  %291 = call double @log(double %290) #2
  %292 = call double @log(double 2.000000e+00) #2
  %293 = fdiv double %291, %292
  %294 = load double, double* %15, align 8
  %295 = fdiv double %294, %293
  store double %295, double* %15, align 8
  br label %296

296:                                              ; preds = %285, %280, %275
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @RANK_NORM_RDIVRPLUS1, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load double, double* %15, align 8
  %303 = fadd double %302, 1.000000e+00
  %304 = load double, double* %15, align 8
  %305 = fdiv double %304, %303
  store double %305, double* %15, align 8
  br label %306

306:                                              ; preds = %301, %296
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %308 = call i32 @pfree(%struct.TYPE_20__* %307)
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %309, align 8
  %311 = call i32 @pfree(%struct.TYPE_20__* %310)
  %312 = load double, double* %15, align 8
  %313 = fptosi double %312 to i64
  store i64 %313, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %314

314:                                              ; preds = %306, %102
  %315 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %315)
  %316 = load i64, i64* %5, align 8
  ret i64 %316
}

declare dso_local i32 @lengthof(i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local %struct.TYPE_20__* @get_docrep(%struct.TYPE_18__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_20__*) #1

declare dso_local i32 @MemSet(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @Cover(%struct.TYPE_20__*, i32, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @WEP_GETWEIGHT(i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #3

declare dso_local i32 @cnt_length(%struct.TYPE_18__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
