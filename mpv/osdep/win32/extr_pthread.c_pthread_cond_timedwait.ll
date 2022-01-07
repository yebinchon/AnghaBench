; ModuleID = '/home/carl/AnghaBench/mpv/osdep/win32/extr_pthread.c_pthread_cond_timedwait.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/win32/extr_pthread.c_pthread_cond_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.timeval = type { i32, i64 }

@INT64_MAX = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cond_timedwait(i32* noalias %0, i32* noalias %1, %struct.timespec* noalias %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %10 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  store i64 0, i64* %8, align 8
  %11 = load %struct.timespec*, %struct.timespec** %6, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @INT64_MAX, align 4
  %15 = sdiv i32 %14, 10000
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @INFINITE, align 8
  store i64 %18, i64* %8, align 8
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.timespec*, %struct.timespec** %6, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.timespec*, %struct.timespec** %6, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, 1000
  %35 = load %struct.timespec*, %struct.timespec** %6, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sdiv i64 %37, 1000
  %39 = sdiv i64 %38, 1000
  %40 = add nsw i64 %34, %39
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sdiv i64 %42, 1000
  %44 = sub nsw i64 %40, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @INT_MAX, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = load i64, i64* @INFINITE, align 8
  store i64 %49, i64* %8, align 8
  br label %56

50:                                               ; preds = %26
  %51 = load i64, i64* %9, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %19
  br label %58

58:                                               ; preds = %57, %17
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @cond_wait(i32* %59, i32* %60, i64 %61)
  ret i32 %62
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @cond_wait(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
