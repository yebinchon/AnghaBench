; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_tmon_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_tmon_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TMON exit cleanup\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@tmon_log = common dso_local global i64 0, align 8
@event_tid = common dso_local global i64 0, align 8
@input_lock = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tmon_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmon_cleanup() #0 {
  %1 = load i32, i32* @LOG_INFO, align 4
  %2 = call i32 @syslog(i32 %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @fflush(i32 %3)
  %5 = call i32 (...) @refresh()
  %6 = load i64, i64* @tmon_log, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* @tmon_log, align 8
  %10 = call i32 @fclose(i64 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i64, i64* @event_tid, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = call i32 @pthread_mutex_lock(i32* @input_lock)
  %16 = load i64, i64* @event_tid, align 8
  %17 = call i32 @pthread_cancel(i64 %16)
  %18 = call i32 @pthread_mutex_unlock(i32* @input_lock)
  %19 = call i32 @pthread_mutex_destroy(i32* @input_lock)
  br label %20

20:                                               ; preds = %14, %11
  %21 = call i32 (...) @closelog()
  %22 = call i32 @set_ctrl_state(i32 0)
  %23 = load i32, i32* @stdscr, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @keypad(i32 %23, i32 %24)
  %26 = call i32 (...) @echo()
  %27 = call i32 (...) @nocbreak()
  %28 = call i32 (...) @close_windows()
  %29 = call i32 (...) @endwin()
  %30 = call i32 (...) @free_thermal_data()
  %31 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cancel(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @set_ctrl_state(i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @echo(...) #1

declare dso_local i32 @nocbreak(...) #1

declare dso_local i32 @close_windows(...) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @free_thermal_data(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
