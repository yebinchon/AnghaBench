; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_resize_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_resize_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdscr = common dso_local global i32 0, align 4
@maxy = common dso_local global i32 0, align 4
@maxx = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SIG %d, term resized to %d x %d\0A\00", align 1
@SIGWINCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resize_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @close_windows()
  %4 = call i32 (...) @endwin()
  %5 = call i32 (...) @refresh()
  %6 = call i32 (...) @clear()
  %7 = load i32, i32* @stdscr, align 4
  %8 = load i32, i32* @maxy, align 4
  %9 = load i32, i32* @maxx, align 4
  %10 = call i32 @getmaxyx(i32 %7, i32 %8, i32 %9)
  %11 = call i32 (...) @setup_windows()
  %12 = call i32 @sleep(i32 1)
  %13 = load i32, i32* @LOG_DEBUG, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @maxy, align 4
  %16 = load i32, i32* @maxx, align 4
  %17 = call i32 @syslog(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @SIGWINCH, align 4
  %19 = call i32 @signal(i32 %18, void (i32)* @resize_handler)
  ret void
}

declare dso_local i32 @close_windows(...) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @setup_windows(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @signal(i32, void (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
