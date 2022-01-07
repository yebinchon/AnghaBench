; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_final_cost_nestloop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_final_cost_nestloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, %struct.TYPE_18__, i32, %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { double, i64, double, double, %struct.TYPE_23__*, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { double, i32 }
%struct.TYPE_20__ = type { double }
%struct.TYPE_19__ = type { double }
%struct.TYPE_25__ = type { double }
%struct.TYPE_17__ = type { double, double, double, double }
%struct.TYPE_27__ = type { %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { double, double }
%struct.TYPE_24__ = type { double, double }

@enable_nestloop = common dso_local global i32 0, align 4
@disable_cost = common dso_local global double 0.000000e+00, align 8
@JOIN_SEMI = common dso_local global i64 0, align 8
@JOIN_ANTI = common dso_local global i64 0, align 8
@cpu_tuple_cost = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @final_cost_nestloop(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_17__* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_24__, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %8, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %9, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %10, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  store double %32, double* %11, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  store double %35, double* %12, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  store double %38, double* %13, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  store double %41, double* %14, align 8
  %42 = load double, double* %11, align 8
  %43 = fcmp ole double %42, 0.000000e+00
  br i1 %43, label %48, label %44

44:                                               ; preds = %4
  %45 = load double, double* %11, align 8
  %46 = call i64 @isnan(double %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %4
  store double 1.000000e+00, double* %11, align 8
  br label %49

49:                                               ; preds = %48, %44
  %50 = load double, double* %12, align 8
  %51 = fcmp ole double %50, 0.000000e+00
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load double, double* %12, align 8
  %54 = call i64 @isnan(double %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %49
  store double 1.000000e+00, double* %12, align 8
  br label %57

57:                                               ; preds = %56, %52
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store double %69, double* %72, align 8
  br label %83

73:                                               ; preds = %57
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store double %79, double* %82, align 8
  br label %83

83:                                               ; preds = %73, %63
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = call double @get_parallel_divisor(%struct.TYPE_18__* %91)
  store double %92, double* %18, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = load double, double* %18, align 8
  %98 = fdiv double %96, %97
  %99 = call double @clamp_row_est(double %98)
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  store double %99, double* %102, align 8
  br label %103

103:                                              ; preds = %89, %83
  %104 = load i32, i32* @enable_nestloop, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load double, double* @disable_cost, align 8
  %108 = load double, double* %13, align 8
  %109 = fadd double %108, %107
  store double %109, double* %13, align 8
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @JOIN_SEMI, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %127, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @JOIN_ANTI, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %222

127:                                              ; preds = %122, %116, %110
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load double, double* %129, align 8
  store double %130, double* %19, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load double, double* %132, align 8
  store double %133, double* %20, align 8
  %134 = load double, double* %11, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = fmul double %134, %138
  %140 = call double @llvm.rint.f64(double %139)
  store double %140, double* %21, align 8
  %141 = load double, double* %11, align 8
  %142 = load double, double* %21, align 8
  %143 = fsub double %141, %142
  store double %143, double* %22, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load double, double* %146, align 8
  %148 = fadd double %147, 1.000000e+00
  %149 = fdiv double 2.000000e+00, %148
  store double %149, double* %23, align 8
  %150 = load double, double* %21, align 8
  %151 = load double, double* %12, align 8
  %152 = fmul double %150, %151
  %153 = load double, double* %23, align 8
  %154 = fmul double %152, %153
  store double %154, double* %17, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %156 = call i64 @has_indexed_join_quals(%struct.TYPE_26__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %127
  %159 = load double, double* %19, align 8
  %160 = load double, double* %23, align 8
  %161 = fmul double %159, %160
  %162 = load double, double* %14, align 8
  %163 = fadd double %162, %161
  store double %163, double* %14, align 8
  %164 = load double, double* %21, align 8
  %165 = fcmp ogt double %164, 1.000000e+00
  br i1 %165, label %166, label %175

166:                                              ; preds = %158
  %167 = load double, double* %21, align 8
  %168 = fsub double %167, 1.000000e+00
  %169 = load double, double* %20, align 8
  %170 = fmul double %168, %169
  %171 = load double, double* %23, align 8
  %172 = fmul double %170, %171
  %173 = load double, double* %14, align 8
  %174 = fadd double %173, %172
  store double %174, double* %14, align 8
  br label %175

175:                                              ; preds = %166, %158
  %176 = load double, double* %22, align 8
  %177 = load double, double* %20, align 8
  %178 = fmul double %176, %177
  %179 = load double, double* %12, align 8
  %180 = fdiv double %178, %179
  %181 = load double, double* %14, align 8
  %182 = fadd double %181, %180
  store double %182, double* %14, align 8
  br label %221

183:                                              ; preds = %127
  %184 = load double, double* %22, align 8
  %185 = load double, double* %12, align 8
  %186 = fmul double %184, %185
  %187 = load double, double* %17, align 8
  %188 = fadd double %187, %186
  store double %188, double* %17, align 8
  %189 = load double, double* %19, align 8
  %190 = load double, double* %14, align 8
  %191 = fadd double %190, %189
  store double %191, double* %14, align 8
  %192 = load double, double* %22, align 8
  %193 = fcmp oge double %192, 1.000000e+00
  br i1 %193, label %194, label %197

194:                                              ; preds = %183
  %195 = load double, double* %22, align 8
  %196 = fsub double %195, 1.000000e+00
  store double %196, double* %22, align 8
  br label %200

197:                                              ; preds = %183
  %198 = load double, double* %21, align 8
  %199 = fsub double %198, 1.000000e+00
  store double %199, double* %21, align 8
  br label %200

200:                                              ; preds = %197, %194
  %201 = load double, double* %21, align 8
  %202 = fcmp ogt double %201, 0.000000e+00
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load double, double* %21, align 8
  %205 = load double, double* %20, align 8
  %206 = fmul double %204, %205
  %207 = load double, double* %23, align 8
  %208 = fmul double %206, %207
  %209 = load double, double* %14, align 8
  %210 = fadd double %209, %208
  store double %210, double* %14, align 8
  br label %211

211:                                              ; preds = %203, %200
  %212 = load double, double* %22, align 8
  %213 = fcmp ogt double %212, 0.000000e+00
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load double, double* %22, align 8
  %216 = load double, double* %20, align 8
  %217 = fmul double %215, %216
  %218 = load double, double* %14, align 8
  %219 = fadd double %218, %217
  store double %219, double* %14, align 8
  br label %220

220:                                              ; preds = %214, %211
  br label %221

221:                                              ; preds = %220, %175
  br label %226

222:                                              ; preds = %122
  %223 = load double, double* %11, align 8
  %224 = load double, double* %12, align 8
  %225 = fmul double %223, %224
  store double %225, double* %17, align 8
  br label %226

226:                                              ; preds = %222, %221
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = call i32 @cost_qual_eval(%struct.TYPE_24__* %16, i32 %229, i32* %230)
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %233 = load double, double* %232, align 8
  %234 = load double, double* %13, align 8
  %235 = fadd double %234, %233
  store double %235, double* %13, align 8
  %236 = load double, double* @cpu_tuple_cost, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %238 = load double, double* %237, align 8
  %239 = fadd double %236, %238
  store double %239, double* %15, align 8
  %240 = load double, double* %15, align 8
  %241 = load double, double* %17, align 8
  %242 = fmul double %240, %241
  %243 = load double, double* %14, align 8
  %244 = fadd double %243, %242
  store double %244, double* %14, align 8
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  %251 = load double, double* %250, align 8
  %252 = load double, double* %13, align 8
  %253 = fadd double %252, %251
  store double %253, double* %13, align 8
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = sitofp i32 %260 to double
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = load double, double* %264, align 8
  %266 = fmul double %261, %265
  %267 = load double, double* %14, align 8
  %268 = fadd double %267, %266
  store double %268, double* %14, align 8
  %269 = load double, double* %13, align 8
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 2
  store double %269, double* %272, align 8
  %273 = load double, double* %13, align 8
  %274 = load double, double* %14, align 8
  %275 = fadd double %273, %274
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 3
  store double %275, double* %278, align 8
  ret void
}

declare dso_local i64 @isnan(double) #1

declare dso_local double @get_parallel_divisor(%struct.TYPE_18__*) #1

declare dso_local double @clamp_row_est(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #2

declare dso_local i64 @has_indexed_join_quals(%struct.TYPE_26__*) #1

declare dso_local i32 @cost_qual_eval(%struct.TYPE_24__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
