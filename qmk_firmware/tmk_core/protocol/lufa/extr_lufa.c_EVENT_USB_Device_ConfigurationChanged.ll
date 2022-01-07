; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_EVENT_USB_Device_ConfigurationChanged.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_EVENT_USB_Device_ConfigurationChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYBOARD_IN_EPNUM = common dso_local global i32 0, align 4
@EP_TYPE_INTERRUPT = common dso_local global i32 0, align 4
@ENDPOINT_DIR_IN = common dso_local global i32 0, align 4
@KEYBOARD_EPSIZE = common dso_local global i32 0, align 4
@ENDPOINT_BANK_SINGLE = common dso_local global i32 0, align 4
@CDC_EPSIZE = common dso_local global i32 0, align 4
@CDC_IN_EPADDR = common dso_local global i32 0, align 4
@CDC_NOTIFICATION_EPADDR = common dso_local global i32 0, align 4
@CDC_NOTIFICATION_EPSIZE = common dso_local global i32 0, align 4
@CDC_OUT_EPADDR = common dso_local global i32 0, align 4
@CONSOLE_EPSIZE = common dso_local global i32 0, align 4
@CONSOLE_IN_EPNUM = common dso_local global i32 0, align 4
@CONSOLE_OUT_EPNUM = common dso_local global i32 0, align 4
@ENDPOINT_DIR_OUT = common dso_local global i32 0, align 4
@EP_TYPE_BULK = common dso_local global i32 0, align 4
@MIDI_STREAM_EPSIZE = common dso_local global i32 0, align 4
@MIDI_STREAM_IN_EPADDR = common dso_local global i32 0, align 4
@MIDI_STREAM_OUT_EPADDR = common dso_local global i32 0, align 4
@MOUSE_EPSIZE = common dso_local global i32 0, align 4
@MOUSE_IN_EPNUM = common dso_local global i32 0, align 4
@RAW_EPSIZE = common dso_local global i32 0, align 4
@RAW_IN_EPNUM = common dso_local global i32 0, align 4
@RAW_OUT_EPNUM = common dso_local global i32 0, align 4
@SHARED_EPSIZE = common dso_local global i32 0, align 4
@SHARED_IN_EPNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EVENT_USB_Device_ConfigurationChanged() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i32, i32* @KEYBOARD_IN_EPNUM, align 4
  %3 = load i32, i32* @EP_TYPE_INTERRUPT, align 4
  %4 = load i32, i32* @ENDPOINT_DIR_IN, align 4
  %5 = load i32, i32* @KEYBOARD_EPSIZE, align 4
  %6 = load i32, i32* @ENDPOINT_BANK_SINGLE, align 4
  %7 = call i32 @ENDPOINT_CONFIG(i32 %2, i32 %3, i32 %4, i32 %5, i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %1, align 4
  ret void
}

declare dso_local i32 @ENDPOINT_CONFIG(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
