; ModuleID = '/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_worker_thread_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_worker_thread_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugind = type { i32, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"data collection thread exiting\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"killing child process pid %d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"waiting for child process pid %d to exit...\00", align 1
@P_PID = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pluginsd_worker_thread_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluginsd_worker_thread_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.plugind*, align 8
  %4 = alloca i32 (i8*, i64)*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.plugind*
  store %struct.plugind* %6, %struct.plugind** %3, align 8
  %7 = load %struct.plugind*, %struct.plugind** %3, align 8
  %8 = getelementptr inbounds %struct.plugind, %struct.plugind* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load %struct.plugind*, %struct.plugind** %3, align 8
  %13 = getelementptr inbounds %struct.plugind, %struct.plugind* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %11
  %17 = load %struct.plugind*, %struct.plugind** %3, align 8
  %18 = getelementptr inbounds %struct.plugind, %struct.plugind* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.plugind*, %struct.plugind** %3, align 8
  %21 = getelementptr inbounds %struct.plugind, %struct.plugind* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %16
  %25 = load i32 (i8*, i64)*, i32 (i8*, i64)** %4, align 8
  %26 = load %struct.plugind*, %struct.plugind** %3, align 8
  %27 = getelementptr inbounds %struct.plugind, %struct.plugind* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 %25(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load %struct.plugind*, %struct.plugind** %3, align 8
  %31 = getelementptr inbounds %struct.plugind, %struct.plugind* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @killpid(i64 %32)
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %49

35:                                               ; preds = %24
  %36 = load i32 (i8*, i64)*, i32 (i8*, i64)** %4, align 8
  %37 = load %struct.plugind*, %struct.plugind** %3, align 8
  %38 = getelementptr inbounds %struct.plugind, %struct.plugind* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 %36(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @P_PID, align 4
  %42 = load %struct.plugind*, %struct.plugind** %3, align 8
  %43 = getelementptr inbounds %struct.plugind, %struct.plugind* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = bitcast i32 (i8*, i64)** %4 to i32 (i8*, i64)*
  %47 = load i32, i32* @WEXITED, align 4
  %48 = call i32 @waitid(i32 %41, i32 %45, i32 (i8*, i64)* %46, i32 %47)
  br label %49

49:                                               ; preds = %35, %24
  %50 = load %struct.plugind*, %struct.plugind** %3, align 8
  %51 = getelementptr inbounds %struct.plugind, %struct.plugind* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %16
  br label %53

53:                                               ; preds = %52, %11, %1
  ret void
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @killpid(i64) #1

declare dso_local i32 @waitid(i32, i32, i32 (i8*, i64)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
