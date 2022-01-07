; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_register_pin.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_register_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@pyb_extint_callback = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global i64 0, align 8
@pyb_extint_callback_arg = common dso_local global i64* null, align 8
@mp_type_OSError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ExtInt vector %d is already in use\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"IRQ resource already taken by Pin('%q')\00", align 1
@EXTI_Mode_Interrupt = common dso_local global i32 0, align 4
@EXTI_Mode_Event = common dso_local global i32 0, align 4
@pyb_extint_mode = common dso_local global i32* null, align 8
@pyb_extint_hard_irq = common dso_local global i32* null, align 8
@SYSCFG = common dso_local global %struct.TYPE_7__* null, align 8
@nvic_irq_channel = common dso_local global i32* null, align 8
@IRQ_PRI_EXTINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extint_register_pin(%struct.TYPE_6__* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @pyb_extint_callback, align 4
  %16 = call i64* @MP_STATE_PORT(i32 %15)
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64* %18, i64** %10, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @mp_const_none, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call i64 @MP_OBJ_FROM_PTR(%struct.TYPE_6__* %24)
  %26 = load i64*, i64** @pyb_extint_callback_arg, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %23
  %32 = load i64*, i64** @pyb_extint_callback_arg, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @mp_obj_is_small_int(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_OSError, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = call i32 @nlr_raise(i32 %40)
  br label %53

42:                                               ; preds = %31
  %43 = load i64*, i64** @pyb_extint_callback_arg, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.TYPE_6__* @MP_OBJ_TO_PTR(i64 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %11, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_OSError, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = call i32 @nlr_raise(i32 %51)
  br label %53

53:                                               ; preds = %42, %38
  br label %54

54:                                               ; preds = %53, %23, %4
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @extint_disable(i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = load i64*, i64** %10, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = and i64 %59, 65536
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @EXTI_Mode_Interrupt, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @EXTI_Mode_Event, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32*, i32** @pyb_extint_mode, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load i64*, i64** %10, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @mp_const_none, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %134

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  %77 = load i32*, i32** @pyb_extint_hard_irq, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = call i64 @MP_OBJ_FROM_PTR(%struct.TYPE_6__* %80)
  %82 = load i64*, i64** @pyb_extint_callback_arg, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  %85 = call i32 (...) @__HAL_RCC_SYSCFG_CLK_ENABLE()
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SYSCFG, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = lshr i64 %89, 2
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %9, align 8
  %94 = and i64 %93, 3
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = shl i32 15, %96
  %98 = xor i32 %97, -1
  %99 = and i32 %92, %98
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @GPIO_GET_INDEX(i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = and i64 %105, 3
  %107 = mul i64 4, %106
  %108 = shl i64 %104, %107
  %109 = or i64 %100, %108
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SYSCFG, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = lshr i64 %114, 2
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @extint_trigger_mode(i64 %117, i64 %118)
  %120 = load i32*, i32** @nvic_irq_channel, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @IRQn_NONNEG(i32 %123)
  %125 = load i32, i32* @IRQ_PRI_EXTINT, align 4
  %126 = call i32 @NVIC_SetPriority(i32 %124, i32 %125)
  %127 = load i32*, i32** @nvic_irq_channel, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @HAL_NVIC_EnableIRQ(i32 %130)
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @extint_enable(i64 %132)
  br label %134

134:                                              ; preds = %75, %66
  ret void
}

declare dso_local i64* @MP_STATE_PORT(i32) #1

declare dso_local i64 @MP_OBJ_FROM_PTR(%struct.TYPE_6__*) #1

declare dso_local i64 @mp_obj_is_small_int(i64) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_6__* @MP_OBJ_TO_PTR(i64) #1

declare dso_local i32 @extint_disable(i64) #1

declare dso_local i32 @__HAL_RCC_SYSCFG_CLK_ENABLE(...) #1

declare dso_local i64 @GPIO_GET_INDEX(i32) #1

declare dso_local i32 @extint_trigger_mode(i64, i64) #1

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
