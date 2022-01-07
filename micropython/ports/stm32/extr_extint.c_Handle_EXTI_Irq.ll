; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_Handle_EXTI_Irq.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_Handle_EXTI_Irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EXTI_NUM_VECTORS = common dso_local global i32 0, align 4
@pyb_extint_callback = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global i64 0, align 8
@pyb_extint_hard_irq = common dso_local global i32* null, align 8
@pyb_extint_callback_arg = common dso_local global i64* null, align 8
@MICROPY_ERROR_PRINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"uncaught exception in ExtInt interrupt handler line %u\0A\00", align 1
@mp_plat_print = common dso_local global i32 0, align 4
@PENDSV_DISPATCH_CYW43 = common dso_local global i32 0, align 4
@pyb_pin_WL_HOST_WAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Handle_EXTI_Irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = shl i32 1, %5
  %7 = call i64 @__HAL_GPIO_EXTI_GET_FLAG(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %74

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 1, %10
  %12 = call i32 @__HAL_GPIO_EXTI_CLEAR_FLAG(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @EXTI_NUM_VECTORS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %9
  %17 = load i32, i32* @pyb_extint_callback, align 4
  %18 = call i64* @MP_STATE_PORT(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64* %21, i64** %3, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @mp_const_none, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %16
  %27 = load i32*, i32** @pyb_extint_hard_irq, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load i64*, i64** %3, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** @pyb_extint_callback_arg, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @mp_sched_schedule(i64 %35, i64 %40)
  br label %74

42:                                               ; preds = %26
  %43 = call i32 (...) @mp_sched_lock()
  %44 = call i32 (...) @gc_lock()
  %45 = call i64 @nlr_push(%struct.TYPE_3__* %4)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i64*, i64** %3, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** @pyb_extint_callback_arg, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @mp_call_function_1(i64 %49, i64 %54)
  %56 = call i32 (...) @nlr_pop()
  br label %69

57:                                               ; preds = %42
  %58 = load i64, i64* @mp_const_none, align 8
  %59 = load i64*, i64** %3, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @extint_disable(i32 %60)
  %62 = load i32, i32* @MICROPY_ERROR_PRINTER, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @mp_printf(i32 %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @MP_OBJ_FROM_PTR(i32 %66)
  %68 = call i32 @mp_obj_print_exception(i32* @mp_plat_print, i64 %67)
  br label %69

69:                                               ; preds = %57, %47
  %70 = call i32 (...) @gc_unlock()
  %71 = call i32 (...) @mp_sched_unlock()
  br label %72

72:                                               ; preds = %69, %16
  br label %73

73:                                               ; preds = %72, %9
  br label %74

74:                                               ; preds = %33, %73, %1
  ret void
}

declare dso_local i64 @__HAL_GPIO_EXTI_GET_FLAG(i32) #1

declare dso_local i32 @__HAL_GPIO_EXTI_CLEAR_FLAG(i32) #1

declare dso_local i64* @MP_STATE_PORT(i32) #1

declare dso_local i32 @mp_sched_schedule(i64, i64) #1

declare dso_local i32 @mp_sched_lock(...) #1

declare dso_local i32 @gc_lock(...) #1

declare dso_local i64 @nlr_push(%struct.TYPE_3__*) #1

declare dso_local i32 @mp_call_function_1(i64, i64) #1

declare dso_local i32 @nlr_pop(...) #1

declare dso_local i32 @extint_disable(i32) #1

declare dso_local i32 @mp_printf(i32, i8*, i32) #1

declare dso_local i32 @mp_obj_print_exception(i32*, i64) #1

declare dso_local i64 @MP_OBJ_FROM_PTR(i32) #1

declare dso_local i32 @gc_unlock(...) #1

declare dso_local i32 @mp_sched_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
