; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_main_subtask_usb_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_main_subtask_usb_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@main_subtask_usb_state.fsmstate_on_delay = internal global i64 0, align 8
@USB = common dso_local global %struct.TYPE_6__* null, align 8
@USB_FSMSTATUS_FSMSTATE_SUSPEND_Val = common dso_local global i64 0, align 8
@g_usb_state = common dso_local global i64 0, align 8
@USB_FSMSTATUS_FSMSTATE_SLEEP_Val = common dso_local global i64 0, align 8
@USB_FSMSTATUS_FSMSTATE_ON_Val = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_subtask_usb_state() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @USB, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_SUSPEND_Val, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  store i64 0, i64* @main_subtask_usb_state.fsmstate_on_delay, align 8
  %11 = load i64, i64* @g_usb_state, align 8
  %12 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_SUSPEND_Val, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i32 (...) @suspend_power_down()
  %16 = load i64, i64* %1, align 8
  store i64 %16, i64* @g_usb_state, align 8
  br label %17

17:                                               ; preds = %14, %10
  br label %57

18:                                               ; preds = %0
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_SLEEP_Val, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  store i64 0, i64* @main_subtask_usb_state.fsmstate_on_delay, align 8
  %23 = load i64, i64* @g_usb_state, align 8
  %24 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_SLEEP_Val, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 (...) @suspend_power_down()
  %28 = load i64, i64* %1, align 8
  store i64 %28, i64* @g_usb_state, align 8
  br label %29

29:                                               ; preds = %26, %22
  br label %56

30:                                               ; preds = %18
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_ON_Val, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i64, i64* @g_usb_state, align 8
  %36 = load i64, i64* @USB_FSMSTATUS_FSMSTATE_ON_Val, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* @main_subtask_usb_state.fsmstate_on_delay, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i64 (...) @timer_read64()
  %43 = add nsw i64 %42, 250
  store i64 %43, i64* @main_subtask_usb_state.fsmstate_on_delay, align 8
  br label %52

44:                                               ; preds = %38
  %45 = call i64 (...) @timer_read64()
  %46 = load i64, i64* @main_subtask_usb_state.fsmstate_on_delay, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call i32 (...) @suspend_wakeup_init()
  %50 = load i64, i64* %1, align 8
  store i64 %50, i64* @g_usb_state, align 8
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %34
  br label %55

54:                                               ; preds = %30
  store i64 0, i64* @main_subtask_usb_state.fsmstate_on_delay, align 8
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %17
  ret void
}

declare dso_local i32 @suspend_power_down(...) #1

declare dso_local i64 @timer_read64(...) #1

declare dso_local i32 @suspend_wakeup_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
