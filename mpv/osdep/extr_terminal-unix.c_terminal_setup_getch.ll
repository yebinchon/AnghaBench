; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_terminal_setup_getch.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_terminal_setup_getch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }

@getch2_enabled = common dso_local global i32 0, align 4
@input_ctx = common dso_local global %struct.input_ctx* null, align 8
@death_pipe = common dso_local global i32 0, align 4
@tty_in = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@read_terminal = common dso_local global i32 0, align 4
@input_thread = common dso_local global i32 0, align 4
@terminal_thread = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@quit_request_sighandler = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_setup_getch(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %3 = load i32, i32* @getch2_enabled, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.input_ctx*, %struct.input_ctx** @input_ctx, align 8
  %7 = icmp ne %struct.input_ctx* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  br label %45

9:                                                ; preds = %5
  %10 = load i32, i32* @death_pipe, align 4
  %11 = call i64 @mp_make_wakeup_pipe(i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %45

14:                                               ; preds = %9
  %15 = load i32, i32* @tty_in, align 4
  %16 = call i64 @isatty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @STDOUT_FILENO, align 4
  %20 = call i64 @isatty(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @read_terminal, align 4
  %25 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  store %struct.input_ctx* %25, %struct.input_ctx** @input_ctx, align 8
  %26 = load i32, i32* @terminal_thread, align 4
  %27 = call i64 @pthread_create(i32* @input_thread, i32* null, i32 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  store %struct.input_ctx* null, %struct.input_ctx** @input_ctx, align 8
  %30 = call i32 (...) @close_death_pipe()
  %31 = call i32 (...) @close_tty()
  br label %45

32:                                               ; preds = %22
  %33 = load i32, i32* @SIGINT, align 4
  %34 = load i32, i32* @quit_request_sighandler, align 4
  %35 = load i32, i32* @SA_RESETHAND, align 4
  %36 = call i32 @setsigaction(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load i32, i32* @SIGQUIT, align 4
  %38 = load i32, i32* @quit_request_sighandler, align 4
  %39 = load i32, i32* @SA_RESETHAND, align 4
  %40 = call i32 @setsigaction(i32 %37, i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* @SIGTERM, align 4
  %42 = load i32, i32* @quit_request_sighandler, align 4
  %43 = load i32, i32* @SA_RESETHAND, align 4
  %44 = call i32 @setsigaction(i32 %41, i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %32, %29, %13, %8
  ret void
}

declare dso_local i64 @mp_make_wakeup_pipe(i32) #1

declare dso_local i64 @isatty(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @close_death_pipe(...) #1

declare dso_local i32 @close_tty(...) #1

declare dso_local i32 @setsigaction(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
