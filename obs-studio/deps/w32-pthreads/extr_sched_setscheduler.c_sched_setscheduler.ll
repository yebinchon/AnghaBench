; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sched_setscheduler.c_sched_setscheduler.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sched_setscheduler.c_sched_setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_SET_INFORMATION = common dso_local global i32 0, align 4
@PTW32_FALSE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SCHED_OTHER = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sched_setscheduler(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 0, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = call i64 (...) @GetCurrentProcessId()
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %10
  %18 = load i32, i32* @PROCESS_SET_INFORMATION, align 4
  %19 = load i32, i32* @PTW32_FALSE, align 4
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32* @OpenProcess(i32 %18, i32 %19, i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* null, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = call i32 (...) @GetLastError()
  %27 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %28 = and i32 255, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EPERM, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ESRCH, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %49

36:                                               ; preds = %17
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @CloseHandle(i32* %37)
  br label %39

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %10
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* @SCHED_OTHER, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOSYS, align 4
  store i32 %46, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @SCHED_OTHER, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45, %34
  %50 = load i32, i32* %3, align 4
  ret i32 %50
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
