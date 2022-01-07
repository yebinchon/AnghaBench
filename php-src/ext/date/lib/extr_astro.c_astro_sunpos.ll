; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_astro.c_astro_sunpos.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_astro.c_astro_sunpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADEG = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double*, double*)* @astro_sunpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @astro_sunpos(double %0, double* %1, double* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %14 = load double, double* %4, align 8
  %15 = fmul double 0x3FEF8A098DA5F901, %14
  %16 = fadd double 3.560470e+02, %15
  %17 = call double @astro_revolution(double %16)
  store double %17, double* %7, align 8
  %18 = load double, double* %4, align 8
  %19 = fmul double 4.709350e-05, %18
  %20 = fadd double 0x4071AF0BE0DED289, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %4, align 8
  %22 = fmul double 1.151000e-09, %21
  %23 = fsub double 1.670900e-02, %22
  store double %23, double* %9, align 8
  %24 = load double, double* %7, align 8
  %25 = load double, double* %9, align 8
  %26 = load double, double* @RADEG, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %7, align 8
  %29 = call double @sind(double %28)
  %30 = fmul double %27, %29
  %31 = load double, double* %9, align 8
  %32 = load double, double* %7, align 8
  %33 = call double @cosd(double %32)
  %34 = fmul double %31, %33
  %35 = fadd double 1.000000e+00, %34
  %36 = fmul double %30, %35
  %37 = fadd double %24, %36
  store double %37, double* %10, align 8
  %38 = load double, double* %10, align 8
  %39 = call double @cosd(double %38)
  %40 = load double, double* %9, align 8
  %41 = fsub double %39, %40
  store double %41, double* %11, align 8
  %42 = load double, double* %9, align 8
  %43 = load double, double* %9, align 8
  %44 = fmul double %42, %43
  %45 = fsub double 1.000000e+00, %44
  %46 = call double @sqrt(double %45) #3
  %47 = load double, double* %10, align 8
  %48 = call double @sind(double %47)
  %49 = fmul double %46, %48
  store double %49, double* %12, align 8
  %50 = load double, double* %11, align 8
  %51 = load double, double* %11, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %12, align 8
  %54 = load double, double* %12, align 8
  %55 = fmul double %53, %54
  %56 = fadd double %52, %55
  %57 = call double @sqrt(double %56) #3
  %58 = load double*, double** %6, align 8
  store double %57, double* %58, align 8
  %59 = load double, double* %12, align 8
  %60 = load double, double* %11, align 8
  %61 = call double @atan2d(double %59, double %60)
  store double %61, double* %13, align 8
  %62 = load double, double* %13, align 8
  %63 = load double, double* %8, align 8
  %64 = fadd double %62, %63
  %65 = load double*, double** %5, align 8
  store double %64, double* %65, align 8
  %66 = load double*, double** %5, align 8
  %67 = load double, double* %66, align 8
  %68 = fcmp oge double %67, 3.600000e+02
  br i1 %68, label %69, label %73

69:                                               ; preds = %3
  %70 = load double*, double** %5, align 8
  %71 = load double, double* %70, align 8
  %72 = fsub double %71, 3.600000e+02
  store double %72, double* %70, align 8
  br label %73

73:                                               ; preds = %69, %3
  ret void
}

declare dso_local double @astro_revolution(double) #1

declare dso_local double @sind(double) #1

declare dso_local double @cosd(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local double @atan2d(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
