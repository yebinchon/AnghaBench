; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_close_windows.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_close_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tui_disabled = common dso_local global i64 0, align 8
@dialogue_window = common dso_local global i64 0, align 8
@dialogue_panel = common dso_local global i32 0, align 4
@cooling_device_window = common dso_local global i64 0, align 8
@data_panel = common dso_local global i32 0, align 4
@title_bar_window = common dso_local global i64 0, align 8
@tz_sensor_window = common dso_local global i64 0, align 8
@status_bar_window = common dso_local global i64 0, align 8
@control_window = common dso_local global i64 0, align 8
@thermal_data_window = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_windows() #0 {
  %1 = load i64, i64* @tui_disabled, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %31

4:                                                ; preds = %0
  %5 = load i64, i64* @dialogue_window, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @dialogue_panel, align 4
  %9 = call i32 @close_panel(i32 %8)
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i64, i64* @cooling_device_window, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @data_panel, align 4
  %15 = call i32 @close_panel(i32 %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @title_bar_window, align 8
  %18 = call i32 @close_window(i64 %17)
  %19 = load i64, i64* @tz_sensor_window, align 8
  %20 = call i32 @close_window(i64 %19)
  %21 = load i64, i64* @status_bar_window, align 8
  %22 = call i32 @close_window(i64 %21)
  %23 = load i64, i64* @cooling_device_window, align 8
  %24 = call i32 @close_window(i64 %23)
  %25 = load i64, i64* @control_window, align 8
  %26 = call i32 @close_window(i64 %25)
  %27 = load i64, i64* @thermal_data_window, align 8
  %28 = call i32 @close_window(i64 %27)
  %29 = load i64, i64* @dialogue_window, align 8
  %30 = call i32 @close_window(i64 %29)
  br label %31

31:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @close_panel(i32) #1

declare dso_local i32 @close_window(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
