; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_xPortStartScheduler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_xPortStartScheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@configMAX_SYSCALL_INTERRUPT_PRIORITY = common dso_local global i32 0, align 4
@portNVIC_PENDSV_PRI = common dso_local global i32 0, align 4
@portNVIC_SYSPRI2_REG = common dso_local global i32 0, align 4
@portNVIC_SYSTICK_PRI = common dso_local global i32 0, align 4
@uxCriticalNesting = common dso_local global i64 0, align 8
@portFIRST_USER_INTERRUPT_NUMBER = common dso_local global i64 0, align 8
@portMAX_8_BIT_VALUE = common dso_local global i32 0, align 4
@portMAX_PRIGROUP_BITS = common dso_local global i32 0, align 4
@portNVIC_IP_REGISTERS_OFFSET_16 = common dso_local global i64 0, align 8
@portPRIGROUP_SHIFT = common dso_local global i32 0, align 4
@portPRIORITY_GROUP_MASK = common dso_local global i32 0, align 4
@portTOP_BIT_OF_BYTE = common dso_local global i32 0, align 4
@ucMaxSysCallPriority = common dso_local global i32 0, align 4
@ulMaxPRIGROUPValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xPortStartScheduler() #0 {
  %1 = load volatile i32, i32* @configMAX_SYSCALL_INTERRUPT_PRIORITY, align 4
  %2 = call i32 @configASSERT(i32 %1)
  %3 = load i32, i32* @portNVIC_PENDSV_PRI, align 4
  %4 = load i32, i32* @portNVIC_SYSPRI2_REG, align 4
  %5 = or i32 %4, %3
  store i32 %5, i32* @portNVIC_SYSPRI2_REG, align 4
  %6 = load i32, i32* @portNVIC_SYSTICK_PRI, align 4
  %7 = load i32, i32* @portNVIC_SYSPRI2_REG, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @portNVIC_SYSPRI2_REG, align 4
  %9 = call i32 (...) @vPortSetupTimerInterrupt()
  store i64 0, i64* @uxCriticalNesting, align 8
  %10 = call i32 (...) @prvPortStartFirstTask()
  %11 = call i32 (...) @prvTaskExitError()
  ret i32 0
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @vPortSetupTimerInterrupt(...) #1

declare dso_local i32 @prvPortStartFirstTask(...) #1

declare dso_local i32 @prvTaskExitError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
