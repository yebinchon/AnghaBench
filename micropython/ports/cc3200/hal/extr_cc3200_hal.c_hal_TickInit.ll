; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_hal_TickInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_hal_TickInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAL_tickCount = common dso_local global i64 0, align 8
@HAL_IncrementTick = common dso_local global i32 0, align 4
@FAULT_SYSTICK = common dso_local global i32 0, align 4
@HAL_FCPU_HZ = common dso_local global i32 0, align 4
@HAL_SYSTICK_PERIOD_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hal_TickInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_TickInit() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @HAL_tickCount, align 8
  %2 = load i32, i32* @HAL_IncrementTick, align 4
  %3 = call i32 @MAP_SysTickIntRegister(i32 %2)
  %4 = load i32, i32* @FAULT_SYSTICK, align 4
  %5 = call i32 @MAP_IntEnable(i32 %4)
  %6 = call i32 (...) @MAP_SysTickIntEnable()
  %7 = load i32, i32* @HAL_FCPU_HZ, align 4
  %8 = load i32, i32* @HAL_SYSTICK_PERIOD_US, align 4
  %9 = sdiv i32 %7, %8
  %10 = call i32 @MAP_SysTickPeriodSet(i32 %9)
  store i32 0, i32* %1, align 4
  %11 = call i32 (...) @MAP_SysTickEnable()
  ret void
}

declare dso_local i32 @MAP_SysTickIntRegister(i32) #1

declare dso_local i32 @MAP_IntEnable(i32) #1

declare dso_local i32 @MAP_SysTickIntEnable(...) #1

declare dso_local i32 @MAP_SysTickPeriodSet(i32) #1

declare dso_local i32 @MAP_SysTickEnable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
