; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_calculate_new_color_component_value.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_calculate_new_color_component_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@led_boosts = common dso_local global float* null, align 8
@led_cur_index = common dso_local global i64 0, align 8
@LED_BOOST_PEAK = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float)* @calculate_new_color_component_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @calculate_new_color_component_value(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float*, float** @led_boosts, align 8
  %7 = load i64, i64* @led_cur_index, align 8
  %8 = getelementptr inbounds float, float* %6, i64 %7
  %9 = load float, float* %8, align 4
  store float %9, float* %5, align 4
  %10 = load float, float* %3, align 4
  %11 = load float, float* %4, align 4
  %12 = fsub float %10, %11
  %13 = load float, float* %5, align 4
  %14 = fmul float %12, %13
  %15 = load float, float* @LED_BOOST_PEAK, align 4
  %16 = fdiv float %14, %15
  %17 = load float, float* %4, align 4
  %18 = fadd float %16, %17
  ret float %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
