; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_disable.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EXTI_NUM_VECTORS = common dso_local global i32 0, align 4
@EXTI = common dso_local global %struct.TYPE_4__* null, align 8
@EXTI_D1 = common dso_local global %struct.TYPE_3__* null, align 8
@EXTI_Mode_Event = common dso_local global i32 0, align 4
@EXTI_Mode_Interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extint_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @EXTI_NUM_VECTORS, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = call i32 (...) @disable_irq()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 1, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %2, align 4
  %18 = shl i32 1, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @enable_irq(i32 %24)
  br label %26

26:                                               ; preds = %8, %7
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
