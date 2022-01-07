; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_group.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double }
%struct.TYPE_5__ = type { double, i64 }

@cpu_operator_cost = common dso_local global double 0.000000e+00, align 8
@JOIN_INNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cost_group(%struct.TYPE_6__* %0, i32* %1, i32 %2, double %3, i32* %4, double %5, double %6, double %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store double %3, double* %12, align 8
  store i32* %4, i32** %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store double %7, double* %16, align 8
  %21 = load double, double* %12, align 8
  store double %21, double* %17, align 8
  %22 = load double, double* %14, align 8
  store double %22, double* %18, align 8
  %23 = load double, double* %15, align 8
  store double %23, double* %19, align 8
  %24 = load double, double* @cpu_operator_cost, align 8
  %25 = load double, double* %16, align 8
  %26 = fmul double %24, %25
  %27 = load i32, i32* %11, align 4
  %28 = sitofp i32 %27 to double
  %29 = fmul double %26, %28
  %30 = load double, double* %19, align 8
  %31 = fadd double %30, %29
  store double %31, double* %19, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @cost_qual_eval(%struct.TYPE_5__* %20, i32* %35, i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to double
  %41 = load double, double* %18, align 8
  %42 = fadd double %41, %40
  store double %42, double* %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sitofp i64 %44 to double
  %46 = load double, double* %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fmul double %46, %48
  %50 = fadd double %45, %49
  %51 = load double, double* %19, align 8
  %52 = fadd double %51, %50
  store double %52, double* %19, align 8
  %53 = load double, double* %17, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @JOIN_INNER, align 4
  %57 = call double @clauselist_selectivity(i32* %54, i32* %55, i32 0, i32 %56, i32* null)
  %58 = fmul double %53, %57
  %59 = call double @clamp_row_est(double %58)
  store double %59, double* %17, align 8
  br label %60

60:                                               ; preds = %34, %8
  %61 = load double, double* %17, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store double %61, double* %63, align 8
  %64 = load double, double* %18, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store double %64, double* %66, align 8
  %67 = load double, double* %19, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store double %67, double* %69, align 8
  ret void
}

declare dso_local i32 @cost_qual_eval(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local double @clamp_row_est(double) #1

declare dso_local double @clauselist_selectivity(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
