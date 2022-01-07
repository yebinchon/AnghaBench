; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMHibernateWakeupSourceDisable.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMHibernateWakeupSourceDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIB3P3_BASE = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_HIB_RTC_WAKE_EN = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_GPIO_WAKE_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PRCMHibernateWakeupSourceDisable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @HIB3P3_BASE, align 8
  %5 = load i64, i64* @HIB3P3_O_MEM_HIB_RTC_WAKE_EN, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i64 @MAP_PRCMHIBRegRead(i64 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 1
  %10 = xor i64 %9, -1
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* @HIB3P3_BASE, align 8
  %14 = load i64, i64* @HIB3P3_O_MEM_HIB_RTC_WAKE_EN, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @MAP_PRCMHIBRegWrite(i64 %15, i64 %16)
  %18 = load i64, i64* @HIB3P3_BASE, align 8
  %19 = load i64, i64* @HIB3P3_O_MEM_GPIO_WAKE_EN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @MAP_PRCMHIBRegRead(i64 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %2, align 8
  %23 = lshr i64 %22, 16
  %24 = and i64 %23, 255
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* @HIB3P3_BASE, align 8
  %29 = load i64, i64* @HIB3P3_O_MEM_GPIO_WAKE_EN, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @MAP_PRCMHIBRegWrite(i64 %30, i64 %31)
  ret void
}

declare dso_local i64 @MAP_PRCMHIBRegRead(i64) #1

declare dso_local i32 @MAP_PRCMHIBRegWrite(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
