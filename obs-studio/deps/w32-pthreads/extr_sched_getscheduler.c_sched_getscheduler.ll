; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sched_getscheduler.c_sched_getscheduler.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sched_getscheduler.c_sched_getscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@PTW32_FALSE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SCHED_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sched_getscheduler(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 0, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = call i64 (...) @GetCurrentProcessId()
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %17 = load i32, i32* @PTW32_FALSE, align 4
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32* @OpenProcess(i32 %16, i32 %17, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* null, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = call i32 (...) @GetLastError()
  %25 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %26 = and i32 255, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EPERM, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @ESRCH, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %41

34:                                               ; preds = %15
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @CloseHandle(i32* %35)
  br label %37

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %8
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* @SCHED_OTHER, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @GetCurrentProcessId(...) #1

declare dso_local i32* @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
