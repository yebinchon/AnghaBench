; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_xyz2rgb_coeffs.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_xyz2rgb_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_col_xy = type { double, double }
%struct.mp_csp_params = type { float, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mp_cmat = type { float*, i32 }
%struct.mp_csp_primaries = type { i32 }

@MP_INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i32 0, align 4
@mp_get_xyz2rgb_coeffs.smpte428 = internal constant %struct.mp_csp_col_xy { double 3.140000e-01, double 3.510000e-01 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_csp_params*, i32, %struct.mp_cmat*)* @mp_get_xyz2rgb_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_get_xyz2rgb_coeffs(%struct.mp_csp_params* %0, i32 %1, %struct.mp_cmat* %2) #0 {
  %4 = alloca %struct.mp_csp_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_cmat*, align 8
  %7 = alloca %struct.mp_csp_primaries, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store %struct.mp_csp_params* %0, %struct.mp_csp_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mp_cmat* %2, %struct.mp_cmat** %6, align 8
  %10 = load %struct.mp_csp_params*, %struct.mp_csp_params** %4, align 8
  %11 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mp_get_csp_primaries(i32 %13)
  %15 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.mp_csp_params*, %struct.mp_csp_params** %4, align 8
  %17 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  store float %18, float* %8, align 4
  %19 = load %struct.mp_cmat*, %struct.mp_cmat** %6, align 8
  %20 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mp_get_rgb2xyz_matrix(i32 %23, i32 %21)
  %25 = load %struct.mp_cmat*, %struct.mp_cmat** %6, align 8
  %26 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mp_invert_matrix3x3(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MP_INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.mp_csp_primaries, %struct.mp_csp_primaries* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mp_cmat*, %struct.mp_cmat** %6, align 8
  %36 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.mp_csp_col_xy* @mp_get_xyz2rgb_coeffs.smpte428 to { double, double }*), i32 0, i32 0), align 8
  %39 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.mp_csp_col_xy* @mp_get_xyz2rgb_coeffs.smpte428 to { double, double }*), i32 0, i32 1), align 8
  %40 = call i32 @mp_apply_chromatic_adaptation(double %38, double %39, i32 %34, i32 %37)
  br label %41

41:                                               ; preds = %32, %3
  %42 = load float, float* %8, align 4
  %43 = call float @fabs(float %42)
  %44 = load float, float* %8, align 4
  %45 = fmul float %44, %43
  store float %45, float* %8, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %57, %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load float, float* %8, align 4
  %51 = load %struct.mp_cmat*, %struct.mp_cmat** %6, align 8
  %52 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %51, i32 0, i32 0
  %53 = load float*, float** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  store float %50, float* %56, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %46

60:                                               ; preds = %46
  ret void
}

declare dso_local i32 @mp_get_csp_primaries(i32) #1

declare dso_local i32 @mp_get_rgb2xyz_matrix(i32, i32) #1

declare dso_local i32 @mp_invert_matrix3x3(i32) #1

declare dso_local i32 @mp_apply_chromatic_adaptation(double, double, i32, i32) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
