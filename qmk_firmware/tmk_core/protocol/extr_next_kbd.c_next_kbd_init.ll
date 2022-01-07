; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_next_kbd.c_next_kbd_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_next_kbd.c_next_kbd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXT_KBD_IN_BIT = common dso_local global i32 0, align 4
@NEXT_KBD_IN_DDR = common dso_local global i32 0, align 4
@NEXT_KBD_IN_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @next_kbd_init() #0 {
  %1 = call i32 (...) @out_hi()
  %2 = load i32, i32* @NEXT_KBD_IN_BIT, align 4
  %3 = shl i32 1, %2
  %4 = xor i32 %3, -1
  %5 = load i32, i32* @NEXT_KBD_IN_DDR, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* @NEXT_KBD_IN_DDR, align 4
  %7 = load i32, i32* @NEXT_KBD_IN_BIT, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @NEXT_KBD_IN_PORT, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @NEXT_KBD_IN_PORT, align 4
  %11 = call i32 @query_delay(i32 5)
  %12 = call i32 @reset_delay(i32 8)
  %13 = call i32 @query_delay(i32 5)
  %14 = call i32 @reset_delay(i32 8)
  ret void
}

declare dso_local i32 @out_hi(...) #1

declare dso_local i32 @query_delay(i32) #1

declare dso_local i32 @reset_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
