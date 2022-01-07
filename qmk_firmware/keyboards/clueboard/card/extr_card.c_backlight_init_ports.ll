; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/card/extr_card.c_backlight_init_ports.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/card/extr_card.c_backlight_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@ICR1 = common dso_local global i32 0, align 4
@TCCR1A = common dso_local global i32 0, align 4
@TCCR1B = common dso_local global i32 0, align 4
@BL_RED = common dso_local global i32 0, align 4
@BL_GREEN = common dso_local global i32 0, align 4
@BL_BLUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_init_ports() #0 {
  %1 = load i32, i32* @DDRB, align 4
  %2 = or i32 %1, 224
  store i32 %2, i32* @DDRB, align 4
  store i32 65535, i32* @ICR1, align 4
  store i32 170, i32* @TCCR1A, align 4
  store i32 25, i32* @TCCR1B, align 4
  store i32 65535, i32* @BL_RED, align 4
  store i32 65535, i32* @BL_GREEN, align 4
  store i32 65535, i32* @BL_BLUE, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
