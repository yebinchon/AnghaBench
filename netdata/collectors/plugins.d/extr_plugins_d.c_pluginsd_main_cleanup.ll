; ModuleID = '/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_main_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_main_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugind = type { i32, i32, i32, i64, %struct.plugind* }
%struct.netdata_static_thread = type { i32 }

@NETDATA_MAIN_THREAD_EXITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cleaning up...\00", align 1
@pluginsd_root = common dso_local global %struct.plugind* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"stopping plugin thread: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cleanup completed.\00", align 1
@NETDATA_MAIN_THREAD_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pluginsd_main_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluginsd_main_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netdata_static_thread*, align 8
  %4 = alloca %struct.plugind*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.netdata_static_thread*
  store %struct.netdata_static_thread* %6, %struct.netdata_static_thread** %3, align 8
  %7 = load i32, i32* @NETDATA_MAIN_THREAD_EXITING, align 4
  %8 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %9 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.plugind*, %struct.plugind** @pluginsd_root, align 8
  store %struct.plugind* %11, %struct.plugind** %4, align 8
  br label %12

12:                                               ; preds = %35, %1
  %13 = load %struct.plugind*, %struct.plugind** %4, align 8
  %14 = icmp ne %struct.plugind* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load %struct.plugind*, %struct.plugind** %4, align 8
  %17 = getelementptr inbounds %struct.plugind, %struct.plugind* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.plugind*, %struct.plugind** %4, align 8
  %22 = getelementptr inbounds %struct.plugind, %struct.plugind* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = load %struct.plugind*, %struct.plugind** %4, align 8
  %27 = getelementptr inbounds %struct.plugind, %struct.plugind* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.plugind*, %struct.plugind** %4, align 8
  %31 = getelementptr inbounds %struct.plugind, %struct.plugind* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netdata_thread_cancel(i32 %32)
  br label %34

34:                                               ; preds = %25, %20, %15
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.plugind*, %struct.plugind** %4, align 8
  %37 = getelementptr inbounds %struct.plugind, %struct.plugind* %36, i32 0, i32 4
  %38 = load %struct.plugind*, %struct.plugind** %37, align 8
  store %struct.plugind* %38, %struct.plugind** %4, align 8
  br label %12

39:                                               ; preds = %12
  %40 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @NETDATA_MAIN_THREAD_EXITED, align 4
  %42 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %43 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @netdata_thread_cancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
