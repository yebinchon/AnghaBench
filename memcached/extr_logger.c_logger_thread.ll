; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.logger_stats = type { i32 }

@MIN_LOGGER_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"LOGGER: Starting logger thread\0A\00", align 1
@do_run_logger_thread = common dso_local global i64 0, align 8
@logger_stack_lock = common dso_local global i32 0, align 4
@logger_stack_head = common dso_local global %struct.TYPE_4__* null, align 8
@WATCHER_ALL = common dso_local global i32 0, align 4
@MAX_LOGGER_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @logger_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @logger_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.logger_stats, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MIN_LOGGER_SLEEP, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @L_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %68, %1
  %10 = load i64, i64* @do_run_logger_thread, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  %13 = call i32 @memset(%struct.logger_stats* %6, i32 0, i32 4)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MIN_LOGGER_SLEEP, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @usleep(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = call i32 @pthread_mutex_lock(i32* @logger_stack_lock)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @logger_stack_head, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  br label %23

23:                                               ; preds = %33, %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = call i64 @logger_thread_read(%struct.TYPE_4__* %27, %struct.logger_stats* %6)
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %5, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load i32, i32* @WATCHER_ALL, align 4
  %39 = call i32 @logger_thread_poll_watchers(i32 1, i32 %38)
  %40 = call i32 @pthread_mutex_unlock(i32* @logger_stack_lock)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @MAX_LOGGER_SLEEP, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = sdiv i32 %48, 8
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MAX_LOGGER_SLEEP, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @MAX_LOGGER_SLEEP, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52
  br label %68

59:                                               ; preds = %37
  %60 = load i32, i32* %3, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @MIN_LOGGER_SLEEP, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @MIN_LOGGER_SLEEP, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %59
  br label %68

68:                                               ; preds = %67, %58
  %69 = call i32 @logger_thread_sum_stats(%struct.logger_stats* %6)
  br label %9

70:                                               ; preds = %9
  ret i8* null
}

declare dso_local i32 @L_DEBUG(i8*) #1

declare dso_local i32 @memset(%struct.logger_stats*, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @logger_thread_read(%struct.TYPE_4__*, %struct.logger_stats*) #1

declare dso_local i32 @logger_thread_poll_watchers(i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @logger_thread_sum_stats(%struct.logger_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
