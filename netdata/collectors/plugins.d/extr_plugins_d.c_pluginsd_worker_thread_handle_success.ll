; ModuleID = '/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_worker_thread_handle_success.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_worker_thread_handle_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugind = type { i32, i32, i64, i8*, i64, i32 }

@SERIAL_FAILURES_THRESHOLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [89 x i8] c"'%s' (pid %d) does not generate useful output but it reports success (exits with 0). %s.\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Waiting a bit before starting it again.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Will not start it again - it is now disabled.\00", align 1
@.str.3 = private unnamed_addr constant [167 x i8] c"'%s' (pid %d) does not generate useful output, although it reports success (exits with 0).We have tried to collect something %zu times - unsuccessfully. Disabling it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plugind*)* @pluginsd_worker_thread_handle_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluginsd_worker_thread_handle_success(%struct.plugind* %0) #0 {
  %2 = alloca %struct.plugind*, align 8
  store %struct.plugind* %0, %struct.plugind** %2, align 8
  %3 = load %struct.plugind*, %struct.plugind** %2, align 8
  %4 = getelementptr inbounds %struct.plugind, %struct.plugind* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.plugind*, %struct.plugind** %2, align 8
  %10 = getelementptr inbounds %struct.plugind, %struct.plugind* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sleep(i32 %11)
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.plugind*, %struct.plugind** %2, align 8
  %15 = getelementptr inbounds %struct.plugind, %struct.plugind* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SERIAL_FAILURES_THRESHOLD, align 8
  %18 = icmp sle i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = load %struct.plugind*, %struct.plugind** %2, align 8
  %24 = getelementptr inbounds %struct.plugind, %struct.plugind* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.plugind*, %struct.plugind** %2, align 8
  %27 = getelementptr inbounds %struct.plugind, %struct.plugind* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.plugind*, %struct.plugind** %2, align 8
  %30 = getelementptr inbounds %struct.plugind, %struct.plugind* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @info(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %28, i8* %34)
  %36 = load %struct.plugind*, %struct.plugind** %2, align 8
  %37 = getelementptr inbounds %struct.plugind, %struct.plugind* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 10
  %40 = call i32 @sleep(i32 %39)
  br label %61

41:                                               ; preds = %13
  %42 = load %struct.plugind*, %struct.plugind** %2, align 8
  %43 = getelementptr inbounds %struct.plugind, %struct.plugind* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SERIAL_FAILURES_THRESHOLD, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.plugind*, %struct.plugind** %2, align 8
  %49 = getelementptr inbounds %struct.plugind, %struct.plugind* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.plugind*, %struct.plugind** %2, align 8
  %52 = getelementptr inbounds %struct.plugind, %struct.plugind* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.plugind*, %struct.plugind** %2, align 8
  %55 = getelementptr inbounds %struct.plugind, %struct.plugind* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @error(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.3, i64 0, i64 0), i32 %50, i8* %53, i64 %56)
  %58 = load %struct.plugind*, %struct.plugind** %2, align 8
  %59 = getelementptr inbounds %struct.plugind, %struct.plugind* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  br label %61

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %47, %22, %8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @info(i8*, i32, i8*, i8*) #1

declare dso_local i32 @error(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
