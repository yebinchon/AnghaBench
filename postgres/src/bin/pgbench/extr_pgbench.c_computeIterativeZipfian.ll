; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_computeIterativeZipfian.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_computeIterativeZipfian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, double)* @computeIterativeZipfian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @computeIterativeZipfian(%struct.TYPE_3__* %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %13 = load double, double* %7, align 8
  %14 = fsub double %13, 1.000000e+00
  %15 = call double @pow(double 2.000000e+00, double %14) #4
  store double %15, double* %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %60
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call double @pg_erand48(i32 %23)
  store double %24, double* %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call double @pg_erand48(i32 %27)
  store double %28, double* %12, align 8
  %29 = load double, double* %11, align 8
  %30 = load double, double* %7, align 8
  %31 = fsub double %30, 1.000000e+00
  %32 = fdiv double -1.000000e+00, %31
  %33 = call double @pow(double %29, double %32) #4
  %34 = call double @llvm.floor.f64(double %33)
  store double %34, double* %9, align 8
  %35 = load double, double* %9, align 8
  %36 = fdiv double 1.000000e+00, %35
  %37 = fadd double 1.000000e+00, %36
  %38 = load double, double* %7, align 8
  %39 = fsub double %38, 1.000000e+00
  %40 = call double @pow(double %37, double %39) #4
  store double %40, double* %10, align 8
  %41 = load double, double* %12, align 8
  %42 = load double, double* %9, align 8
  %43 = fmul double %41, %42
  %44 = load double, double* %10, align 8
  %45 = fsub double %44, 1.000000e+00
  %46 = fmul double %43, %45
  %47 = load double, double* %8, align 8
  %48 = fsub double %47, 1.000000e+00
  %49 = fdiv double %46, %48
  %50 = load double, double* %10, align 8
  %51 = load double, double* %8, align 8
  %52 = fdiv double %50, %51
  %53 = fcmp ole double %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %20
  %55 = load double, double* %9, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sitofp i32 %56 to double
  %58 = fcmp ole double %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54, %20
  br label %20

61:                                               ; preds = %59
  %62 = load double, double* %9, align 8
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

declare dso_local double @pg_erand48(i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
