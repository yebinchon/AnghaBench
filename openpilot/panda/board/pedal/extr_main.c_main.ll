; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/pedal/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/pedal/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@current_board = common dso_local global %struct.TYPE_2__* null, align 8
@CAN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set llcan speed\00", align 1
@TIM3 = common dso_local global i32 0, align 4
@TIM3_IRQn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"**** INTERRUPTS ON ****\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @disable_interrupts()
  %4 = call i32 (...) @clock_init()
  %5 = call i32 (...) @peripherals_init()
  %6 = call i32 (...) @detect_configuration()
  %7 = call i32 (...) @detect_board_type()
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = call i32 (...) %10()
  %12 = call i32 (...) @dac_init()
  %13 = call i32 (...) @adc_init()
  %14 = load i32, i32* @CAN1, align 4
  %15 = call i32 @llcan_set_speed(i32 %14, i32 5000, i32 0, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %0
  %21 = load i32, i32* @CAN1, align 4
  %22 = call i32 @llcan_init(i32 %21)
  %23 = load i32, i32* @TIM3, align 4
  %24 = call i32 @timer_init(i32 %23, i32 15)
  %25 = load i32, i32* @TIM3_IRQn, align 4
  %26 = call i32 @NVIC_EnableIRQ(i32 %25)
  %27 = call i32 (...) @watchdog_init()
  %28 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (...) @enable_interrupts()
  br label %30

30:                                               ; preds = %20, %30
  %31 = call i32 (...) @pedal()
  br label %30
}

declare dso_local i32 @disable_interrupts(...) #1

declare dso_local i32 @clock_init(...) #1

declare dso_local i32 @peripherals_init(...) #1

declare dso_local i32 @detect_configuration(...) #1

declare dso_local i32 @detect_board_type(...) #1

declare dso_local i32 @dac_init(...) #1

declare dso_local i32 @adc_init(...) #1

declare dso_local i32 @llcan_set_speed(i32, i32, i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @llcan_init(i32) #1

declare dso_local i32 @timer_init(i32, i32) #1

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

declare dso_local i32 @watchdog_init(...) #1

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @pedal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
