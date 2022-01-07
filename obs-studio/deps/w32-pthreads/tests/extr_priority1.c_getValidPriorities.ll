; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority1.c_getValidPriorities.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority1.c_getValidPriorities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Using GetThreadPriority\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%10s %10s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Set value\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Get value\00", align 1
@minPrio = common dso_local global i32 0, align 4
@maxPrio = common dso_local global i32 0, align 4
@THREAD_PRIORITY_LOWEST = common dso_local global i32 0, align 4
@THREAD_PRIORITY_HIGHEST = common dso_local global i32 0, align 4
@validPriorities = common dso_local global i32* null, align 8
@PTW32TEST_MAXPRIORITIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"%10d %10d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getValidPriorities(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @pthread_self()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pthread_getw32threadhandle_np(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @minPrio, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @maxPrio, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @THREAD_PRIORITY_LOWEST, align 4
  %22 = call i32 @SetThreadPriority(i32 %20, i32 %21)
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @THREAD_PRIORITY_HIGHEST, align 4
  %26 = call i32 @SetThreadPriority(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @SetThreadPriority(i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @GetThreadPriority(i32 %31)
  %33 = load i32*, i32** @validPriorities, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PTW32TEST_MAXPRIORITIES, align 4
  %36 = sdiv i32 %35, 2
  %37 = add nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 %32, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** @validPriorities, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PTW32TEST_MAXPRIORITIES, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %48)
  br label %50

50:                                               ; preds = %27
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %12

53:                                               ; preds = %12
  ret i8* null
}

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_getw32threadhandle_np(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SetThreadPriority(i32, i32) #1

declare dso_local i32 @GetThreadPriority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
