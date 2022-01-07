; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/H-4ND-H/src/extr_irq.c_enable_interrupt_controller.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/H-4ND-H/src/extr_irq.c_enable_interrupt_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENABLE_IRQS_1 = common dso_local global i32 0, align 4
@SYSTEM_TIMER_IRQ_1 = common dso_local global i32 0, align 4
@AUX_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_interrupt_controller() #0 {
  %1 = load i32, i32* @ENABLE_IRQS_1, align 4
  %2 = load i32, i32* @SYSTEM_TIMER_IRQ_1, align 4
  %3 = load i32, i32* @AUX_IRQ, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @put32(i32 %1, i32 %4)
  ret void
}

declare dso_local i32 @put32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
