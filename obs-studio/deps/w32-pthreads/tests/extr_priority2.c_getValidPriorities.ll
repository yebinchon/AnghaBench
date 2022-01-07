; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority2.c_getValidPriorities.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority2.c_getValidPriorities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@minPrio = common dso_local global i32 0, align 4
@maxPrio = common dso_local global i32 0, align 4
@SCHED_OTHER = common dso_local global i32 0, align 4
@validPriorities = common dso_local global i32* null, align 8
@PTW32TEST_MAXPRIORITIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getValidPriorities(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_param, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @pthread_self()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @pthread_getw32threadhandle_np(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @minPrio, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @maxPrio, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SCHED_OTHER, align 4
  %20 = call i64 @pthread_setschedparam(i32 %18, i32 %19, %struct.sched_param* %6)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @GetThreadPriority(i32 %24)
  %26 = load i32*, i32** @validPriorities, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PTW32TEST_MAXPRIORITIES, align 4
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  store i32 %25, i32* %32, align 4
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %11

36:                                               ; preds = %11
  ret i8* null
}

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_getw32threadhandle_np(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_setschedparam(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @GetThreadPriority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
