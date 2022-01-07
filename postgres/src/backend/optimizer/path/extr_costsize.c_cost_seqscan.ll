; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_seqscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_seqscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { double, i64, double, double, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { double, double }
%struct.TYPE_16__ = type { i64, i64, double, double, double, i32 }
%struct.TYPE_19__ = type { double }
%struct.TYPE_17__ = type { double, double }

@RTE_RELATION = common dso_local global i64 0, align 8
@enable_seqscan = common dso_local global i32 0, align 4
@disable_cost = common dso_local global double 0.000000e+00, align 8
@cpu_tuple_cost = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cost_seqscan(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_16__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RTE_RELATION, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store double %34, double* %36, align 8
  br label %43

37:                                               ; preds = %4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  store double %40, double* %42, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @enable_seqscan, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load double, double* @disable_cost, align 8
  %48 = load double, double* %9, align 8
  %49 = fadd double %48, %47
  store double %49, double* %9, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @get_tablespace_page_costs(i32 %53, i32* null, double* %12)
  %55 = load double, double* %12, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load double, double* %57, align 8
  %59 = fmul double %55, %58
  store double %59, double* %11, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = call i32 @get_restriction_qual_cost(i32* %60, %struct.TYPE_16__* %61, %struct.TYPE_19__* %62, %struct.TYPE_17__* %13)
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = load double, double* %9, align 8
  %67 = fadd double %66, %65
  store double %67, double* %9, align 8
  %68 = load double, double* @cpu_tuple_cost, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = fadd double %68, %70
  store double %71, double* %14, align 8
  %72 = load double, double* %14, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = load double, double* %74, align 8
  %76 = fmul double %72, %75
  store double %76, double* %10, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = load double, double* %9, align 8
  %84 = fadd double %83, %82
  store double %84, double* %9, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = fmul double %90, %93
  %95 = load double, double* %10, align 8
  %96 = fadd double %95, %94
  store double %96, double* %10, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %50
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = call double @get_parallel_divisor(%struct.TYPE_18__* %102)
  store double %103, double* %15, align 8
  %104 = load double, double* %15, align 8
  %105 = load double, double* %10, align 8
  %106 = fdiv double %105, %104
  store double %106, double* %10, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load double, double* %108, align 8
  %110 = load double, double* %15, align 8
  %111 = fdiv double %109, %110
  %112 = call double @clamp_row_est(double %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store double %112, double* %114, align 8
  br label %115

115:                                              ; preds = %101, %50
  %116 = load double, double* %9, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  store double %116, double* %118, align 8
  %119 = load double, double* %9, align 8
  %120 = load double, double* %10, align 8
  %121 = fadd double %119, %120
  %122 = load double, double* %11, align 8
  %123 = fadd double %121, %122
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  store double %123, double* %125, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @get_tablespace_page_costs(i32, i32*, double*) #1

declare dso_local i32 @get_restriction_qual_cost(i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local double @get_parallel_divisor(%struct.TYPE_18__*) #1

declare dso_local double @clamp_row_est(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
