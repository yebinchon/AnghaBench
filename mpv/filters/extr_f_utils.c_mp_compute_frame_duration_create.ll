; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_compute_frame_duration_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_compute_frame_duration_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32 }

@frame_duration_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_filter* @mp_compute_frame_duration_create(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %6 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %5, i32* @frame_duration_filter)
  store %struct.mp_filter* %6, %struct.mp_filter** %4, align 8
  %7 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %8 = icmp ne %struct.mp_filter* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mp_filter* null, %struct.mp_filter** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %12 = load i32, i32* @MP_PIN_IN, align 4
  %13 = call i32 @mp_filter_add_pin(%struct.mp_filter* %11, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %15 = load i32, i32* @MP_PIN_OUT, align 4
  %16 = call i32 @mp_filter_add_pin(%struct.mp_filter* %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  store %struct.mp_filter* %17, %struct.mp_filter** %2, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  ret %struct.mp_filter* %19
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
