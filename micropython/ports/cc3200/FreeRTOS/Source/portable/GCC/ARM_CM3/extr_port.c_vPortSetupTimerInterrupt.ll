; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_vPortSetupTimerInterrupt.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_vPortSetupTimerInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@configSYSTICK_CLOCK_HZ = common dso_local global i64 0, align 8
@configTICK_RATE_HZ = common dso_local global i64 0, align 8
@portNVIC_SYSTICK_LOAD_REG = common dso_local global i64 0, align 8
@portNVIC_SYSTICK_CLK_BIT = common dso_local global i32 0, align 4
@portNVIC_SYSTICK_INT_BIT = common dso_local global i32 0, align 4
@portNVIC_SYSTICK_ENABLE_BIT = common dso_local global i32 0, align 4
@portNVIC_SYSTICK_CTRL_REG = common dso_local global i32 0, align 4
@configCPU_CLOCK_HZ = common dso_local global i64 0, align 8
@portMAX_24_BIT_NUMBER = common dso_local global i32 0, align 4
@portMISSED_COUNTS_FACTOR = common dso_local global i64 0, align 8
@ulStoppedTimerCompensation = common dso_local global i64 0, align 8
@ulTimerCountsForOneTick = common dso_local global i32 0, align 4
@xMaximumPossibleSuppressedTicks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @vPortSetupTimerInterrupt() #0 {
  %1 = load i64, i64* @configSYSTICK_CLOCK_HZ, align 8
  %2 = load i64, i64* @configTICK_RATE_HZ, align 8
  %3 = udiv i64 %1, %2
  %4 = sub i64 %3, 1
  store i64 %4, i64* @portNVIC_SYSTICK_LOAD_REG, align 8
  %5 = load i32, i32* @portNVIC_SYSTICK_CLK_BIT, align 4
  %6 = load i32, i32* @portNVIC_SYSTICK_INT_BIT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @portNVIC_SYSTICK_ENABLE_BIT, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* @portNVIC_SYSTICK_CTRL_REG, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
