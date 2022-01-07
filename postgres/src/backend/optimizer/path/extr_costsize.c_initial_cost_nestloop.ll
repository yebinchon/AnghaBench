; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_initial_cost_nestloop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_initial_cost_nestloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double, double, double, double, double }
%struct.TYPE_9__ = type { double, double, double }
%struct.TYPE_10__ = type { i64 }

@JOIN_SEMI = common dso_local global i64 0, align 8
@JOIN_ANTI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initial_cost_nestloop(i32* %0, %struct.TYPE_11__* %1, i64 %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, %struct.TYPE_10__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  store double %22, double* %15, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = call i32 @cost_rescan(i32* %23, %struct.TYPE_9__* %24, double* %16, double* %17)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fadd double %28, %31
  %33 = load double, double* %13, align 8
  %34 = fadd double %33, %32
  store double %34, double* %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load double, double* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = fsub double %37, %40
  %42 = load double, double* %14, align 8
  %43 = fadd double %42, %41
  store double %43, double* %14, align 8
  %44 = load double, double* %15, align 8
  %45 = fcmp ogt double %44, 1.000000e+00
  br i1 %45, label %46, label %53

46:                                               ; preds = %6
  %47 = load double, double* %15, align 8
  %48 = fsub double %47, 1.000000e+00
  %49 = load double, double* %16, align 8
  %50 = fmul double %48, %49
  %51 = load double, double* %14, align 8
  %52 = fadd double %51, %50
  store double %52, double* %14, align 8
  br label %53

53:                                               ; preds = %46, %6
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load double, double* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = fsub double %56, %59
  store double %60, double* %18, align 8
  %61 = load double, double* %17, align 8
  %62 = load double, double* %16, align 8
  %63 = fsub double %61, %62
  store double %63, double* %19, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @JOIN_SEMI, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %53
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @JOIN_ANTI, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71, %67, %53
  %77 = load double, double* %18, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store double %77, double* %79, align 8
  %80 = load double, double* %19, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store double %80, double* %82, align 8
  br label %97

83:                                               ; preds = %71
  %84 = load double, double* %18, align 8
  %85 = load double, double* %14, align 8
  %86 = fadd double %85, %84
  store double %86, double* %14, align 8
  %87 = load double, double* %15, align 8
  %88 = fcmp ogt double %87, 1.000000e+00
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load double, double* %15, align 8
  %91 = fsub double %90, 1.000000e+00
  %92 = load double, double* %19, align 8
  %93 = fmul double %91, %92
  %94 = load double, double* %14, align 8
  %95 = fadd double %94, %93
  store double %95, double* %14, align 8
  br label %96

96:                                               ; preds = %89, %83
  br label %97

97:                                               ; preds = %96, %76
  %98 = load double, double* %13, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store double %98, double* %100, align 8
  %101 = load double, double* %13, align 8
  %102 = load double, double* %14, align 8
  %103 = fadd double %101, %102
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  store double %103, double* %105, align 8
  %106 = load double, double* %14, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  store double %106, double* %108, align 8
  ret void
}

declare dso_local i32 @cost_rescan(i32*, %struct.TYPE_9__*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
