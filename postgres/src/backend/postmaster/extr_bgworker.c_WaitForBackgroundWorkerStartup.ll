; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_WaitForBackgroundWorkerStartup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_WaitForBackgroundWorkerStartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BGWH_STARTED = common dso_local global i32 0, align 4
@BGWH_NOT_YET_STARTED = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_BGWORKER_STARTUP = common dso_local global i32 0, align 4
@BGWH_POSTMASTER_DIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitForBackgroundWorkerStartup(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %8

8:                                                ; preds = %36, %2
  %9 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @GetBackgroundWorkerPid(i32* %10, i32* %7)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BGWH_STARTED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BGWH_NOT_YET_STARTED, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %39

23:                                               ; preds = %18
  %24 = load i32, i32* @MyLatch, align 4
  %25 = load i32, i32* @WL_LATCH_SET, align 4
  %26 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WAIT_EVENT_BGWORKER_STARTUP, align 4
  %29 = call i32 @WaitLatch(i32 %24, i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @BGWH_POSTMASTER_DIED, align 4
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @MyLatch, align 4
  %38 = call i32 @ResetLatch(i32 %37)
  br label %8

39:                                               ; preds = %34, %22
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @GetBackgroundWorkerPid(i32*, i32*) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
