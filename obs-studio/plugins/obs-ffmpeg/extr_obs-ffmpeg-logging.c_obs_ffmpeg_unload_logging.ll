; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-logging.c_obs_ffmpeg_unload_logging.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-logging.c_obs_ffmpeg_unload_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@logging_initialized = common dso_local global i32 0, align 4
@av_log_default_callback = common dso_local global i32 0, align 4
@log_contexts_mutex = common dso_local global i32 0, align 4
@active_log_contexts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cached_log_contexts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_ffmpeg_unload_logging() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @logging_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %44

6:                                                ; preds = %0
  store i32 0, i32* @logging_initialized, align 4
  %7 = load i32, i32* @av_log_default_callback, align 4
  %8 = call i32 @av_log_set_callback(i32 %7)
  %9 = call i32 @pthread_mutex_destroy(i32* @log_contexts_mutex)
  store i64 0, i64* %1, align 8
  br label %10

10:                                               ; preds = %20, %6
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @active_log_contexts, i32 0, i32 0), align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @active_log_contexts, i32 0, i32 1), align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfree(i32 %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %1, align 8
  br label %10

23:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cached_log_contexts, i32 0, i32 0), align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cached_log_contexts, i32 0, i32 1), align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bfree(i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %2, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load i64, i64* getelementptr inbounds ({ i64, i32* }, { i64, i32* }* bitcast (%struct.TYPE_4__* @active_log_contexts to { i64, i32* }*), i32 0, i32 0), align 8
  %39 = load i32*, i32** getelementptr inbounds ({ i64, i32* }, { i64, i32* }* bitcast (%struct.TYPE_4__* @active_log_contexts to { i64, i32* }*), i32 0, i32 1), align 8
  %40 = call i32 @da_free(i64 %38, i32* %39)
  %41 = load i64, i64* getelementptr inbounds ({ i64, i32* }, { i64, i32* }* bitcast (%struct.TYPE_4__* @cached_log_contexts to { i64, i32* }*), i32 0, i32 0), align 8
  %42 = load i32*, i32** getelementptr inbounds ({ i64, i32* }, { i64, i32* }* bitcast (%struct.TYPE_4__* @cached_log_contexts to { i64, i32* }*), i32 0, i32 1), align 8
  %43 = call i32 @da_free(i64 %41, i32* %42)
  br label %44

44:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @av_log_set_callback(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
