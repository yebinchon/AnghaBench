; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_estimate_hash_bucket_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_estimate_hash_bucket_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { double, double }
%struct.TYPE_13__ = type { i64, double* }
%struct.TYPE_12__ = type { double }

@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @estimate_hash_bucket_stats(i32* %0, i32* %1, double %2, double* %3, double* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store double %2, double* %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @examine_variable(i32* %19, i32* %20, i32 0, %struct.TYPE_11__* %11)
  %22 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %31 = load i32, i32* @InvalidOid, align 4
  %32 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %33 = call i64 @get_attstatsslot(%struct.TYPE_13__* %17, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %41 = load double*, double** %40, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  %43 = load double, double* %42, align 8
  %44 = load double*, double** %9, align 8
  store double %43, double* %44, align 8
  br label %45

45:                                               ; preds = %39, %35
  %46 = call i32 @free_attstatsslot(%struct.TYPE_13__* %17)
  br label %47

47:                                               ; preds = %45, %27
  br label %48

48:                                               ; preds = %47, %5
  %49 = call double @get_variable_numdistinct(%struct.TYPE_11__* %11, i32* %16)
  store double %49, double* %13, align 8
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load double*, double** %9, align 8
  %54 = load double, double* %53, align 8
  %55 = call i64 @Max(double 1.000000e-01, double %54)
  %56 = sitofp i64 %55 to double
  %57 = load double*, double** %10, align 8
  store double %56, double* %57, align 8
  %58 = bitcast %struct.TYPE_11__* %11 to { %struct.TYPE_10__*, i32 }*
  %59 = getelementptr inbounds { %struct.TYPE_10__*, i32 }, { %struct.TYPE_10__*, i32 }* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds { %struct.TYPE_10__*, i32 }, { %struct.TYPE_10__*, i32 }* %58, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ReleaseVariableStats(%struct.TYPE_10__* %60, i32 %62)
  br label %149

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @HeapTupleIsValid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @GETSTRUCT(i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %18, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  store double %76, double* %14, align 8
  br label %78

77:                                               ; preds = %64
  store double 0.000000e+00, double* %14, align 8
  br label %78

78:                                               ; preds = %77, %69
  %79 = load double, double* %14, align 8
  %80 = fsub double 1.000000e+00, %79
  %81 = load double, double* %13, align 8
  %82 = fdiv double %80, %81
  store double %82, double* %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fcmp ogt double %90, 0.000000e+00
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = fdiv double %96, %100
  %102 = load double, double* %13, align 8
  %103 = fmul double %102, %101
  store double %103, double* %13, align 8
  %104 = load double, double* %13, align 8
  %105 = call double @clamp_row_est(double %104)
  store double %105, double* %13, align 8
  br label %106

106:                                              ; preds = %92, %86, %78
  %107 = load double, double* %13, align 8
  %108 = load double, double* %8, align 8
  %109 = fcmp ogt double %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load double, double* %8, align 8
  %112 = fdiv double 1.000000e+00, %111
  store double %112, double* %12, align 8
  br label %116

113:                                              ; preds = %106
  %114 = load double, double* %13, align 8
  %115 = fdiv double 1.000000e+00, %114
  store double %115, double* %12, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load double, double* %15, align 8
  %118 = fcmp ogt double %117, 0.000000e+00
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load double*, double** %9, align 8
  %121 = load double, double* %120, align 8
  %122 = load double, double* %15, align 8
  %123 = fcmp ogt double %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load double*, double** %9, align 8
  %126 = load double, double* %125, align 8
  %127 = load double, double* %15, align 8
  %128 = fdiv double %126, %127
  %129 = load double, double* %12, align 8
  %130 = fmul double %129, %128
  store double %130, double* %12, align 8
  br label %131

131:                                              ; preds = %124, %119, %116
  %132 = load double, double* %12, align 8
  %133 = fcmp olt double %132, 0x3EB0C6F7A0B5ED8D
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store double 0x3EB0C6F7A0B5ED8D, double* %12, align 8
  br label %140

135:                                              ; preds = %131
  %136 = load double, double* %12, align 8
  %137 = fcmp ogt double %136, 1.000000e+00
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store double 1.000000e+00, double* %12, align 8
  br label %139

139:                                              ; preds = %138, %135
  br label %140

140:                                              ; preds = %139, %134
  %141 = load double, double* %12, align 8
  %142 = load double*, double** %10, align 8
  store double %141, double* %142, align 8
  %143 = bitcast %struct.TYPE_11__* %11 to { %struct.TYPE_10__*, i32 }*
  %144 = getelementptr inbounds { %struct.TYPE_10__*, i32 }, { %struct.TYPE_10__*, i32 }* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds { %struct.TYPE_10__*, i32 }, { %struct.TYPE_10__*, i32 }* %143, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ReleaseVariableStats(%struct.TYPE_10__* %145, i32 %147)
  br label %149

149:                                              ; preds = %140, %52
  ret void
}

declare dso_local i32 @examine_variable(i32*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_13__*) #1

declare dso_local double @get_variable_numdistinct(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @Max(double, double) #1

declare dso_local i32 @ReleaseVariableStats(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local double @clamp_row_est(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
