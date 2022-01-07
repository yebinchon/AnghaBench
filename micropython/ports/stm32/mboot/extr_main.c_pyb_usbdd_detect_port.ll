; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_pyb_usbdd_detect_port.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_pyb_usbdd_detect_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MICROPY_HW_USB_MAIN_DEV = common dso_local global i32 0, align 4
@MP_HAL_PIN_MODE_INPUT = common dso_local global i32 0, align 4
@MP_HAL_PIN_PULL_NONE = common dso_local global i32 0, align 4
@MP_HAL_PIN_PULL_UP = common dso_local global i32 0, align 4
@USB_PHY_FS_ID = common dso_local global i32 0, align 4
@USB_PHY_HS_ID = common dso_local global i32 0, align 4
@pin_A11 = common dso_local global i32 0, align 4
@pin_A12 = common dso_local global i32 0, align 4
@pin_B14 = common dso_local global i32 0, align 4
@pin_B15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pyb_usbdd_detect_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyb_usbdd_detect_port() #0 {
  %1 = load i32, i32* @MICROPY_HW_USB_MAIN_DEV, align 4
  ret i32 %1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
