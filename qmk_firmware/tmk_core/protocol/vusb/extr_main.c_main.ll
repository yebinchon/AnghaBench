; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_BAUD_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"initForUsbConnectivity()\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"main loop\0A\00", align 1
@usbConfiguration = common dso_local global i64 0, align 8
@CLKPR = common dso_local global i32 0, align 4
@usbSofCount = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @UART_BAUD_RATE, align 4
  %4 = call i32 @uart_init(i32 %3)
  %5 = call i32 (...) @keyboard_setup()
  %6 = call i32 (...) @keyboard_init()
  %7 = call i32 (...) @vusb_driver()
  %8 = call i32 @host_set_driver(i32 %7)
  %9 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @initForUsbConnectivity()
  %11 = call i32 @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %0, %26
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = call i32 (...) @usbPoll()
  %17 = load i64, i64* @usbConfiguration, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = call i64 (...) @usbInterruptIsReady()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @keyboard_task()
  br label %24

24:                                               ; preds = %22, %19, %15
  %25 = call i32 (...) @vusb_transfer_keyboard()
  br label %26

26:                                               ; preds = %24, %12
  br label %12
}

declare dso_local i32 @uart_init(i32) #1

declare dso_local i32 @keyboard_setup(...) #1

declare dso_local i32 @keyboard_init(...) #1

declare dso_local i32 @host_set_driver(i32) #1

declare dso_local i32 @vusb_driver(...) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @initForUsbConnectivity(...) #1

declare dso_local i32 @usbPoll(...) #1

declare dso_local i64 @usbInterruptIsReady(...) #1

declare dso_local i32 @keyboard_task(...) #1

declare dso_local i32 @vusb_transfer_keyboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
