; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_estimate_reltuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_estimate_reltuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @vac_estimate_reltuples(%struct.TYPE_5__* %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  store double %19, double* %10, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  store double %24, double* %11, align 8
  %25 = load double, double* %8, align 8
  %26 = load double, double* %7, align 8
  %27 = fcmp oge double %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load double, double* %9, align 8
  store double %29, double* %5, align 8
  br label %61

30:                                               ; preds = %4
  %31 = load double, double* %8, align 8
  %32 = fcmp oeq double %31, 0.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load double, double* %11, align 8
  store double %34, double* %5, align 8
  br label %61

35:                                               ; preds = %30
  %36 = load double, double* %10, align 8
  %37 = fcmp oeq double %36, 0.000000e+00
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load double, double* %9, align 8
  %40 = load double, double* %8, align 8
  %41 = fdiv double %39, %40
  %42 = load double, double* %7, align 8
  %43 = fmul double %41, %42
  %44 = fadd double %43, 5.000000e-01
  %45 = call double @llvm.floor.f64(double %44)
  store double %45, double* %5, align 8
  br label %61

46:                                               ; preds = %35
  %47 = load double, double* %11, align 8
  %48 = load double, double* %10, align 8
  %49 = fdiv double %47, %48
  store double %49, double* %12, align 8
  %50 = load double, double* %7, align 8
  %51 = load double, double* %8, align 8
  %52 = fsub double %50, %51
  store double %52, double* %13, align 8
  %53 = load double, double* %12, align 8
  %54 = load double, double* %13, align 8
  %55 = fmul double %53, %54
  %56 = load double, double* %9, align 8
  %57 = fadd double %55, %56
  store double %57, double* %14, align 8
  %58 = load double, double* %14, align 8
  %59 = fadd double %58, 5.000000e-01
  %60 = call double @llvm.floor.f64(double %59)
  store double %60, double* %5, align 8
  br label %61

61:                                               ; preds = %46, %38, %33, %28
  %62 = load double, double* %5, align 8
  ret double %62
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
