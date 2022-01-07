; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb.c_usb_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb.c_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLLCSR = common dso_local global i32 0, align 4
@PLOCK = common dso_local global i32 0, align 4
@UDCON = common dso_local global i64 0, align 8
@usb_configuration = common dso_local global i64 0, align 8
@suspend = common dso_local global i32 0, align 4
@EORSTE = common dso_local global i32 0, align 4
@SOFE = common dso_local global i32 0, align 4
@SUSPE = common dso_local global i32 0, align 4
@WAKEUPE = common dso_local global i32 0, align 4
@UDIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_init() #0 {
  %1 = call i32 (...) @HW_CONFIG()
  %2 = call i32 (...) @USB_FREEZE()
  %3 = call i32 (...) @PLL_CONFIG()
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* @PLLCSR, align 4
  %6 = load i32, i32* @PLOCK, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %4

12:                                               ; preds = %4
  %13 = call i32 (...) @USB_CONFIG()
  store i64 0, i64* @UDCON, align 8
  store i64 0, i64* @usb_configuration, align 8
  store i32 0, i32* @suspend, align 4
  %14 = load i32, i32* @EORSTE, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* @SOFE, align 4
  %17 = shl i32 1, %16
  %18 = or i32 %15, %17
  %19 = load i32, i32* @SUSPE, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @WAKEUPE, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  store i32 %24, i32* @UDIEN, align 4
  %25 = call i32 (...) @sei()
  ret void
}

declare dso_local i32 @HW_CONFIG(...) #1

declare dso_local i32 @USB_FREEZE(...) #1

declare dso_local i32 @PLL_CONFIG(...) #1

declare dso_local i32 @USB_CONFIG(...) #1

declare dso_local i32 @sei(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
