; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_gather_merge.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_gather_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { double, double, double }
%struct.TYPE_9__ = type { double }
%struct.TYPE_10__ = type { double }

@enable_gathermerge = common dso_local global i32 0, align 4
@disable_cost = common dso_local global double 0.000000e+00, align 8
@cpu_operator_cost = common dso_local global double 0.000000e+00, align 8
@parallel_setup_cost = common dso_local global double 0.000000e+00, align 8
@parallel_tuple_cost = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cost_gather_merge(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %3, double %4, double %5, double* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double* %6, double** %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  %20 = load double*, double** %14, align 8
  %21 = icmp ne double* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load double*, double** %14, align 8
  %24 = load double, double* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store double %24, double* %27, align 8
  br label %46

28:                                               ; preds = %7
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store double %34, double* %37, align 8
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store double %41, double* %44, align 8
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* @enable_gathermerge, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load double, double* @disable_cost, align 8
  %51 = load double, double* %15, align 8
  %52 = fadd double %51, %50
  store double %52, double* %15, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = fadd double %63, 1.000000e+00
  store double %64, double* %18, align 8
  %65 = load double, double* %18, align 8
  %66 = call double @LOG2(double %65)
  store double %66, double* %19, align 8
  %67 = load double, double* @cpu_operator_cost, align 8
  %68 = fmul double 2.000000e+00, %67
  store double %68, double* %17, align 8
  %69 = load double, double* %17, align 8
  %70 = load double, double* %18, align 8
  %71 = fmul double %69, %70
  %72 = load double, double* %19, align 8
  %73 = fmul double %71, %72
  %74 = load double, double* %15, align 8
  %75 = fadd double %74, %73
  store double %75, double* %15, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load double, double* %17, align 8
  %81 = fmul double %79, %80
  %82 = load double, double* %19, align 8
  %83 = fmul double %81, %82
  %84 = load double, double* %16, align 8
  %85 = fadd double %84, %83
  store double %85, double* %16, align 8
  %86 = load double, double* @cpu_operator_cost, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fmul double %86, %90
  %92 = load double, double* %16, align 8
  %93 = fadd double %92, %91
  store double %93, double* %16, align 8
  %94 = load double, double* @parallel_setup_cost, align 8
  %95 = load double, double* %15, align 8
  %96 = fadd double %95, %94
  store double %96, double* %15, align 8
  %97 = load double, double* @parallel_tuple_cost, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = fmul double %97, %101
  %103 = fmul double %102, 1.050000e+00
  %104 = load double, double* %16, align 8
  %105 = fadd double %104, %103
  store double %105, double* %16, align 8
  %106 = load double, double* %15, align 8
  %107 = load double, double* %12, align 8
  %108 = fadd double %106, %107
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store double %108, double* %111, align 8
  %112 = load double, double* %15, align 8
  %113 = load double, double* %16, align 8
  %114 = fadd double %112, %113
  %115 = load double, double* %13, align 8
  %116 = fadd double %114, %115
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  store double %116, double* %119, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local double @LOG2(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
