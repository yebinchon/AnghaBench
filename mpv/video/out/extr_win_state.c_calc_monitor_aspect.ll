; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_calc_monitor_aspect.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_calc_monitor_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_vo_opts = type { double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_vo_opts*, i32, i32, double*, i32*, i32*)* @calc_monitor_aspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_monitor_aspect(%struct.mp_vo_opts* %0, i32 %1, i32 %2, double* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.mp_vo_opts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.mp_vo_opts* %0, %struct.mp_vo_opts** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store double* %3, double** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %14 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = fdiv double 1.000000e+00, %15
  %17 = load double*, double** %10, align 8
  store double %16, double* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %25 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %30 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %33, %34
  %36 = sitofp i32 %35 to double
  %37 = fdiv double 1.000000e+00, %36
  %38 = load double*, double** %10, align 8
  store double %37, double* %38, align 8
  br label %39

39:                                               ; preds = %28, %23, %20, %6
  %40 = load double*, double** %10, align 8
  %41 = load double, double* %40, align 8
  %42 = fcmp olt double %41, 1.000000e+00
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load double*, double** %10, align 8
  %45 = load double, double* %44, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, %45
  %50 = fptosi double %49 to i32
  store i32 %50, i32* %46, align 4
  br label %59

51:                                               ; preds = %39
  %52 = load double*, double** %10, align 8
  %53 = load double, double* %52, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to double
  %57 = fmul double %56, %53
  %58 = fptosi double %57 to i32
  store i32 %58, i32* %54, align 4
  br label %59

59:                                               ; preds = %51, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
