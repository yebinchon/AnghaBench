; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_timer.c_timer_irq_handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_timer.c_timer_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i32, i32 }

@PYB_TIMER_OBJ_ALL_NUM = common dso_local global i32 0, align 4
@pyb_timer_obj_all = common dso_local global i32 0, align 4
@MICROPY_ERROR_PRINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unhandled interrupt SR=0x%02x (now disabled)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_irq_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* @PYB_TIMER_OBJ_ALL_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %1
  %12 = load i32, i32* @pyb_timer_obj_all, align 4
  %13 = call %struct.TYPE_9__** @MP_STATE_PORT(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %13, i64 %16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %79

22:                                               ; preds = %11
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @timer_handle_irq_channel(%struct.TYPE_9__* %23, i32 0, i32 %26)
  %28 = call i32 @TIMER_IRQ_MASK(i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %5, align 8
  br label %32

32:                                               ; preds = %35, %22
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @timer_handle_irq_channel(%struct.TYPE_9__* %36, i32 %39, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @TIMER_IRQ_MASK(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %5, align 8
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = load i32, i32* %4, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %53
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @__HAL_TIM_DISABLE_IT(%struct.TYPE_11__* %68, i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @__HAL_TIM_CLEAR_IT(%struct.TYPE_11__* %72, i32 %73)
  %75 = load i32, i32* @MICROPY_ERROR_PRINTER, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @mp_printf(i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %66, %53
  br label %79

79:                                               ; preds = %21, %78, %1
  ret void
}

declare dso_local %struct.TYPE_9__** @MP_STATE_PORT(i32) #1

declare dso_local i32 @timer_handle_irq_channel(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @TIMER_IRQ_MASK(i32) #1

declare dso_local i32 @__HAL_TIM_DISABLE_IT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @__HAL_TIM_CLEAR_IT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mp_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
