; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_obs-filters.c_obs_module_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_obs-filters.c_obs_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mask_filter = common dso_local global i32 0, align 4
@crop_filter = common dso_local global i32 0, align 4
@gain_filter = common dso_local global i32 0, align 4
@color_filter = common dso_local global i32 0, align 4
@scale_filter = common dso_local global i32 0, align 4
@scroll_filter = common dso_local global i32 0, align 4
@gpu_delay_filter = common dso_local global i32 0, align 4
@color_key_filter = common dso_local global i32 0, align 4
@color_grade_filter = common dso_local global i32 0, align 4
@sharpness_filter = common dso_local global i32 0, align 4
@chroma_key_filter = common dso_local global i32 0, align 4
@async_delay_filter = common dso_local global i32 0, align 4
@invert_polarity_filter = common dso_local global i32 0, align 4
@noise_gate_filter = common dso_local global i32 0, align 4
@compressor_filter = common dso_local global i32 0, align 4
@limiter_filter = common dso_local global i32 0, align 4
@expander_filter = common dso_local global i32 0, align 4
@luma_key_filter = common dso_local global i32 0, align 4
@noise_suppress_filter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_module_load() #0 {
  %1 = call i32 @obs_register_source(i32* @mask_filter)
  %2 = call i32 @obs_register_source(i32* @crop_filter)
  %3 = call i32 @obs_register_source(i32* @gain_filter)
  %4 = call i32 @obs_register_source(i32* @color_filter)
  %5 = call i32 @obs_register_source(i32* @scale_filter)
  %6 = call i32 @obs_register_source(i32* @scroll_filter)
  %7 = call i32 @obs_register_source(i32* @gpu_delay_filter)
  %8 = call i32 @obs_register_source(i32* @color_key_filter)
  %9 = call i32 @obs_register_source(i32* @color_grade_filter)
  %10 = call i32 @obs_register_source(i32* @sharpness_filter)
  %11 = call i32 @obs_register_source(i32* @chroma_key_filter)
  %12 = call i32 @obs_register_source(i32* @async_delay_filter)
  %13 = call i32 @obs_register_source(i32* @invert_polarity_filter)
  %14 = call i32 @obs_register_source(i32* @noise_gate_filter)
  %15 = call i32 @obs_register_source(i32* @compressor_filter)
  %16 = call i32 @obs_register_source(i32* @limiter_filter)
  %17 = call i32 @obs_register_source(i32* @expander_filter)
  %18 = call i32 @obs_register_source(i32* @luma_key_filter)
  ret i32 1
}

declare dso_local i32 @obs_register_source(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
