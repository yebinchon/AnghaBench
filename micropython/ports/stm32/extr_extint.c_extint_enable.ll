; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_enable.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EXTI_NUM_VECTORS = common dso_local global i64 0, align 8
@pyb_extint_mode = common dso_local global i64* null, align 8
@EXTI_Mode_Interrupt = common dso_local global i64 0, align 8
@EXTI = common dso_local global %struct.TYPE_4__* null, align 8
@EXTI_D1 = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extint_enable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @EXTI_NUM_VECTORS, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = call i32 (...) @disable_irq()
  store i32 %9, i32* %3, align 4
  %10 = load i64*, i64** @pyb_extint_mode, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EXTI_Mode_Interrupt, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load i64, i64* %2, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 1, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %32

24:                                               ; preds = %8
  %25 = load i64, i64* %2, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 1, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EXTI, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @enable_irq(i32 %33)
  br label %35

35:                                               ; preds = %32, %7
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
