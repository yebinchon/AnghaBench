; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_set.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, i32 }

@pyb_extint_callback = common dso_local global i32 0, align 4
@MP_OBJ_SENTINEL = common dso_local global i32 0, align 4
@EXTI_Mode_Interrupt = common dso_local global i32 0, align 4
@EXTI_Mode_Event = common dso_local global i32 0, align 4
@pyb_extint_mode = common dso_local global i32* null, align 8
@pyb_extint_hard_irq = common dso_local global i32* null, align 8
@pyb_extint_callback_arg = common dso_local global i32* null, align 8
@SYSCFG = common dso_local global %struct.TYPE_6__* null, align 8
@GPIO_MODE_IT_RISING = common dso_local global i64 0, align 8
@EXTI_RTSR = common dso_local global i32 0, align 4
@GPIO_MODE_IT_FALLING = common dso_local global i64 0, align 8
@EXTI_FTSR = common dso_local global i32 0, align 4
@nvic_irq_channel = common dso_local global i32* null, align 8
@IRQ_PRI_EXTINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extint_set(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @pyb_extint_callback, align 4
  %11 = call i32* @MP_STATE_PORT(i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @extint_disable(i64 %14)
  %16 = load i32, i32* @MP_OBJ_SENTINEL, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %18, 65536
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EXTI_Mode_Interrupt, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EXTI_Mode_Event, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load i32*, i32** @pyb_extint_mode, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32*, i32** @pyb_extint_hard_irq, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 1, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_5__* %33)
  %35 = load i32*, i32** @pyb_extint_callback_arg, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = call i32 (...) @__HAL_RCC_SYSCFG_CLK_ENABLE()
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SYSCFG, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = lshr i64 %42, 2
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = and i64 %46, 3
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = shl i32 15, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %45, %51
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @GPIO_GET_INDEX(i32 %56)
  %58 = load i64, i64* %5, align 8
  %59 = and i64 %58, 3
  %60 = mul i64 4, %59
  %61 = shl i64 %57, %60
  %62 = or i64 %53, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SYSCFG, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = lshr i64 %67, 2
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @GPIO_MODE_IT_RISING, align 8
  %72 = and i64 %70, %71
  %73 = load i64, i64* @GPIO_MODE_IT_RISING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %25
  %76 = load i64, i64* %5, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  %79 = load i32, i32* @EXTI_RTSR, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* @EXTI_RTSR, align 4
  br label %88

81:                                               ; preds = %25
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 1, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* @EXTI_RTSR, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* @EXTI_RTSR, align 4
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @GPIO_MODE_IT_FALLING, align 8
  %91 = and i64 %89, %90
  %92 = load i64, i64* @GPIO_MODE_IT_FALLING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i64, i64* %5, align 8
  %96 = trunc i64 %95 to i32
  %97 = shl i32 1, %96
  %98 = load i32, i32* @EXTI_FTSR, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* @EXTI_FTSR, align 4
  br label %107

100:                                              ; preds = %88
  %101 = load i64, i64* %5, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* @EXTI_FTSR, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* @EXTI_FTSR, align 4
  br label %107

107:                                              ; preds = %100, %94
  %108 = load i32*, i32** @nvic_irq_channel, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @IRQn_NONNEG(i32 %111)
  %113 = load i32, i32* @IRQ_PRI_EXTINT, align 4
  %114 = call i32 @NVIC_SetPriority(i32 %112, i32 %113)
  %115 = load i32*, i32** @nvic_irq_channel, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @HAL_NVIC_EnableIRQ(i32 %118)
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @extint_enable(i64 %120)
  ret void
}

declare dso_local i32* @MP_STATE_PORT(i32) #1

declare dso_local i32 @extint_disable(i64) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(%struct.TYPE_5__*) #1

declare dso_local i32 @__HAL_RCC_SYSCFG_CLK_ENABLE(...) #1

declare dso_local i64 @GPIO_GET_INDEX(i32) #1

declare dso_local i32 @NVIC_SetPriority(i32, i32) #1

declare dso_local i32 @IRQn_NONNEG(i32) #1

declare dso_local i32 @HAL_NVIC_EnableIRQ(i32) #1

declare dso_local i32 @extint_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
