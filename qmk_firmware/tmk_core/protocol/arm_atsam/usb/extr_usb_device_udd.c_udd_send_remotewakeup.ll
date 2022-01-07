; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_send_remotewakeup.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_send_remotewakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UDD_STATE_IDLE = common dso_local global i32 0, align 4
@usb_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udd_send_remotewakeup() #0 {
  %1 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  %2 = call i32 (...) @udd_wait_clock_ready()
  %3 = load i32, i32* @UDD_STATE_IDLE, align 4
  %4 = call i32 @udd_sleep_mode(i32 %3)
  br label %5

5:                                                ; preds = %14, %0
  %6 = call i32 @usb_get_state_machine_status(i32* @usb_device)
  %7 = icmp ne i32 2, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %1, align 4
  %11 = icmp ne i32 %9, 0
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i1 [ false, %5 ], [ %11, %8 ]
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 @usb_device_send_remote_wake_up(i32* @usb_device)
  br label %5

16:                                               ; preds = %12
  ret void
}

declare dso_local i32 @udd_wait_clock_ready(...) #1

declare dso_local i32 @udd_sleep_mode(i32) #1

declare dso_local i32 @usb_get_state_machine_status(i32*) #1

declare dso_local i32 @usb_device_send_remote_wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
