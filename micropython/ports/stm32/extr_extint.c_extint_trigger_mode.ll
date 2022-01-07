; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_trigger_mode.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_trigger_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTI_NUM_VECTORS = common dso_local global i32 0, align 4
@GPIO_MODE_IT_RISING = common dso_local global i32 0, align 4
@EXTI_RTSR = common dso_local global i32 0, align 4
@GPIO_MODE_IT_FALLING = common dso_local global i32 0, align 4
@EXTI_FTSR = common dso_local global i32 0, align 4
@EXTI_Trigger_Falling = common dso_local global i32 0, align 4
@EXTI_Trigger_Rising = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extint_trigger_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EXTI_NUM_VECTORS, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %48

10:                                               ; preds = %2
  %11 = call i32 (...) @disable_irq()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GPIO_MODE_IT_RISING, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @GPIO_MODE_IT_RISING, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @EXTI_RTSR, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @EXTI_RTSR, align 4
  br label %28

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @EXTI_RTSR, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* @EXTI_RTSR, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GPIO_MODE_IT_FALLING, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @GPIO_MODE_IT_FALLING, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @EXTI_FTSR, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @EXTI_FTSR, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* @EXTI_FTSR, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* @EXTI_FTSR, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @enable_irq(i32 %46)
  br label %48

48:                                               ; preds = %45, %9
  ret void
}

declare dso_local i32 @disable_irq(...) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
