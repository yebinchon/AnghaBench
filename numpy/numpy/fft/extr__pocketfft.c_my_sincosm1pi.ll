; ModuleID = '/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_my_sincosm1pi.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_my_sincosm1pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double*)* @my_sincosm1pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_sincosm1pi(double %0, double* noalias %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %3, align 8
  store double* %1, double** %4, align 8
  %8 = load double, double* %3, align 8
  %9 = load double, double* %3, align 8
  %10 = fmul double %8, %9
  store double %10, double* %5, align 8
  store double 0xBF1B2F223DF6F197, double* %6, align 8
  %11 = load double, double* %6, align 8
  %12 = load double, double* %5, align 8
  %13 = call double @llvm.fma.f64(double %11, double %12, double 0x3F5F9CE1F05EB467)
  store double %13, double* %6, align 8
  %14 = load double, double* %6, align 8
  %15 = load double, double* %5, align 8
  %16 = call double @llvm.fma.f64(double %14, double %15, double 0xBF9A6D1EEEE76526)
  store double %16, double* %6, align 8
  %17 = load double, double* %6, align 8
  %18 = load double, double* %5, align 8
  %19 = call double @llvm.fma.f64(double %17, double %18, double 0x3FCE1F506868296A)
  store double %19, double* %6, align 8
  %20 = load double, double* %6, align 8
  %21 = load double, double* %5, align 8
  %22 = call double @llvm.fma.f64(double %20, double %21, double 0xBFF55D3C7E3CB219)
  store double %22, double* %6, align 8
  %23 = load double, double* %6, align 8
  %24 = load double, double* %5, align 8
  %25 = call double @llvm.fma.f64(double %23, double %24, double 0x40103C1F081B5ABD)
  store double %25, double* %6, align 8
  %26 = load double, double* %6, align 8
  %27 = load double, double* %5, align 8
  %28 = call double @llvm.fma.f64(double %26, double %27, double 0xC013BD3CC9BE45DE)
  store double %28, double* %6, align 8
  %29 = load double, double* %6, align 8
  %30 = load double, double* %5, align 8
  %31 = fmul double %29, %30
  store double %31, double* %7, align 8
  store double 0x3F3E3EED5CE53E6A, double* %6, align 8
  %32 = load double, double* %6, align 8
  %33 = load double, double* %5, align 8
  %34 = call double @llvm.fma.f64(double %32, double %33, double 0xBF7E30063A029A73)
  store double %34, double* %6, align 8
  %35 = load double, double* %6, align 8
  %36 = load double, double* %5, align 8
  %37 = call double @llvm.fma.f64(double %35, double %36, double 0x3FB50782FCA38B8E)
  store double %37, double* %6, align 8
  %38 = load double, double* %6, align 8
  %39 = load double, double* %5, align 8
  %40 = call double @llvm.fma.f64(double %38, double %39, double 0xBFE32D2CCE2D535E)
  store double %40, double* %6, align 8
  %41 = load double, double* %6, align 8
  %42 = load double, double* %5, align 8
  %43 = call double @llvm.fma.f64(double %41, double %42, double 0x400466BC67758706)
  store double %43, double* %6, align 8
  %44 = load double, double* %6, align 8
  %45 = load double, double* %5, align 8
  %46 = call double @llvm.fma.f64(double %44, double %45, double 0xC014ABBCE625BE3E)
  store double %46, double* %6, align 8
  %47 = load double, double* %5, align 8
  %48 = load double, double* %3, align 8
  %49 = fmul double %47, %48
  store double %49, double* %5, align 8
  %50 = load double, double* %6, align 8
  %51 = load double, double* %5, align 8
  %52 = fmul double %50, %51
  store double %52, double* %6, align 8
  %53 = load double, double* %3, align 8
  %54 = load double, double* %6, align 8
  %55 = call double @llvm.fma.f64(double %53, double 0x400921FB54442D18, double %54)
  store double %55, double* %5, align 8
  %56 = load double, double* %7, align 8
  %57 = load double*, double** %4, align 8
  %58 = getelementptr inbounds double, double* %57, i64 0
  store double %56, double* %58, align 8
  %59 = load double, double* %5, align 8
  %60 = load double*, double** %4, align 8
  %61 = getelementptr inbounds double, double* %60, i64 1
  store double %59, double* %61, align 8
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fma.f64(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
