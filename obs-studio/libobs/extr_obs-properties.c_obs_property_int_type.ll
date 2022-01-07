; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_int_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_data = type { i32 }

@OBS_PROPERTY_INT = common dso_local global i32 0, align 4
@OBS_NUMBER_SCROLLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_property_int_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.int_data*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @OBS_PROPERTY_INT, align 4
  %6 = call %struct.int_data* @get_type_data(i32* %4, i32 %5)
  store %struct.int_data* %6, %struct.int_data** %3, align 8
  %7 = load %struct.int_data*, %struct.int_data** %3, align 8
  %8 = icmp ne %struct.int_data* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.int_data*, %struct.int_data** %3, align 8
  %11 = getelementptr inbounds %struct.int_data, %struct.int_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @OBS_NUMBER_SCROLLER, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %12, %9 ], [ %14, %13 ]
  ret i32 %16
}

declare dso_local %struct.int_data* @get_type_data(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
