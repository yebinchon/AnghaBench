; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_register.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@mp_type_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ExtInt vector %d < 16, use a Pin object\00", align 1
@EXTI_NUM_VECTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ExtInt vector %d >= max of %d\00", align 1
@GPIO_MODE_IT_RISING = common dso_local global i32 0, align 4
@GPIO_MODE_IT_FALLING = common dso_local global i32 0, align 4
@GPIO_MODE_IT_RISING_FALLING = common dso_local global i32 0, align 4
@GPIO_MODE_EVT_RISING = common dso_local global i32 0, align 4
@GPIO_MODE_EVT_FALLING = common dso_local global i32 0, align 4
@GPIO_MODE_EVT_RISING_FALLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid ExtInt Mode: %d\00", align 1
@GPIO_NOPULL = common dso_local global i32 0, align 4
@GPIO_PULLUP = common dso_local global i32 0, align 4
@GPIO_PULLDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid ExtInt Pull: %d\00", align 1
@pyb_extint_callback = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"ExtInt vector %d is already in use\00", align 1
@EXTI_Mode_Interrupt = common dso_local global i32 0, align 4
@EXTI_Mode_Event = common dso_local global i32 0, align 4
@pyb_extint_mode = common dso_local global i32* null, align 8
@pyb_extint_hard_irq = common dso_local global i32* null, align 8
@pyb_extint_callback_arg = common dso_local global i32* null, align 8
@GPIO_SPEED_FREQ_HIGH = common dso_local global i32 0, align 4
@nvic_irq_channel = common dso_local global i32* null, align 8
@IRQ_PRI_EXTINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extint_register(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @mp_obj_is_int(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %5
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @mp_obj_get_int(i64 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  %25 = call i32 (i32*, i8*, i32, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @nlr_raise(i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @EXTI_NUM_VECTORS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @EXTI_NUM_VECTORS, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = call i32 @nlr_raise(i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  br label %43

37:                                               ; preds = %5
  %38 = load i64, i64* %6, align 8
  %39 = call %struct.TYPE_5__* @pin_find(i64 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %11, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @GPIO_MODE_IT_RISING, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @GPIO_MODE_IT_FALLING, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GPIO_MODE_IT_RISING_FALLING, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @GPIO_MODE_EVT_RISING, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @GPIO_MODE_EVT_FALLING, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @GPIO_MODE_EVT_RISING_FALLING, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32*, i8*, i32, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = call i32 @nlr_raise(i32 %69)
  br label %71

71:                                               ; preds = %67, %63, %59, %55, %51, %47, %43
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @GPIO_NOPULL, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @GPIO_PULLUP, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @GPIO_PULLDOWN, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i32*, i8*, i32, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = call i32 @nlr_raise(i32 %85)
  br label %87

87:                                               ; preds = %83, %79, %75, %71
  %88 = load i32, i32* @pyb_extint_callback, align 4
  %89 = call i64* @MP_STATE_PORT(i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64* %92, i64** %13, align 8
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %87
  %96 = load i64*, i64** %13, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @mp_const_none, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @mp_const_none, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = call i32 (i32*, i8*, i32, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = call i32 @nlr_raise(i32 %106)
  br label %108

108:                                              ; preds = %104, %100, %95, %87
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @extint_disable(i32 %109)
  %111 = load i64, i64* %9, align 8
  %112 = load i64*, i64** %13, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 65536
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @EXTI_Mode_Interrupt, align 4
  br label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @EXTI_Mode_Event, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load i32*, i32** @pyb_extint_mode, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  %126 = load i64*, i64** %13, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @mp_const_none, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %183

130:                                              ; preds = %120
  %131 = load i32*, i32** @pyb_extint_hard_irq, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 1, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @MP_OBJ_NEW_SMALL_INT(i32 %135)
  %137 = load i32*, i32** @pyb_extint_callback_arg, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %142 = icmp eq %struct.TYPE_5__* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %130
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @extint_trigger_mode(i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @extint_enable(i32 %147)
  br label %168

149:                                              ; preds = %130
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @mp_hal_gpio_clock_enable(i32 %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %7, align 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* %8, align 4
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* @GPIO_SPEED_FREQ_HIGH, align 4
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32 %162, i32* %163, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @HAL_GPIO_Init(i32 %166, %struct.TYPE_6__* %14)
  br label %168

168:                                              ; preds = %149, %143
  %169 = load i32*, i32** @nvic_irq_channel, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @IRQn_NONNEG(i32 %173)
  %175 = load i32, i32* @IRQ_PRI_EXTINT, align 4
  %176 = call i32 @NVIC_SetPriority(i32 %174, i32 %175)
  %177 = load i32*, i32** @nvic_irq_channel, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @HAL_NVIC_EnableIRQ(i32 %181)
  br label %183

183:                                              ; preds = %168, %120
  %184 = load i32, i32* %12, align 4
  ret i32 %184
}

declare dso_local i64 @mp_obj_is_int(i64) #1

declare dso_local i32 @mp_obj_get_int(i64) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_5__* @pin_find(i64) #1

declare dso_local i64* @MP_STATE_PORT(i32) #1

declare dso_local i32 @extint_disable(i32) #1

declare dso_local i32 @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local i32 @extint_trigger_mode(i32, i32) #1

declare dso_local i32 @extint_enable(i32) #1

declare dso_local i32 @mp_hal_gpio_clock_enable(i32) #1

declare dso_local i32 @HAL_GPIO_Init(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @NVIC_SetPriority(i32, i32) #1

declare dso_local i32 @IRQn_NONNEG(i32) #1

declare dso_local i32 @HAL_NVIC_EnableIRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
