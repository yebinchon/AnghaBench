; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_start_daemon_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tmon.c_start_daemon_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daemon_mode = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_daemon_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_daemon_mode() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i32 1, i32* @daemon_mode, align 4
  %3 = call i64 (...) @fork()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  %8 = call i32 @exit(i32 %7) #3
  unreachable

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @EXIT_SUCCESS, align 4
  %14 = call i32 @exit(i32 %13) #3
  unreachable

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15
  %17 = call i32 (...) @disable_tui()
  %18 = load i32, i32* @S_IWGRP, align 4
  %19 = load i32, i32* @S_IWOTH, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @umask(i32 %20)
  %22 = call i64 (...) @setsid()
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %16
  %29 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %28
  %35 = call i32 @sleep(i32 10)
  %36 = load i32, i32* @STDIN_FILENO, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i32, i32* @STDOUT_FILENO, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* @STDERR_FILENO, align 4
  %41 = call i32 @close(i32 %40)
  ret void
}

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @disable_tui(...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @setsid(...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
