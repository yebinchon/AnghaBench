; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_DeviceState = common dso_local global i64 0, align 8
@DEVICE_STATE_Configured = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"\0AUSB init\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"RN-42 init\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Keyboard start\0A\00", align 1
@DEVICE_STATE_Suspended = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"[s]\00", align 1
@USB_Device_RemoteWakeupEnabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @SetupHardware()
  %4 = call i32 (...) @sei()
  store i32 255, i32* %2, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %2, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i64, i64* @USB_DeviceState, align 8
  %11 = load i64, i64* @DEVICE_STATE_Configured, align 8
  %12 = icmp ne i64 %10, %11
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = call i32 @wait_ms(i32 4)
  %17 = call i32 (...) @USB_USBTask()
  br label %5

18:                                               ; preds = %13
  %19 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @rn42_init()
  %21 = call i32 (...) @rn42_task_init()
  %22 = call i32 @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @keyboard_init()
  %24 = call i32 @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %53
  br label %26

26:                                               ; preds = %52, %25
  %27 = call i64 (...) @rn42_rts()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i64, i64* @USB_DeviceState, align 8
  %31 = load i64, i64* @DEVICE_STATE_Suspended, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %53

35:                                               ; preds = %33
  %36 = call i32 @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 (...) @matrix_power_down()
  %38 = call i32 (...) @suspend_power_down()
  %39 = call i32 (...) @suspend_power_down()
  %40 = call i32 (...) @suspend_power_down()
  %41 = call i32 (...) @suspend_power_down()
  %42 = call i32 (...) @suspend_power_down()
  %43 = call i32 (...) @suspend_power_down()
  %44 = call i32 (...) @suspend_power_down()
  %45 = load i64, i64* @USB_Device_RemoteWakeupEnabled, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = call i64 (...) @suspend_wakeup_condition()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @USB_Device_SendRemoteWakeup()
  br label %52

52:                                               ; preds = %50, %47, %35
  br label %26

53:                                               ; preds = %33
  %54 = call i32 (...) @keyboard_task()
  %55 = call i32 (...) @USB_USBTask()
  %56 = call i32 (...) @rn42_task()
  br label %25
}

declare dso_local i32 @SetupHardware(...) #1

declare dso_local i32 @sei(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @USB_USBTask(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @rn42_init(...) #1

declare dso_local i32 @rn42_task_init(...) #1

declare dso_local i32 @keyboard_init(...) #1

declare dso_local i64 @rn42_rts(...) #1

declare dso_local i32 @matrix_power_down(...) #1

declare dso_local i32 @suspend_power_down(...) #1

declare dso_local i64 @suspend_wakeup_condition(...) #1

declare dso_local i32 @USB_Device_SendRemoteWakeup(...) #1

declare dso_local i32 @keyboard_task(...) #1

declare dso_local i32 @rn42_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
