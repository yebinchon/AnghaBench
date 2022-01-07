; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/chibios/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@USB_DRIVER = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sendchar_pf = common dso_local global i32 0, align 4
@chibios_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"USB configured.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Keyboard start.\0A\00", align 1
@USB_SUSPENDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"[s]\00", align 1
@USB_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @halInit()
  %4 = call i32 (...) @chSysInit()
  %5 = call i32 (...) @keyboard_setup()
  %6 = call i32 @init_usb_driver(%struct.TYPE_4__* @USB_DRIVER)
  %7 = load i32, i32* @sendchar_pf, align 4
  %8 = call i32 @init_printf(i32* null, i32 %7)
  store i32* null, i32** %2, align 8
  br label %9

9:                                                ; preds = %0
  store i32* @chibios_driver, i32** %2, align 8
  br label %10

10:                                               ; preds = %9
  %11 = call i32 @wait_ms(i32 50)
  %12 = call i32 @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @keyboard_init()
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @host_set_driver(i32* %14)
  %16 = call i32 @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %10, %36
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @USB_DRIVER, i32 0, i32 0), align 8
  %19 = load i64, i64* @USB_SUSPENDED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = call i32 @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %33, %21
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @USB_DRIVER, i32 0, i32 0), align 8
  %25 = load i64, i64* @USB_SUSPENDED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = call i32 (...) @suspend_power_down()
  %29 = call i64 (...) @suspend_wakeup_condition()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @usbWakeupHost(%struct.TYPE_4__* @USB_DRIVER)
  br label %33

33:                                               ; preds = %31, %27
  br label %23

34:                                               ; preds = %23
  %35 = call i32 (...) @send_keyboard_report()
  br label %36

36:                                               ; preds = %34, %17
  %37 = call i32 (...) @keyboard_task()
  br label %17
}

declare dso_local i32 @halInit(...) #1

declare dso_local i32 @chSysInit(...) #1

declare dso_local i32 @keyboard_setup(...) #1

declare dso_local i32 @init_usb_driver(%struct.TYPE_4__*) #1

declare dso_local i32 @init_printf(i32*, i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @keyboard_init(...) #1

declare dso_local i32 @host_set_driver(i32*) #1

declare dso_local i32 @suspend_power_down(...) #1

declare dso_local i64 @suspend_wakeup_condition(...) #1

declare dso_local i32 @usbWakeupHost(%struct.TYPE_4__*) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @keyboard_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
