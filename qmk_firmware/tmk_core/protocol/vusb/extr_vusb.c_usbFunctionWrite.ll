; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_vusb.c_usbFunctionWrite.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_vusb.c_usbFunctionWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@last_req = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"SET_LED: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@vusb_keyboard_leds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbFunctionWrite(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_req, i32 0, i32 0), align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_req, i32 0, i32 1), align 8
  switch i32 %10, label %25 [
    i32 128, label %11
    i32 130, label %21
    i32 129, label %24
  ]

11:                                               ; preds = %9
  %12 = call i32 @debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debug_hex(i32 %15)
  %17 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @vusb_keyboard_leds, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_req, i32 0, i32 0), align 8
  store i32 1, i32* %3, align 4
  br label %26

21:                                               ; preds = %9
  %22 = call i32 (...) @usbDeviceDisconnect()
  %23 = call i32 (...) @bootloader_jump()
  store i32 1, i32* %3, align 4
  br label %26

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %9, %24
  store i32 -1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %21, %11, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug_hex(i32) #1

declare dso_local i32 @usbDeviceDisconnect(...) #1

declare dso_local i32 @bootloader_jump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
