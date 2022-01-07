; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/usb_usb/extr_main.c_LUFA_setup.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/usb_usb/extr_main.c_LUFA_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDRF = common dso_local global i32 0, align 4
@MCUSR = common dso_local global i32 0, align 4
@clock_div_1 = common dso_local global i32 0, align 4
@sendchar = common dso_local global i32 0, align 4
@clock_div_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @LUFA_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LUFA_setup() #0 {
  %1 = load i32, i32* @WDRF, align 4
  %2 = shl i32 1, %1
  %3 = xor i32 %2, -1
  %4 = load i32, i32* @MCUSR, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @MCUSR, align 4
  %6 = call i32 (...) @wdt_disable()
  %7 = load i32, i32* @clock_div_1, align 4
  %8 = call i32 @clock_prescale_set(i32 %7)
  %9 = call i32 (...) @USB_Disable()
  %10 = call i32 (...) @USB_Init()
  %11 = call i32 (...) @USB_Device_EnableSOFEvents()
  %12 = load i32, i32* @sendchar, align 4
  %13 = call i32 @print_set_sendchar(i32 %12)
  ret void
}

declare dso_local i32 @wdt_disable(...) #1

declare dso_local i32 @clock_prescale_set(i32) #1

declare dso_local i32 @USB_Disable(...) #1

declare dso_local i32 @USB_Init(...) #1

declare dso_local i32 @USB_Device_EnableSOFEvents(...) #1

declare dso_local i32 @print_set_sendchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
