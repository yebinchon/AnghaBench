; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_show_title_bar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_show_title_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tui_disabled = common dso_local global i64 0, align 8
@title_bar_window = common dso_local global i32 0, align 4
@PT_COLOR_HEADER_BAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"     TMON v%s\00", align 1
@VERSION = common dso_local global i32 0, align 4
@status_bar_window = common dso_local global i32 0, align 4
@status_bar_slots = common dso_local global i32* null, align 8
@A_REVERSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_title_bar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i64, i64* @tui_disabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @title_bar_window, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %0
  br label %71

9:                                                ; preds = %5
  %10 = load i32, i32* @title_bar_window, align 4
  %11 = load i32, i32* @PT_COLOR_HEADER_BAR, align 4
  %12 = call i32 @COLOR_PAIR(i32 %11)
  %13 = call i32 @wattrset(i32 %10, i32 %12)
  %14 = load i32, i32* @title_bar_window, align 4
  %15 = load i32, i32* @PT_COLOR_HEADER_BAR, align 4
  %16 = call i32 @COLOR_PAIR(i32 %15)
  %17 = call i32 @wbkgd(i32 %14, i32 %16)
  %18 = load i32, i32* @title_bar_window, align 4
  %19 = call i32 @werase(i32 %18)
  %20 = load i32, i32* @title_bar_window, align 4
  %21 = load i32, i32* @VERSION, align 4
  %22 = call i32 @mvwprintw(i32 %20, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @title_bar_window, align 4
  %24 = call i32 @wrefresh(i32 %23)
  %25 = load i32, i32* @status_bar_window, align 4
  %26 = call i32 @werase(i32 %25)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %65, %9
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %68

30:                                               ; preds = %27
  %31 = load i32*, i32** @status_bar_slots, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strlen(i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %65

39:                                               ; preds = %30
  %40 = load i32, i32* @status_bar_window, align 4
  %41 = load i32, i32* @A_REVERSE, align 4
  %42 = call i32 @wattron(i32 %40, i32 %41)
  %43 = load i32, i32* @status_bar_window, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32*, i32** @status_bar_slots, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mvwprintw(i32 %43, i32 0, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @status_bar_window, align 4
  %52 = load i32, i32* @A_REVERSE, align 4
  %53 = call i32 @wattroff(i32 %51, i32 %52)
  %54 = load i32*, i32** @status_bar_slots, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strlen(i32 %58)
  %60 = add nsw i64 %59, 1
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %39, %38
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %27

68:                                               ; preds = %27
  %69 = load i32, i32* @status_bar_window, align 4
  %70 = call i32 @wrefresh(i32 %69)
  br label %71

71:                                               ; preds = %68, %8
  ret void
}

declare dso_local i32 @wattrset(i32, i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @wbkgd(i32, i32) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @mvwprintw(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @wattron(i32, i32) #1

declare dso_local i32 @wattroff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
