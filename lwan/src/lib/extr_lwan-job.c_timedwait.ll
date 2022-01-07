; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-job.c_timedwait.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-job.c_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@timedwait.secs = internal global i32 1, align 4
@job_wait_cond = common dso_local global i32 0, align 4
@job_wait_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @timedwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timedwait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.timespec, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* @timedwait.secs, align 4
  br label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @timedwait.secs, align 4
  %10 = icmp sle i32 %9, 15
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @timedwait.secs, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @timedwait.secs, align 4
  br label %14

14:                                               ; preds = %11, %8
  br label %15

15:                                               ; preds = %14, %7
  %16 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @timedwait.secs, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1000
  store i32 %25, i32* %22, align 4
  %26 = call i32 @pthread_cond_timedwait(i32* @job_wait_cond, i32* @job_wait_mutex, %struct.timespec* %4)
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
