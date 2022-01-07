; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_stop_blink.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_stop_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blink_timer = common dso_local global i64 0, align 8
@blink_state = common dso_local global i64 0, align 8
@BLINK_OFF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BLINK_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_stop_blink() #0 {
  %1 = load i64, i64* @blink_timer, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @blink_timer, align 8
  %5 = call i32 @gtk_timeout_remove(i64 %4)
  store i64 0, i64* @blink_timer, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @blink_state, align 8
  %8 = load i64, i64* @BLINK_OFF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* @TRUE, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @gui_update_cursor(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i64, i64* @BLINK_NONE, align 8
  store i64 %15, i64* @blink_state, align 8
  ret void
}

declare dso_local i32 @gtk_timeout_remove(i64) #1

declare dso_local i32 @gui_update_cursor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
