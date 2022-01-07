; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_screen.c_screenclear2.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_screen.c_screenclear2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@starting = common dso_local global i64 0, align 8
@NO_SCREEN = common dso_local global i64 0, align 8
@ScreenLines = common dso_local global i32* null, align 8
@screen_attr = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@LineOffset = common dso_local global i32* null, align 8
@Columns = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@LineWraps = common dso_local global i8** null, align 8
@T_CL = common dso_local global i32 0, align 4
@clear_cmdline = common dso_local global i8* null, align 8
@mode_displayed = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@screen_cleared = common dso_local global i8* null, align 8
@firstwin = common dso_local global i32 0, align 4
@redraw_cmdline = common dso_local global i8* null, align 8
@must_redraw = common dso_local global i64 0, align 8
@CLEAR = common dso_local global i64 0, align 8
@NOT_VALID = common dso_local global i64 0, align 8
@cmdline_row = common dso_local global i32 0, align 4
@msg_row = common dso_local global i32 0, align 4
@msg_col = common dso_local global i64 0, align 8
@msg_scrolled = common dso_local global i64 0, align 8
@msg_didany = common dso_local global i8* null, align 8
@msg_didout = common dso_local global i8* null, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@redraw_tabline = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @screenclear2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screenclear2() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @starting, align 8
  %3 = load i64, i64* @NO_SCREEN, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32*, i32** @ScreenLines, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  br label %76

9:                                                ; preds = %5
  store i32 -1, i32* @screen_attr, align 4
  %10 = call i32 (...) @screen_stop_highlight()
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %29, %9
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @Rows, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i32*, i32** @LineOffset, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @Columns, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @lineclear(i32 %20, i32 %22)
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load i8**, i8*** @LineWraps, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  store i8* %24, i8** %28, align 8
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* @T_CL, align 4
  %34 = call i64 @can_clear(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @T_CL, align 4
  %38 = call i32 @out_str(i32 %37)
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** @clear_cmdline, align 8
  %40 = load i8*, i8** @FALSE, align 8
  store i8* %40, i8** @mode_displayed, align 8
  br label %60

41:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @Rows, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32*, i32** @LineOffset, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @Columns, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @lineinvalid(i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i8*, i8** @TRUE, align 8
  store i8* %59, i8** @clear_cmdline, align 8
  br label %60

60:                                               ; preds = %58, %36
  %61 = load i8*, i8** @TRUE, align 8
  store i8* %61, i8** @screen_cleared, align 8
  %62 = load i32, i32* @firstwin, align 4
  %63 = call i32 @win_rest_invalid(i32 %62)
  %64 = load i8*, i8** @TRUE, align 8
  store i8* %64, i8** @redraw_cmdline, align 8
  %65 = load i64, i64* @must_redraw, align 8
  %66 = load i64, i64* @CLEAR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i64, i64* @NOT_VALID, align 8
  store i64 %69, i64* @must_redraw, align 8
  br label %70

70:                                               ; preds = %68, %60
  %71 = call i32 (...) @compute_cmdrow()
  %72 = load i32, i32* @cmdline_row, align 4
  store i32 %72, i32* @msg_row, align 4
  store i64 0, i64* @msg_col, align 8
  %73 = call i32 (...) @screen_start()
  store i64 0, i64* @msg_scrolled, align 8
  %74 = load i8*, i8** @FALSE, align 8
  store i8* %74, i8** @msg_didany, align 8
  %75 = load i8*, i8** @FALSE, align 8
  store i8* %75, i8** @msg_didout, align 8
  br label %76

76:                                               ; preds = %70, %8
  ret void
}

declare dso_local i32 @screen_stop_highlight(...) #1

declare dso_local i32 @lineclear(i32, i32) #1

declare dso_local i64 @can_clear(i32) #1

declare dso_local i32 @out_str(i32) #1

declare dso_local i32 @lineinvalid(i32, i32) #1

declare dso_local i32 @win_rest_invalid(i32) #1

declare dso_local i32 @compute_cmdrow(...) #1

declare dso_local i32 @screen_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
