; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCUSR = common dso_local global i64 0, align 8
@clock_div_1 = common dso_local global i32 0, align 4
@WD_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\0ASend BREAK for UART Console Commands.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"suart init\0A\00", align 1
@PORTC = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PCMSK1 = common dso_local global i32 0, align 4
@PCICR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"iwrap_init()\0A\00", align 1
@last_timer = common dso_local global i32 0, align 4
@sleeping = common dso_local global i32 0, align 4
@insomniac = common dso_local global i32 0, align 4
@WDTO_60MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 0, i64* @MCUSR, align 8
  %2 = load i32, i32* @clock_div_1, align 4
  %3 = call i32 @clock_prescale_set(i32 %2)
  %4 = load i32, i32* @WD_OFF, align 4
  %5 = call i32 @WD_SET(i32 %4)
  %6 = call i32 @uart_init(i32 115200)
  %7 = call i32 (...) @keyboard_init()
  %8 = call i32 @print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @PORTC, align 4
  %11 = or i32 %10, 16
  store i32 %11, i32* @PORTC, align 4
  %12 = load i32, i32* @DDRC, align 4
  %13 = or i32 %12, 16
  store i32 %13, i32* @DDRC, align 4
  %14 = load i32, i32* @PORTC, align 4
  %15 = or i32 %14, 32
  store i32 %15, i32* @PORTC, align 4
  %16 = load i32, i32* @DDRC, align 4
  %17 = and i32 %16, -33
  store i32 %17, i32* @DDRC, align 4
  store i32 32, i32* @PCMSK1, align 4
  store i32 2, i32* @PCICR, align 4
  %18 = call i64 (...) @iwrap_driver()
  %19 = call i32 @host_set_driver(i64 %18)
  %20 = call i32 @print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 (...) @iwrap_init()
  %22 = call i32 (...) @iwrap_call()
  %23 = call i32 (...) @timer_read()
  store i32 %23, i32* @last_timer, align 4
  br label %24

24:                                               ; preds = %0, %59
  %25 = call i32 (...) @keyboard_task()
  %26 = call i64 (...) @matrix_is_modified()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = call i64 (...) @console()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %24
  %32 = call i32 (...) @timer_read()
  store i32 %32, i32* @last_timer, align 4
  store i32 0, i32* @sleeping, align 4
  br label %43

33:                                               ; preds = %28
  %34 = load i32, i32* @sleeping, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @last_timer, align 4
  %38 = call i32 @timer_elapsed(i32 %37)
  %39 = icmp sgt i32 %38, 4000
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  store i32 1, i32* @sleeping, align 4
  %41 = call i32 (...) @iwrap_check_connection()
  br label %42

42:                                               ; preds = %40, %36, %33
  br label %43

43:                                               ; preds = %42, %31
  %44 = call i64 (...) @host_get_driver()
  %45 = call i64 (...) @iwrap_driver()
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* @sleeping, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* @insomniac, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = call i32 @_delay_ms(i32 1)
  %55 = call i32 (...) @iwrap_sleep()
  %56 = load i32, i32* @WDTO_60MS, align 4
  %57 = call i32 @sleep(i32 %56)
  br label %58

58:                                               ; preds = %53, %50, %47
  br label %59

59:                                               ; preds = %58, %43
  br label %24
}

declare dso_local i32 @clock_prescale_set(i32) #1

declare dso_local i32 @WD_SET(i32) #1

declare dso_local i32 @uart_init(i32) #1

declare dso_local i32 @keyboard_init(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @host_set_driver(i64) #1

declare dso_local i64 @iwrap_driver(...) #1

declare dso_local i32 @iwrap_init(...) #1

declare dso_local i32 @iwrap_call(...) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @keyboard_task(...) #1

declare dso_local i64 @matrix_is_modified(...) #1

declare dso_local i64 @console(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @iwrap_check_connection(...) #1

declare dso_local i64 @host_get_driver(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @iwrap_sleep(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
