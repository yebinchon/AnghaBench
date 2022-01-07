; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_vPortEnterCritical.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_vPortEnterCritical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uxCriticalNesting = common dso_local global i32 0, align 4
@portNVIC_INT_CTRL_REG = common dso_local global i32 0, align 4
@portVECTACTIVE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vPortEnterCritical() #0 {
  %1 = call i32 (...) @portDISABLE_INTERRUPTS()
  %2 = load i32, i32* @uxCriticalNesting, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @uxCriticalNesting, align 4
  %4 = load i32, i32* @uxCriticalNesting, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @portNVIC_INT_CTRL_REG, align 4
  %8 = load i32, i32* @portVECTACTIVE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @configASSERT(i32 %11)
  br label %13

13:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @portDISABLE_INTERRUPTS(...) #1

declare dso_local i32 @configASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
