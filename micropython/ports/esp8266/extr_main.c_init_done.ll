; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_main.c_init_done.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_main.c_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODEM_SLEEP_T = common dso_local global i32 0, align 4
@NULL_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@pyexec_mode_kind = common dso_local global i64 0, align 8
@PYEXEC_MODE_RAW_REPL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_done() #0 {
  %1 = load i32, i32* @MODEM_SLEEP_T, align 4
  %2 = call i32 @wifi_fpm_set_sleep_type(i32 %1)
  %3 = call i64 (...) @wifi_get_opmode()
  %4 = load i64, i64* @NULL_MODE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 (...) @wifi_fpm_open()
  %8 = call i32 @wifi_fpm_do_sleep(i32 268435455)
  br label %9

9:                                                ; preds = %6, %0
  %10 = call i32 (...) @mp_reset()
  %11 = call i32 @mp_hal_stdout_tx_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %28, %9
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i64, i64* @pyexec_mode_kind, align 8
  %15 = load i64, i64* @PYEXEC_MODE_RAW_REPL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i64 (...) @pyexec_raw_repl()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %28

21:                                               ; preds = %17
  br label %27

22:                                               ; preds = %13
  %23 = call i64 (...) @pyexec_friendly_repl()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %21
  br label %13

28:                                               ; preds = %25, %20
  %29 = call i32 (...) @soft_reset()
  br label %12
}

declare dso_local i32 @wifi_fpm_set_sleep_type(i32) #1

declare dso_local i64 @wifi_get_opmode(...) #1

declare dso_local i32 @wifi_fpm_open(...) #1

declare dso_local i32 @wifi_fpm_do_sleep(i32) #1

declare dso_local i32 @mp_reset(...) #1

declare dso_local i32 @mp_hal_stdout_tx_str(i8*) #1

declare dso_local i64 @pyexec_raw_repl(...) #1

declare dso_local i64 @pyexec_friendly_repl(...) #1

declare dso_local i32 @soft_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
