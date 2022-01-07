; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_getGaussianRand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_getGaussianRand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MIN_GAUSSIAN_PARAM = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, double)* @getGaussianRand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getGaussianRand(%struct.TYPE_3__* %0, i32 %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %14 = load double, double* %8, align 8
  %15 = load double, double* @MIN_GAUSSIAN_PARAM, align 8
  %16 = fcmp oge double %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  br label %19

19:                                               ; preds = %50, %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call double @pg_erand48(i32 %22)
  %24 = fsub double 1.000000e+00, %23
  store double %24, double* %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call double @pg_erand48(i32 %27)
  %29 = fsub double 1.000000e+00, %28
  store double %29, double* %12, align 8
  %30 = load double, double* %11, align 8
  %31 = call double @log(double %30) #3
  %32 = fmul double -2.000000e+00, %31
  %33 = call double @sqrt(double %32) #3
  store double %33, double* %13, align 8
  %34 = load double, double* %13, align 8
  %35 = load double, double* @M_PI, align 8
  %36 = fmul double 2.000000e+00, %35
  %37 = load double, double* %12, align 8
  %38 = fmul double %36, %37
  %39 = call double @sin(double %38) #3
  %40 = fmul double %34, %39
  store double %40, double* %9, align 8
  br label %41

41:                                               ; preds = %19
  %42 = load double, double* %9, align 8
  %43 = load double, double* %8, align 8
  %44 = fneg double %43
  %45 = fcmp olt double %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load double, double* %9, align 8
  %48 = load double, double* %8, align 8
  %49 = fcmp oge double %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ true, %41 ], [ %49, %46 ]
  br i1 %51, label %19, label %52

52:                                               ; preds = %50
  %53 = load double, double* %9, align 8
  %54 = load double, double* %8, align 8
  %55 = fadd double %53, %54
  %56 = load double, double* %8, align 8
  %57 = fmul double %56, 2.000000e+00
  %58 = fdiv double %55, %57
  store double %58, double* %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  %64 = sitofp i32 %63 to double
  %65 = load double, double* %10, align 8
  %66 = fmul double %64, %65
  %67 = fptosi double %66 to i32
  %68 = add nsw i32 %59, %67
  ret i32 %68
}

declare dso_local i32 @Assert(i32) #1

declare dso_local double @pg_erand48(i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
