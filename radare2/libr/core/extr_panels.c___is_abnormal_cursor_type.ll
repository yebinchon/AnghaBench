; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___is_abnormal_cursor_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___is_abnormal_cursor_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PANEL_CMD_SYMBOLS = common dso_local global i32 0, align 4
@PANEL_CMD_FUNCTION = common dso_local global i32 0, align 4
@PANEL_TITLE_DISASMSUMMARY = common dso_local global i32 0, align 4
@PANEL_TITLE_STRINGS_DATA = common dso_local global i32 0, align 4
@PANEL_TITLE_STRINGS_BIN = common dso_local global i32 0, align 4
@PANEL_TITLE_BREAKPOINTS = common dso_local global i32 0, align 4
@PANEL_TITLE_SECTIONS = common dso_local global i32 0, align 4
@PANEL_TITLE_SEGMENTS = common dso_local global i32 0, align 4
@PANEL_TITLE_COMMENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__is_abnormal_cursor_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* @PANEL_CMD_SYMBOLS, align 4
  %8 = call i64 @__check_panel_type(i32* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @PANEL_CMD_FUNCTION, align 4
  %13 = call i64 @__check_panel_type(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i32 1, i32* %3, align 4
  br label %66

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @PANEL_TITLE_DISASMSUMMARY, align 4
  %20 = call i64 @search_db_check_panel_type(i32* %17, i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %66

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @PANEL_TITLE_STRINGS_DATA, align 4
  %27 = call i64 @search_db_check_panel_type(i32* %24, i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %66

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @PANEL_TITLE_STRINGS_BIN, align 4
  %34 = call i64 @search_db_check_panel_type(i32* %31, i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %66

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @PANEL_TITLE_BREAKPOINTS, align 4
  %41 = call i64 @search_db_check_panel_type(i32* %38, i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %66

44:                                               ; preds = %37
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @PANEL_TITLE_SECTIONS, align 4
  %48 = call i64 @search_db_check_panel_type(i32* %45, i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %66

51:                                               ; preds = %44
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @PANEL_TITLE_SEGMENTS, align 4
  %55 = call i64 @search_db_check_panel_type(i32* %52, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %66

58:                                               ; preds = %51
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @PANEL_TITLE_COMMENTS, align 4
  %62 = call i64 @search_db_check_panel_type(i32* %59, i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %57, %50, %43, %36, %29, %22, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @__check_panel_type(i32*, i32) #1

declare dso_local i64 @search_db_check_panel_type(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
