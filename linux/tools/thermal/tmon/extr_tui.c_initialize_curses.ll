; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_initialize_curses.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_initialize_curses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tui_disabled = common dso_local global i64 0, align 8
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PT_COLOR_DEFAULT = common dso_local global i32 0, align 4
@COLOR_WHITE = common dso_local global i32 0, align 4
@COLOR_BLACK = common dso_local global i32 0, align 4
@PT_COLOR_HEADER_BAR = common dso_local global i32 0, align 4
@PT_COLOR_ERROR = common dso_local global i32 0, align 4
@COLOR_RED = common dso_local global i32 0, align 4
@PT_COLOR_RED = common dso_local global i32 0, align 4
@PT_COLOR_YELLOW = common dso_local global i32 0, align 4
@COLOR_YELLOW = common dso_local global i32 0, align 4
@PT_COLOR_GREEN = common dso_local global i32 0, align 4
@COLOR_GREEN = common dso_local global i32 0, align 4
@PT_COLOR_BLUE = common dso_local global i32 0, align 4
@COLOR_BLUE = common dso_local global i32 0, align 4
@PT_COLOR_BRIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_curses() #0 {
  %1 = load i64, i64* @tui_disabled, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %47

4:                                                ; preds = %0
  %5 = call i32 (...) @initscr()
  %6 = call i32 (...) @start_color()
  %7 = load i32, i32* @stdscr, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @keypad(i32 %7, i32 %8)
  %10 = call i32 (...) @nonl()
  %11 = call i32 (...) @cbreak()
  %12 = call i32 (...) @noecho()
  %13 = call i32 @curs_set(i32 0)
  %14 = call i32 (...) @use_default_colors()
  %15 = load i32, i32* @PT_COLOR_DEFAULT, align 4
  %16 = load i32, i32* @COLOR_WHITE, align 4
  %17 = load i32, i32* @COLOR_BLACK, align 4
  %18 = call i32 @init_pair(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @PT_COLOR_HEADER_BAR, align 4
  %20 = load i32, i32* @COLOR_BLACK, align 4
  %21 = load i32, i32* @COLOR_WHITE, align 4
  %22 = call i32 @init_pair(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @PT_COLOR_ERROR, align 4
  %24 = load i32, i32* @COLOR_BLACK, align 4
  %25 = load i32, i32* @COLOR_RED, align 4
  %26 = call i32 @init_pair(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @PT_COLOR_RED, align 4
  %28 = load i32, i32* @COLOR_WHITE, align 4
  %29 = load i32, i32* @COLOR_RED, align 4
  %30 = call i32 @init_pair(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @PT_COLOR_YELLOW, align 4
  %32 = load i32, i32* @COLOR_WHITE, align 4
  %33 = load i32, i32* @COLOR_YELLOW, align 4
  %34 = call i32 @init_pair(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @PT_COLOR_GREEN, align 4
  %36 = load i32, i32* @COLOR_WHITE, align 4
  %37 = load i32, i32* @COLOR_GREEN, align 4
  %38 = call i32 @init_pair(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @PT_COLOR_BLUE, align 4
  %40 = load i32, i32* @COLOR_WHITE, align 4
  %41 = load i32, i32* @COLOR_BLUE, align 4
  %42 = call i32 @init_pair(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @PT_COLOR_BRIGHT, align 4
  %44 = load i32, i32* @COLOR_WHITE, align 4
  %45 = load i32, i32* @COLOR_BLACK, align 4
  %46 = call i32 @init_pair(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @use_default_colors(...) #1

declare dso_local i32 @init_pair(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
