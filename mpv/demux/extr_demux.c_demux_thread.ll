; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, i32, i32 (i32)*, i32, i32, i32 }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"demux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @demux_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @demux_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.timespec, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.demux_internal*
  store %struct.demux_internal* %6, %struct.demux_internal** %3, align 8
  %7 = call i32 @mpthread_set_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %9 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %8, i32 0, i32 1
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  br label %11

11:                                               ; preds = %22, %21, %1
  %12 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %19 = call i64 @thread_work(%struct.demux_internal* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %11

22:                                               ; preds = %17
  %23 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %24 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %23, i32 0, i32 4
  %25 = call i32 @pthread_cond_signal(i32* %24)
  %26 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mp_time_us_to_timespec(i32 %28)
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %32 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %31, i32 0, i32 4
  %33 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %34 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %33, i32 0, i32 1
  %35 = call i32 @pthread_cond_timedwait(i32* %32, i32* %34, %struct.timespec* %4)
  br label %11

36:                                               ; preds = %11
  %37 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %38 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %43 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %42, i32 0, i32 1
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  %45 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %46 = call i32 @demux_shutdown(%struct.demux_internal* %45)
  %47 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %48 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %47, i32 0, i32 1
  %49 = call i32 @pthread_mutex_lock(i32* %48)
  %50 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %51 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %53 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %52, i32 0, i32 3
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = icmp ne i32 (i32)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %41
  %57 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %58 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %57, i32 0, i32 3
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %61 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %59(i32 %62)
  br label %64

64:                                               ; preds = %56, %41
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %67 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %66, i32 0, i32 1
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  ret i8* null
}

declare dso_local i32 @mpthread_set_name(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @thread_work(%struct.demux_internal*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @mp_time_us_to_timespec(i32) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @demux_shutdown(%struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
