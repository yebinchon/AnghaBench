; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_digital.c_turnOffPWM.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_digital.c_turnOffPWM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COM0A1 = common dso_local global i32 0, align 4
@COM0B1 = common dso_local global i32 0, align 4
@COM1A1 = common dso_local global i32 0, align 4
@COM1B1 = common dso_local global i32 0, align 4
@COM21 = common dso_local global i32 0, align 4
@COM2A1 = common dso_local global i32 0, align 4
@COM2B1 = common dso_local global i32 0, align 4
@COM3A1 = common dso_local global i32 0, align 4
@COM3B1 = common dso_local global i32 0, align 4
@COM3C1 = common dso_local global i32 0, align 4
@COM4A1 = common dso_local global i32 0, align 4
@COM4B1 = common dso_local global i32 0, align 4
@COM4C1 = common dso_local global i32 0, align 4
@COM4D1 = common dso_local global i32 0, align 4
@COM5A1 = common dso_local global i32 0, align 4
@COM5B1 = common dso_local global i32 0, align 4
@COM5C1 = common dso_local global i32 0, align 4
@TCCR0A = common dso_local global i32 0, align 4
@TCCR1A = common dso_local global i32 0, align 4
@TCCR2 = common dso_local global i32 0, align 4
@TCCR2A = common dso_local global i32 0, align 4
@TCCR3A = common dso_local global i32 0, align 4
@TCCR4A = common dso_local global i32 0, align 4
@TCCR4C = common dso_local global i32 0, align 4
@TCCR5A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @turnOffPWM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnOffPWM(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
  ]

4:                                                ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
