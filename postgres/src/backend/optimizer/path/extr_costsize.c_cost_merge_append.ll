; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_merge_append.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_merge_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@cpu_operator_cost = common dso_local global double 0.000000e+00, align 8
@cpu_tuple_cost = common dso_local global double 0.000000e+00, align 8
@APPEND_CPU_COST_MULTIPLIER = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cost_merge_append(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  br label %26

23:                                               ; preds = %7
  %24 = load i32, i32* %11, align 4
  %25 = sitofp i32 %24 to double
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi double [ 2.000000e+00, %22 ], [ %25, %23 ]
  store double %27, double* %18, align 8
  %28 = load double, double* %18, align 8
  %29 = call double @LOG2(double %28)
  store double %29, double* %19, align 8
  %30 = load double, double* @cpu_operator_cost, align 8
  %31 = fmul double 2.000000e+00, %30
  store double %31, double* %17, align 8
  %32 = load double, double* %17, align 8
  %33 = load double, double* %18, align 8
  %34 = fmul double %32, %33
  %35 = load double, double* %19, align 8
  %36 = fmul double %34, %35
  %37 = load double, double* %15, align 8
  %38 = fadd double %37, %36
  store double %38, double* %15, align 8
  %39 = load double, double* %14, align 8
  %40 = load double, double* %17, align 8
  %41 = fmul double %39, %40
  %42 = load double, double* %19, align 8
  %43 = fmul double %41, %42
  %44 = load double, double* %16, align 8
  %45 = fadd double %44, %43
  store double %45, double* %16, align 8
  %46 = load double, double* @cpu_tuple_cost, align 8
  %47 = load double, double* @APPEND_CPU_COST_MULTIPLIER, align 8
  %48 = fmul double %46, %47
  %49 = load double, double* %14, align 8
  %50 = fmul double %48, %49
  %51 = load double, double* %16, align 8
  %52 = fadd double %51, %50
  store double %52, double* %16, align 8
  %53 = load double, double* %15, align 8
  %54 = load double, double* %12, align 8
  %55 = fadd double %53, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store double %55, double* %57, align 8
  %58 = load double, double* %15, align 8
  %59 = load double, double* %16, align 8
  %60 = fadd double %58, %59
  %61 = load double, double* %13, align 8
  %62 = fadd double %60, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store double %62, double* %64, align 8
  ret void
}

declare dso_local double @LOG2(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
