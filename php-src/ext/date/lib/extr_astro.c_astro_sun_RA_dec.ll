; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_astro.c_astro_sun_RA_dec.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_astro.c_astro_sun_RA_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double*, double*, double*)* @astro_sun_RA_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @astro_sun_RA_dec(double %0, double* %1, double* %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %14 = load double, double* %5, align 8
  %15 = load double*, double** %8, align 8
  %16 = call i32 @astro_sunpos(double %14, double* %9, double* %15)
  %17 = load double*, double** %8, align 8
  %18 = load double, double* %17, align 8
  %19 = load double, double* %9, align 8
  %20 = call double @cosd(double %19)
  %21 = fmul double %18, %20
  store double %21, double* %11, align 8
  %22 = load double*, double** %8, align 8
  %23 = load double, double* %22, align 8
  %24 = load double, double* %9, align 8
  %25 = call double @sind(double %24)
  %26 = fmul double %23, %25
  store double %26, double* %12, align 8
  %27 = load double, double* %5, align 8
  %28 = fmul double 3.563000e-07, %27
  %29 = fsub double 2.343930e+01, %28
  store double %29, double* %10, align 8
  %30 = load double, double* %12, align 8
  %31 = load double, double* %10, align 8
  %32 = call double @sind(double %31)
  %33 = fmul double %30, %32
  store double %33, double* %13, align 8
  %34 = load double, double* %12, align 8
  %35 = load double, double* %10, align 8
  %36 = call double @cosd(double %35)
  %37 = fmul double %34, %36
  store double %37, double* %12, align 8
  %38 = load double, double* %12, align 8
  %39 = load double, double* %11, align 8
  %40 = call double @atan2d(double %38, double %39)
  %41 = load double*, double** %6, align 8
  store double %40, double* %41, align 8
  %42 = load double, double* %13, align 8
  %43 = load double, double* %11, align 8
  %44 = load double, double* %11, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* %12, align 8
  %47 = load double, double* %12, align 8
  %48 = fmul double %46, %47
  %49 = fadd double %45, %48
  %50 = call double @sqrt(double %49) #3
  %51 = call double @atan2d(double %42, double %50)
  %52 = load double*, double** %7, align 8
  store double %51, double* %52, align 8
  ret void
}

declare dso_local i32 @astro_sunpos(double, double*, double*) #1

declare dso_local double @cosd(double) #1

declare dso_local double @sind(double) #1

declare dso_local double @atan2d(double, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
