; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-timer.c_timer_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-timer.c_timer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_timer = type { i64, i32, i32, i32 (i32)*, i32, i32, i64 }
%struct.timespec = type { i32, i32 }

@AV_TIME_BASE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @timer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @timer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ff_timer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ff_timer*
  store %struct.ff_timer* %9, %struct.ff_timer** %3, align 8
  br label %10

10:                                               ; preds = %1, %63, %98
  store i32 0, i32* %5, align 4
  %11 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %12 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %11, i32 0, i32 4
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %15 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %20 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %19, i32 0, i32 4
  %21 = call i32 @pthread_mutex_unlock(i32* %20)
  br label %99

22:                                               ; preds = %10
  %23 = call i64 (...) @av_gettime()
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %26 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %31 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %32 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @AV_TIME_BASE, align 4
  %35 = sext i32 %34 to i64
  %36 = sdiv i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %30, align 4
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %39 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %40 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @AV_TIME_BASE, align 4
  %43 = sext i32 %42 to i64
  %44 = srem i64 %41, %43
  %45 = mul nsw i64 %44, 1000
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %38, align 4
  %47 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %48 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %47, i32 0, i32 5
  %49 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %50 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %49, i32 0, i32 4
  %51 = call i32 @pthread_cond_timedwait(i32* %48, i32* %50, %struct.timespec* %7)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %29
  %56 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %57 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @av_usleep(i32 %61)
  br label %63

63:                                               ; preds = %55, %29
  %64 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %65 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %64, i32 0, i32 4
  %66 = call i32 @pthread_mutex_unlock(i32* %65)
  br label %10

67:                                               ; preds = %22
  %68 = call i32 @av_usleep(i32 1000)
  br label %69

69:                                               ; preds = %67
  %70 = call i64 (...) @av_gettime()
  store i64 %70, i64* %6, align 8
  %71 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %72 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %78 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %69
  store i32 1, i32* %5, align 4
  %82 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %83 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %86 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %85, i32 0, i32 4
  %87 = call i32 @pthread_mutex_unlock(i32* %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %92 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %91, i32 0, i32 3
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = load %struct.ff_timer*, %struct.ff_timer** %3, align 8
  %95 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 %93(i32 %96)
  br label %98

98:                                               ; preds = %90, %84
  br label %10

99:                                               ; preds = %18
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @av_gettime(...) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @av_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
