; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_command.c_print_status.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_command.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"\0A\09- Status -\0A\00", align 1
@keyboard_protocol = common dso_local global i32 0, align 4
@keyboard_idle = common dso_local global i32 0, align 4
@UDCON = common dso_local global i32 0, align 4
@UDIEN = common dso_local global i32 0, align 4
@UDINT = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@usbSofCount = common dso_local global i32 0, align 4
@usb_keyboard_idle_count = common dso_local global i32 0, align 4
@usb_keyboard_leds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @host_keyboard_leds()
  %3 = call i32 @print_val_hex8(i32 %2)
  %4 = load i32, i32* @keyboard_protocol, align 4
  %5 = call i32 @print_val_hex8(i32 %4)
  %6 = load i32, i32* @keyboard_idle, align 4
  %7 = call i32 @print_val_hex8(i32 %6)
  %8 = call i32 (...) @timer_read32()
  %9 = call i32 @print_val_hex32(i32 %8)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @print_val_hex8(i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @print_val_hex32(i32) #1

declare dso_local i32 @timer_read32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
