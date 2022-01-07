; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_x11.c_gui_mch_start_blink.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_x11.c_gui_mch_start_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@blink_timer = common dso_local global i64 0, align 8
@blink_waittime = common dso_local global i64 0, align 8
@blink_ontime = common dso_local global i64 0, align 8
@blink_offtime = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@app_context = common dso_local global i32 0, align 4
@gui_x11_blink_cb = common dso_local global i32 0, align 4
@BLINK_ON = common dso_local global i32 0, align 4
@blink_state = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_start_blink() #0 {
  %1 = load i64, i64* @blink_timer, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @blink_timer, align 8
  %5 = call i32 @XtRemoveTimeOut(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @blink_waittime, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i64, i64* @blink_ontime, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load i64, i64* @blink_offtime, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32, i32* @app_context, align 4
  %20 = load i64, i64* @blink_waittime, align 8
  %21 = load i32, i32* @gui_x11_blink_cb, align 4
  %22 = call i64 @XtAppAddTimeOut(i32 %19, i64 %20, i32 %21, i32* null)
  store i64 %22, i64* @blink_timer, align 8
  %23 = load i32, i32* @BLINK_ON, align 4
  store i32 %23, i32* @blink_state, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @gui_update_cursor(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @XtRemoveTimeOut(i64) #1

declare dso_local i64 @XtAppAddTimeOut(i32, i64, i32, i32*) #1

declare dso_local i32 @gui_update_cursor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
