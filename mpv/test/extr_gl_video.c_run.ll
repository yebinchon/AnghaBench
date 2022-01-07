; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_gl_video.c_run.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_gl_video.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ctx = type { i32 }

@FLT_EPSILON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_ctx*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(%struct.test_ctx* %0) #0 {
  %2 = alloca %struct.test_ctx*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.test_ctx* %0, %struct.test_ctx** %2, align 8
  %5 = call float @gl_video_scale_ambient_lux(double 1.600000e+01, double 6.400000e+01, double 2.400000e+00, double 1.961000e+00, double 1.600000e+01)
  store float %5, float* %3, align 4
  %6 = load float, float* %3, align 4
  %7 = load i32, i32* @FLT_EPSILON, align 4
  %8 = call i32 @assert_float_equal(float %6, float 0x4003333340000000, i32 %7)
  %9 = call float @gl_video_scale_ambient_lux(double 1.600000e+01, double 6.400000e+01, double 2.400000e+00, double 1.961000e+00, double 6.400000e+01)
  store float %9, float* %3, align 4
  %10 = load float, float* %3, align 4
  %11 = load i32, i32* @FLT_EPSILON, align 4
  %12 = call i32 @assert_float_equal(float %10, float 0x3FFF604180000000, i32 %11)
  %13 = call float @gl_video_scale_ambient_lux(double 1.600000e+01, double 6.400000e+01, double 1.961000e+00, double 2.400000e+00, double 6.400000e+01)
  store float %13, float* %3, align 4
  %14 = load float, float* %3, align 4
  %15 = load i32, i32* @FLT_EPSILON, align 4
  %16 = call i32 @assert_float_equal(float %14, float 0x4003333340000000, i32 %15)
  %17 = call float @gl_video_scale_ambient_lux(double 1.600000e+01, double 6.400000e+01, double 2.400000e+00, double 1.961000e+00, double 0.000000e+00)
  store float %17, float* %3, align 4
  %18 = load float, float* %3, align 4
  %19 = load i32, i32* @FLT_EPSILON, align 4
  %20 = call i32 @assert_float_equal(float %18, float 0x4003333340000000, i32 %19)
  %21 = call float @gl_video_scale_ambient_lux(double 1.600000e+01, double 6.400000e+01, double 2.400000e+00, double 1.961000e+00, double 3.200000e+01)
  store float %21, float* %3, align 4
  store float 0x400171AA00000000, float* %4, align 4
  %22 = load float, float* %3, align 4
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* @FLT_EPSILON, align 4
  %25 = call i32 @assert_float_equal(float %22, float %23, i32 %24)
  ret void
}

declare dso_local float @gl_video_scale_ambient_lux(double, double, double, double, double) #1

declare dso_local i32 @assert_float_equal(float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
