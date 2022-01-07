; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_piqpr8.c_get_byte.c'
source_filename = "/home/carl/AnghaBench/pifs/src/extr_piqpr8.c_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @get_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call double @series(i32 1, i32 %11)
  store double %12, double* %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call double @series(i32 4, i32 %13)
  store double %14, double* %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call double @series(i32 5, i32 %15)
  store double %16, double* %5, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call double @series(i32 6, i32 %17)
  store double %18, double* %6, align 8
  %19 = load double, double* %3, align 8
  %20 = fmul double 4.000000e+00, %19
  %21 = load double, double* %4, align 8
  %22 = fmul double 2.000000e+00, %21
  %23 = fsub double %20, %22
  %24 = load double, double* %5, align 8
  %25 = fsub double %23, %24
  %26 = load double, double* %6, align 8
  %27 = fsub double %25, %26
  store double %27, double* %7, align 8
  %28 = load double, double* %7, align 8
  %29 = load double, double* %7, align 8
  %30 = fptosi double %29 to i32
  %31 = sitofp i32 %30 to double
  %32 = fsub double %28, %31
  %33 = fadd double %32, 1.000000e+00
  store double %33, double* %7, align 8
  %34 = load double, double* %7, align 8
  %35 = call double @llvm.fabs.f64(double %34)
  store double %35, double* %8, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* %8, align 8
  %38 = call double @llvm.floor.f64(double %37)
  %39 = fsub double %36, %38
  %40 = fmul double 1.600000e+01, %39
  store double %40, double* %8, align 8
  %41 = load double, double* %8, align 8
  %42 = fptoui double %41 to i8
  store i8 %42, i8* %9, align 1
  %43 = load double, double* %8, align 8
  %44 = load double, double* %8, align 8
  %45 = call double @llvm.floor.f64(double %44)
  %46 = fsub double %43, %45
  %47 = fmul double 1.600000e+01, %46
  store double %47, double* %8, align 8
  %48 = load double, double* %8, align 8
  %49 = fptoui double %48 to i8
  store i8 %49, i8* %10, align 1
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 4
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %52, %54
  %56 = trunc i32 %55 to i8
  ret i8 %56
}

declare dso_local double @series(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
