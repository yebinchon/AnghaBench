; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-logging.c_create_or_fetch_log_context.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-logging.c_create_or_fetch_log_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.log_context** }
%struct.log_context = type { i8*, i8*, i32 }
%struct.TYPE_6__ = type { i64, %struct.log_context** }

@log_contexts_mutex = common dso_local global i32 0, align 4
@active_log_contexts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cached_log_contexts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.log_context* (i8*)* @create_or_fetch_log_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.log_context* @create_or_fetch_log_context(i8* %0) #0 {
  %2 = alloca %struct.log_context*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_context*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 @pthread_mutex_lock(i32* @log_contexts_mutex)
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @active_log_contexts, i32 0, i32 0), align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.log_context**, %struct.log_context*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @active_log_contexts, i32 0, i32 1), align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.log_context*, %struct.log_context** %14, i64 %15
  %17 = load %struct.log_context*, %struct.log_context** %16, align 8
  %18 = getelementptr inbounds %struct.log_context, %struct.log_context* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %13, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = call i32 @pthread_mutex_unlock(i32* @log_contexts_mutex)
  %23 = load %struct.log_context**, %struct.log_context*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @active_log_contexts, i32 0, i32 1), align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.log_context*, %struct.log_context** %23, i64 %24
  %26 = load %struct.log_context*, %struct.log_context** %25, align 8
  store %struct.log_context* %26, %struct.log_context** %2, align 8
  br label %64

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %8

31:                                               ; preds = %8
  store %struct.log_context* null, %struct.log_context** %5, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cached_log_contexts, i32 0, i32 0), align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.log_context**, %struct.log_context*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cached_log_contexts, i32 0, i32 1), align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds %struct.log_context*, %struct.log_context** %36, i64 %38
  %40 = load %struct.log_context*, %struct.log_context** %39, align 8
  store %struct.log_context* %40, %struct.log_context** %5, align 8
  %41 = load i64, i64* getelementptr inbounds ({ i64, %struct.log_context** }, { i64, %struct.log_context** }* bitcast (%struct.TYPE_6__* @cached_log_contexts to { i64, %struct.log_context** }*), i32 0, i32 0), align 8
  %42 = load %struct.log_context**, %struct.log_context*** getelementptr inbounds ({ i64, %struct.log_context** }, { i64, %struct.log_context** }* bitcast (%struct.TYPE_6__* @cached_log_contexts to { i64, %struct.log_context** }*), i32 0, i32 1), align 8
  %43 = call i32 @da_pop_back(i64 %41, %struct.log_context** %42)
  br label %44

44:                                               ; preds = %35, %31
  %45 = load %struct.log_context*, %struct.log_context** %5, align 8
  %46 = icmp ne %struct.log_context* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call %struct.log_context* @bzalloc(i32 24)
  store %struct.log_context* %48, %struct.log_context** %5, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.log_context*, %struct.log_context** %5, align 8
  %52 = getelementptr inbounds %struct.log_context, %struct.log_context* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.log_context*, %struct.log_context** %5, align 8
  %54 = getelementptr inbounds %struct.log_context, %struct.log_context* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %56, align 1
  %57 = load %struct.log_context*, %struct.log_context** %5, align 8
  %58 = getelementptr inbounds %struct.log_context, %struct.log_context* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load i64, i64* getelementptr inbounds ({ i64, %struct.log_context** }, { i64, %struct.log_context** }* bitcast (%struct.TYPE_5__* @active_log_contexts to { i64, %struct.log_context** }*), i32 0, i32 0), align 8
  %60 = load %struct.log_context**, %struct.log_context*** getelementptr inbounds ({ i64, %struct.log_context** }, { i64, %struct.log_context** }* bitcast (%struct.TYPE_5__* @active_log_contexts to { i64, %struct.log_context** }*), i32 0, i32 1), align 8
  %61 = call i32 @da_push_back(i64 %59, %struct.log_context** %60, %struct.log_context** %5)
  %62 = call i32 @pthread_mutex_unlock(i32* @log_contexts_mutex)
  %63 = load %struct.log_context*, %struct.log_context** %5, align 8
  store %struct.log_context* %63, %struct.log_context** %2, align 8
  br label %64

64:                                               ; preds = %49, %21
  %65 = load %struct.log_context*, %struct.log_context** %2, align 8
  ret %struct.log_context* %65
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @da_pop_back(i64, %struct.log_context**) #1

declare dso_local %struct.log_context* @bzalloc(i32) #1

declare dso_local i32 @da_push_back(i64, %struct.log_context**, %struct.log_context**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
