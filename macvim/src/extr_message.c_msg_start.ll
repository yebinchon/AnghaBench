; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_message.c_msg_start.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_message.c_msg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@msg_silent = common dso_local global i64 0, align 8
@keep_msg = common dso_local global i32* null, align 8
@msg_scroll = common dso_local global i32 0, align 4
@full_screen = common dso_local global i64 0, align 8
@cmdline_row = common dso_local global i32 0, align 4
@msg_row = common dso_local global i32 0, align 4
@msg_col = common dso_local global i64 0, align 8
@msg_didout = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@exmode_active = common dso_local global i64 0, align 8
@EXMODE_NORMAL = common dso_local global i64 0, align 8
@msg_didany = common dso_local global i32 0, align 4
@lines_left = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Columns = common dso_local global i64 0, align 8
@cmdmsg_rl = common dso_local global i64 0, align 8
@need_clr_eos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_start() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FALSE, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @msg_silent, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32*, i32** @keep_msg, align 8
  %7 = call i32 @vim_free(i32* %6)
  store i32* null, i32** @keep_msg, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @msg_scroll, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @full_screen, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @cmdline_row, align 4
  store i32 %15, i32* @msg_row, align 4
  store i64 0, i64* @msg_col, align 8
  br label %29

16:                                               ; preds = %11, %8
  %17 = load i32, i32* @msg_didout, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = call i32 @msg_putchar(i8 signext 10)
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %1, align 4
  %22 = load i64, i64* @exmode_active, align 8
  %23 = load i64, i64* @EXMODE_NORMAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @msg_row, align 4
  store i32 %26, i32* @cmdline_row, align 4
  br label %27

27:                                               ; preds = %25, %19
  br label %28

28:                                               ; preds = %27, %16
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* @msg_didany, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @lines_left, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = call i32 (...) @msg_starthere()
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i64, i64* @msg_silent, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* @msg_didout, align 4
  %42 = call i32 (...) @cursor_off()
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @redir_write(i32* bitcast ([2 x i8]* @.str to i32*), i32 -1)
  br label %48

48:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32 @msg_putchar(i8 signext) #1

declare dso_local i32 @msg_starthere(...) #1

declare dso_local i32 @cursor_off(...) #1

declare dso_local i32 @redir_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
