; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_networkjoinsel_inner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_networkjoinsel_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { double }
%struct.TYPE_11__ = type { i32, i32, i32 }

@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@STATISTIC_KIND_HISTOGRAM = common dso_local global i32 0, align 4
@MAX_CONSIDERED_ELEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, %struct.TYPE_9__*, %struct.TYPE_9__*)* @networkjoinsel_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @networkjoinsel_inner(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__, align 4
  %21 = alloca %struct.TYPE_11__, align 4
  %22 = alloca %struct.TYPE_11__, align 4
  %23 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @GETSTRUCT(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  store double %37, double* %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %42 = load i32, i32* @InvalidOid, align 4
  %43 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %44 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @get_attstatsslot(%struct.TYPE_11__* %20, i32 %40, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %51 = load i32, i32* @InvalidOid, align 4
  %52 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %53 = call i32 @get_attstatsslot(%struct.TYPE_11__* %22, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX_CONSIDERED_ELEMS, align 4
  %57 = call i32 @Min(i32 %55, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %29
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call double @mcv_population(i32 %62, i32 %63)
  store double %64, double* %11, align 8
  br label %65

65:                                               ; preds = %60, %29
  br label %69

66:                                               ; preds = %3
  %67 = call i32 @memset(%struct.TYPE_11__* %20, i32 0, i32 12)
  %68 = call i32 @memset(%struct.TYPE_11__* %22, i32 0, i32 12)
  br label %69

69:                                               ; preds = %66, %65
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @HeapTupleIsValid(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %69
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @GETSTRUCT(i32 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load double, double* %82, align 8
  store double %83, double* %9, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %88 = load i32, i32* @InvalidOid, align 4
  %89 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %90 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @get_attstatsslot(%struct.TYPE_11__* %21, i32 %86, i32 %87, i32 %88, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %97 = load i32, i32* @InvalidOid, align 4
  %98 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %99 = call i32 @get_attstatsslot(%struct.TYPE_11__* %23, i32 %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MAX_CONSIDERED_ELEMS, align 4
  %103 = call i32 @Min(i32 %101, i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %75
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %19, align 4
  %110 = call double @mcv_population(i32 %108, i32 %109)
  store double %110, double* %12, align 8
  br label %111

111:                                              ; preds = %106, %75
  br label %115

112:                                              ; preds = %69
  %113 = call i32 @memset(%struct.TYPE_11__* %21, i32 0, i32 12)
  %114 = call i32 @memset(%struct.TYPE_11__* %23, i32 0, i32 12)
  br label %115

115:                                              ; preds = %112, %111
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @inet_opr_codenum(i32 %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %115
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %18, align 4
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i64 @inet_mcv_join_sel(i32 %125, i32 %127, i32 %128, i32 %130, i32 %132, i32 %133, i32 %134)
  %136 = sitofp i64 %135 to double
  %137 = load double, double* %10, align 8
  %138 = fadd double %137, %136
  store double %138, double* %10, align 8
  br label %139

139:                                              ; preds = %123, %120, %115
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %142
  %146 = load double, double* %9, align 8
  %147 = fsub double 1.000000e+00, %146
  %148 = load double, double* %12, align 8
  %149 = fsub double %147, %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %18, align 4
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %17, align 4
  %160 = call double @inet_mcv_hist_sel(i32 %151, i32 %153, i32 %154, i32 %156, i32 %158, i32 %159)
  %161 = fmul double %149, %160
  %162 = load double, double* %10, align 8
  %163 = fadd double %162, %161
  store double %163, double* %10, align 8
  br label %164

164:                                              ; preds = %145, %142, %139
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %167
  %171 = load double, double* %8, align 8
  %172 = fsub double 1.000000e+00, %171
  %173 = load double, double* %11, align 8
  %174 = fsub double %172, %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %19, align 4
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %17, align 4
  %185 = sub nsw i32 0, %184
  %186 = call double @inet_mcv_hist_sel(i32 %176, i32 %178, i32 %179, i32 %181, i32 %183, i32 %185)
  %187 = fmul double %174, %186
  %188 = load double, double* %10, align 8
  %189 = fadd double %188, %187
  store double %189, double* %10, align 8
  br label %190

190:                                              ; preds = %170, %167, %164
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %190
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load double, double* %8, align 8
  %198 = fsub double 1.000000e+00, %197
  %199 = load double, double* %11, align 8
  %200 = fsub double %198, %199
  %201 = load double, double* %9, align 8
  %202 = fsub double 1.000000e+00, %201
  %203 = load double, double* %12, align 8
  %204 = fsub double %202, %203
  %205 = fmul double %200, %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call double @inet_hist_inclusion_join_sel(i32 %207, i32 %209, i32 %211, i32 %213, i32 %214)
  %216 = fmul double %205, %215
  %217 = load double, double* %10, align 8
  %218 = fadd double %217, %216
  store double %218, double* %10, align 8
  br label %219

219:                                              ; preds = %196, %193, %190
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %14, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %16, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %228, %222
  %232 = load double, double* %8, align 8
  %233 = fsub double 1.000000e+00, %232
  %234 = load double, double* %9, align 8
  %235 = fsub double 1.000000e+00, %234
  %236 = fmul double %233, %235
  %237 = load i32, i32* %4, align 4
  %238 = call double @DEFAULT_SEL(i32 %237)
  %239 = fmul double %236, %238
  store double %239, double* %10, align 8
  br label %240

240:                                              ; preds = %231, %228, %225
  %241 = call i32 @free_attstatsslot(%struct.TYPE_11__* %20)
  %242 = call i32 @free_attstatsslot(%struct.TYPE_11__* %21)
  %243 = call i32 @free_attstatsslot(%struct.TYPE_11__* %22)
  %244 = call i32 @free_attstatsslot(%struct.TYPE_11__* %23)
  %245 = load double, double* %10, align 8
  ret double %245
}

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @get_attstatsslot(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local double @mcv_population(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @inet_opr_codenum(i32) #1

declare dso_local i64 @inet_mcv_join_sel(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local double @inet_mcv_hist_sel(i32, i32, i32, i32, i32, i32) #1

declare dso_local double @inet_hist_inclusion_join_sel(i32, i32, i32, i32, i32) #1

declare dso_local double @DEFAULT_SEL(i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
