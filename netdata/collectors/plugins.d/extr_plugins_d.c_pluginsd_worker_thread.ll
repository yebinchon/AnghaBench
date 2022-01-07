; ModuleID = '/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_worker_thread.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/plugins.d/extr_plugins_d.c_pluginsd_worker_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugind = type { i8*, i32, i32, i32, i64 }

@pluginsd_worker_thread_cleanup = common dso_local global i32 0, align 4
@netdata_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot popen(\22%s\22, \22r\22).\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"connected to '%s' running on pid %d\00", align 1
@localhost = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"'%s' (pid %d) disconnected after %zu successful data collections (ENDs).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pluginsd_worker_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.plugind*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @pluginsd_worker_thread_cleanup, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @netdata_thread_cleanup_push(i32 %7, i8* %8)
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.plugind*
  store %struct.plugind* %11, %struct.plugind** %3, align 8
  %12 = load %struct.plugind*, %struct.plugind** %3, align 8
  %13 = getelementptr inbounds %struct.plugind, %struct.plugind* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %89, %1
  %15 = load i32, i32* @netdata_exit, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %90

18:                                               ; preds = %14
  %19 = load %struct.plugind*, %struct.plugind** %3, align 8
  %20 = getelementptr inbounds %struct.plugind, %struct.plugind* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.plugind*, %struct.plugind** %3, align 8
  %23 = getelementptr inbounds %struct.plugind, %struct.plugind* %22, i32 0, i32 0
  %24 = call i32* @mypopen(i32 %21, i8** %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.plugind*, %struct.plugind** %3, align 8
  %33 = getelementptr inbounds %struct.plugind, %struct.plugind* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %90

36:                                               ; preds = %18
  %37 = load %struct.plugind*, %struct.plugind** %3, align 8
  %38 = getelementptr inbounds %struct.plugind, %struct.plugind* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.plugind*, %struct.plugind** %3, align 8
  %41 = getelementptr inbounds %struct.plugind, %struct.plugind* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %42)
  %44 = load i32, i32* @localhost, align 4
  %45 = load %struct.plugind*, %struct.plugind** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @pluginsd_process(i32 %44, %struct.plugind* %45, i32* %46, i32 0)
  store i64 %47, i64* %4, align 8
  %48 = load %struct.plugind*, %struct.plugind** %3, align 8
  %49 = getelementptr inbounds %struct.plugind, %struct.plugind* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.plugind*, %struct.plugind** %3, align 8
  %52 = getelementptr inbounds %struct.plugind, %struct.plugind* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 (i8*, i32, ...) @error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %53, i64 %54)
  %56 = load %struct.plugind*, %struct.plugind** %3, align 8
  %57 = getelementptr inbounds %struct.plugind, %struct.plugind* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @killpid(i8* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.plugind*, %struct.plugind** %3, align 8
  %62 = getelementptr inbounds %struct.plugind, %struct.plugind* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @mypclose(i32* %60, i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %36
  %71 = load %struct.plugind*, %struct.plugind** %3, align 8
  %72 = call i32 @pluginsd_worker_thread_handle_success(%struct.plugind* %71)
  br label %77

73:                                               ; preds = %36
  %74 = load %struct.plugind*, %struct.plugind** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @pluginsd_worker_thread_handle_error(%struct.plugind* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.plugind*, %struct.plugind** %3, align 8
  %79 = getelementptr inbounds %struct.plugind, %struct.plugind* %78, i32 0, i32 0
  store i8* null, i8** %79, align 8
  %80 = load %struct.plugind*, %struct.plugind** %3, align 8
  %81 = getelementptr inbounds %struct.plugind, %struct.plugind* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %90

89:                                               ; preds = %77
  br label %14

90:                                               ; preds = %88, %31, %14
  %91 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i32* @mypopen(i32, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @error(i8*, i32, ...) #1

declare dso_local i32 @info(i8*, i32, i8*) #1

declare dso_local i64 @pluginsd_process(i32, %struct.plugind*, i32*, i32) #1

declare dso_local i32 @killpid(i8*) #1

declare dso_local i32 @mypclose(i32*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pluginsd_worker_thread_handle_success(%struct.plugind*) #1

declare dso_local i32 @pluginsd_worker_thread_handle_error(%struct.plugind*, i32) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
