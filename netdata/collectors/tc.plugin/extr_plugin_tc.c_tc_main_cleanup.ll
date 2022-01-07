; ModuleID = '/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_main_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_main_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdata_static_thread = type { i32 }

@NETDATA_MAIN_THREAD_EXITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cleaning up...\00", align 1
@tc_child_pid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"TC: killing with SIGTERM tc-qos-helper process %d\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"TC: waiting for tc plugin child process pid %d to exit...\00", align 1
@P_PID = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@NETDATA_MAIN_THREAD_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tc_main_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_main_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netdata_static_thread*, align 8
  %4 = alloca i32 (i8*, i64)*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.netdata_static_thread*
  store %struct.netdata_static_thread* %6, %struct.netdata_static_thread** %3, align 8
  %7 = load i32, i32* @NETDATA_MAIN_THREAD_EXITING, align 4
  %8 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %9 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @tc_child_pid, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i64, i64* @tc_child_pid, align 8
  %15 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* @tc_child_pid, align 8
  %17 = call i32 @killpid(i64 %16)
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i32 (i8*, i64)*, i32 (i8*, i64)** %4, align 8
  %21 = load i64, i64* @tc_child_pid, align 8
  %22 = call i32 %20(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @P_PID, align 4
  %24 = load i64, i64* @tc_child_pid, align 8
  %25 = trunc i64 %24 to i32
  %26 = bitcast i32 (i8*, i64)** %4 to i32 (i8*, i64)*
  %27 = load i32, i32* @WEXITED, align 4
  %28 = call i32 @waitid(i32 %23, i32 %25, i32 (i8*, i64)* %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %13
  store i64 0, i64* @tc_child_pid, align 8
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* @NETDATA_MAIN_THREAD_EXITED, align 4
  %32 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %33 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
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
