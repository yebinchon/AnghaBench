; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/usbdrv/extr_usbdrv.c_usbInit.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/usbdrv/extr_usbdrv.c_usbInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_INTR_ENABLE_BIT = common dso_local global i32 0, align 4
@USB_INTR_ENABLE = common dso_local global i32 0, align 4
@USBPID_NAK = common dso_local global i8* null, align 8
@USB_INTR_CFG = common dso_local global i32 0, align 4
@USB_INTR_CFG_CLR = common dso_local global i32 0, align 4
@USB_INTR_CFG_SET = common dso_local global i32 0, align 4
@usbTxLen1 = common dso_local global i8* null, align 8
@usbTxLen3 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbInit() #0 {
  %1 = load i32, i32* @USB_INTR_ENABLE_BIT, align 4
  %2 = shl i32 1, %1
  %3 = load i32, i32* @USB_INTR_ENABLE, align 4
  %4 = or i32 %3, %2
  store i32 %4, i32* @USB_INTR_ENABLE, align 4
  %5 = call i32 (...) @usbResetDataToggling()
  ret void
}

declare dso_local i32 @usbResetDataToggling(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
