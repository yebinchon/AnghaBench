; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_signal.c_pgwin32_signal_initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_signal.c_pgwin32_signal_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pg_signal_crit_sec = common dso_local global i32 0, align 4
@PG_SIGNAL_COUNT = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@pg_signal_array = common dso_local global i32* null, align 8
@SIG_IGN = common dso_local global i32 0, align 4
@pg_signal_defaults = common dso_local global i32* null, align 8
@pg_signal_mask = common dso_local global i64 0, align 8
@pg_signal_queue = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@pgwin32_signal_event = common dso_local global i32* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"could not create signal event: error code %lu\00", align 1
@pg_signal_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not create signal handler thread\00", align 1
@pg_console_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"could not set console control handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgwin32_signal_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 @InitializeCriticalSection(i32* @pg_signal_crit_sec)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @PG_SIGNAL_COUNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i32, i32* @SIG_DFL, align 4
  %10 = load i32*, i32** @pg_signal_array, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* @SIG_IGN, align 4
  %15 = load i32*, i32** @pg_signal_defaults, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %14, i32* %18, align 4
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %4

22:                                               ; preds = %4
  store i64 0, i64* @pg_signal_mask, align 8
  store i64 0, i64* @pg_signal_queue, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32* @CreateEvent(i32* null, i32 %23, i32 %24, i32* null)
  store i32* %25, i32** @pgwin32_signal_event, align 8
  %26 = load i32*, i32** @pgwin32_signal_event, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @FATAL, align 4
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* @pg_signal_thread, align 4
  %35 = call i32* @CreateThread(i32* null, i32 0, i32 %34, i32* null, i32 0, i32* null)
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @FATAL, align 4
  %40 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @ereport(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @pg_console_handler, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @SetConsoleCtrlHandler(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @FATAL, align 4
  %49 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i32* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @CreateThread(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @SetConsoleCtrlHandler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
