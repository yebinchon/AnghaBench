; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_csp_copy_equalizer_values.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_csp_copy_equalizer_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_params = type { double, i32, double, i32, double, i32 }
%struct.mp_csp_equalizer_opts = type { double* }

@MP_CSP_EQ_BRIGHTNESS = common dso_local global i64 0, align 8
@MP_CSP_EQ_CONTRAST = common dso_local global i64 0, align 8
@MP_CSP_EQ_HUE = common dso_local global i64 0, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@MP_CSP_EQ_SATURATION = common dso_local global i64 0, align 8
@MP_CSP_EQ_GAMMA = common dso_local global i64 0, align 8
@MP_CSP_EQ_OUTPUT_LEVELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_csp_copy_equalizer_values(%struct.mp_csp_params* %0, %struct.mp_csp_equalizer_opts* %1) #0 {
  %3 = alloca %struct.mp_csp_params*, align 8
  %4 = alloca %struct.mp_csp_equalizer_opts*, align 8
  store %struct.mp_csp_params* %0, %struct.mp_csp_params** %3, align 8
  store %struct.mp_csp_equalizer_opts* %1, %struct.mp_csp_equalizer_opts** %4, align 8
  %5 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %4, align 8
  %6 = getelementptr inbounds %struct.mp_csp_equalizer_opts, %struct.mp_csp_equalizer_opts* %5, i32 0, i32 0
  %7 = load double*, double** %6, align 8
  %8 = load i64, i64* @MP_CSP_EQ_BRIGHTNESS, align 8
  %9 = getelementptr inbounds double, double* %7, i64 %8
  %10 = load double, double* %9, align 8
  %11 = fdiv double %10, 1.000000e+02
  %12 = load %struct.mp_csp_params*, %struct.mp_csp_params** %3, align 8
  %13 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %12, i32 0, i32 0
  store double %11, double* %13, align 8
  %14 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %4, align 8
  %15 = getelementptr inbounds %struct.mp_csp_equalizer_opts, %struct.mp_csp_equalizer_opts* %14, i32 0, i32 0
  %16 = load double*, double** %15, align 8
  %17 = load i64, i64* @MP_CSP_EQ_CONTRAST, align 8
  %18 = getelementptr inbounds double, double* %16, i64 %17
  %19 = load double, double* %18, align 8
  %20 = fadd double %19, 1.000000e+02
  %21 = fdiv double %20, 1.000000e+02
  %22 = fptosi double %21 to i32
  %23 = load %struct.mp_csp_params*, %struct.mp_csp_params** %3, align 8
  %24 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %4, align 8
  %26 = getelementptr inbounds %struct.mp_csp_equalizer_opts, %struct.mp_csp_equalizer_opts* %25, i32 0, i32 0
  %27 = load double*, double** %26, align 8
  %28 = load i64, i64* @MP_CSP_EQ_HUE, align 8
  %29 = getelementptr inbounds double, double* %27, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fdiv double %30, 1.000000e+02
  %32 = load double, double* @M_PI, align 8
  %33 = fmul double %31, %32
  %34 = load %struct.mp_csp_params*, %struct.mp_csp_params** %3, align 8
  %35 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %34, i32 0, i32 2
  store double %33, double* %35, align 8
  %36 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %4, align 8
  %37 = getelementptr inbounds %struct.mp_csp_equalizer_opts, %struct.mp_csp_equalizer_opts* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  %39 = load i64, i64* @MP_CSP_EQ_SATURATION, align 8
  %40 = getelementptr inbounds double, double* %38, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fadd double %41, 1.000000e+02
  %43 = fdiv double %42, 1.000000e+02
  %44 = fptosi double %43 to i32
  %45 = load %struct.mp_csp_params*, %struct.mp_csp_params** %3, align 8
  %46 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = call double @log(double 8.000000e+00) #3
  %48 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %4, align 8
  %49 = getelementptr inbounds %struct.mp_csp_equalizer_opts, %struct.mp_csp_equalizer_opts* %48, i32 0, i32 0
  %50 = load double*, double** %49, align 8
  %51 = load i64, i64* @MP_CSP_EQ_GAMMA, align 8
  %52 = getelementptr inbounds double, double* %50, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fmul double %47, %53
  %55 = fdiv double %54, 1.000000e+02
  %56 = call i32 @exp(double %55)
  %57 = load %struct.mp_csp_params*, %struct.mp_csp_params** %3, align 8
  %58 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %4, align 8
  %60 = getelementptr inbounds %struct.mp_csp_equalizer_opts, %struct.mp_csp_equalizer_opts* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = load i64, i64* @MP_CSP_EQ_OUTPUT_LEVELS, align 8
  %63 = getelementptr inbounds double, double* %61, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load %struct.mp_csp_params*, %struct.mp_csp_params** %3, align 8
  %66 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %65, i32 0, i32 4
  store double %64, double* %66, align 8
  ret void
}

declare dso_local i32 @exp(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
