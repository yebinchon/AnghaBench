; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_frame_rate_clear.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_frame_rate_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_rate_data = type { i32 }

@OBS_PROPERTY_FRAME_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_property_frame_rate_clear(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.frame_rate_data*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @OBS_PROPERTY_FRAME_RATE, align 4
  %6 = call %struct.frame_rate_data* @get_type_data(i32* %4, i32 %5)
  store %struct.frame_rate_data* %6, %struct.frame_rate_data** %3, align 8
  %7 = load %struct.frame_rate_data*, %struct.frame_rate_data** %3, align 8
  %8 = icmp ne %struct.frame_rate_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.frame_rate_data*, %struct.frame_rate_data** %3, align 8
  %12 = call i32 @frame_rate_data_options_free(%struct.frame_rate_data* %11)
  %13 = load %struct.frame_rate_data*, %struct.frame_rate_data** %3, align 8
  %14 = call i32 @frame_rate_data_ranges_free(%struct.frame_rate_data* %13)
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.frame_rate_data* @get_type_data(i32*, i32) #1

declare dso_local i32 @frame_rate_data_options_free(%struct.frame_rate_data*) #1

declare dso_local i32 @frame_rate_data_ranges_free(%struct.frame_rate_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
