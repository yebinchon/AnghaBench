; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lufa_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Keyboard start.\0A\00", align 1
@USB_DeviceState = common dso_local global i64 0, align 8
@DEVICE_STATE_Suspended = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"[s]\00", align 1
@USB_Device_RemoteWakeupEnabled = common dso_local global i64 0, align 8
@DEVICE_STATE_Configured = common dso_local global i64 0, align 8
@USB_MIDI_Interface = common dso_local global i32 0, align 4
@cdc_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @setup_mcu()
  %3 = call i32 (...) @keyboard_setup()
  %4 = call i32 (...) @setup_usb()
  %5 = call i32 (...) @sei()
  %6 = call i32 (...) @USB_USBTask()
  %7 = call i32 (...) @keyboard_init()
  %8 = call i32 @host_set_driver(i32* @lufa_driver)
  %9 = call i32 @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %0, %26
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i64, i64* @USB_DeviceState, align 8
  %13 = load i64, i64* @DEVICE_STATE_Suspended, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = call i32 @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (...) @suspend_power_down()
  %18 = load i64, i64* @USB_Device_RemoteWakeupEnabled, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = call i64 (...) @suspend_wakeup_condition()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @USB_Device_SendRemoteWakeup()
  br label %25

25:                                               ; preds = %23, %20, %15
  br label %11

26:                                               ; preds = %11
  %27 = call i32 (...) @keyboard_task()
  %28 = call i32 (...) @USB_USBTask()
  br label %10
}

declare dso_local i32 @setup_mcu(...) #1

declare dso_local i32 @keyboard_setup(...) #1

declare dso_local i32 @setup_usb(...) #1

declare dso_local i32 @sei(...) #1

declare dso_local i32 @USB_USBTask(...) #1

declare dso_local i32 @keyboard_init(...) #1

declare dso_local i32 @host_set_driver(i32*) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @suspend_power_down(...) #1

declare dso_local i64 @suspend_wakeup_condition(...) #1

declare dso_local i32 @USB_Device_SendRemoteWakeup(...) #1

declare dso_local i32 @keyboard_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
