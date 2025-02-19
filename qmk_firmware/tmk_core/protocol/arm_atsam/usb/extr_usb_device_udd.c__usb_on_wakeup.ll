; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c__usb_on_wakeup.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c__usb_on_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { i32 }

@usb_device = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_WAKEUP = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_SUSPEND = common dso_local global i32 0, align 4
@UDD_STATE_IDLE = common dso_local global i32 0, align 4
@USB_DEVICE_CALLBACK_LPMSUSP = common dso_local global i32 0, align 4
@_usb_device_lpm_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_module*, i8*)* @_usb_on_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_usb_on_wakeup(%struct.usb_module* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_module*, align 8
  %4 = alloca i8*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @udd_wait_clock_ready()
  %6 = load i32, i32* @USB_DEVICE_CALLBACK_WAKEUP, align 4
  %7 = call i32 @usb_device_disable_callback(i32* @usb_device, i32 %6)
  %8 = load i32, i32* @USB_DEVICE_CALLBACK_SUSPEND, align 4
  %9 = call i32 @usb_device_enable_callback(i32* @usb_device, i32 %8)
  %10 = load i32, i32* @UDD_STATE_IDLE, align 4
  %11 = call i32 @udd_sleep_mode(i32 %10)
  ret void
}

declare dso_local i32 @udd_wait_clock_ready(...) #1

declare dso_local i32 @usb_device_disable_callback(i32*, i32) #1

declare dso_local i32 @usb_device_enable_callback(i32*, i32) #1

declare dso_local i32 @udd_sleep_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
