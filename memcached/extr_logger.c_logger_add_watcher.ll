; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c_logger_add_watcher.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c_logger_add_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32, i8* }
%struct.TYPE_7__ = type { i32 }

@logger_stack_lock = common dso_local global i32 0, align 4
@watcher_count = common dso_local global i32 0, align 4
@WATCHER_LIMIT = common dso_local global i32 0, align 4
@LOGGER_ADD_WATCHER_TOO_MANY = common dso_local global i32 0, align 4
@watchers = common dso_local global %struct.TYPE_6__** null, align 8
@LOGGER_ADD_WATCHER_FAILED = common dso_local global i32 0, align 4
@LOGGER_WATCHER_STDERR = common dso_local global i32 0, align 4
@LOGGER_WATCHER_CLIENT = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"OK\0D\0A\00", align 1
@LOGGER_ADD_WATCHER_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logger_add_watcher(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %10 = call i32 @pthread_mutex_lock(i32* @logger_stack_lock)
  %11 = load i32, i32* @watcher_count, align 4
  %12 = load i32, i32* @WATCHER_LIMIT, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 @pthread_mutex_unlock(i32* @logger_stack_lock)
  %16 = load i32, i32* @LOGGER_ADD_WATCHER_TOO_MANY, align 4
  store i32 %16, i32* %4, align 4
  br label %97

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @WATCHER_LIMIT, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @watchers, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %18

35:                                               ; preds = %30, %18
  %36 = call %struct.TYPE_6__* @calloc(i32 1, i32 32)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %9, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = icmp eq %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 @pthread_mutex_unlock(i32* @logger_stack_lock)
  %41 = load i32, i32* @LOGGER_ADD_WATCHER_FAILED, align 4
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @LOGGER_WATCHER_STDERR, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %51, %42
  %59 = load i32, i32* @LOGGER_WATCHER_CLIENT, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 0), align 4
  %70 = call i32* @bipbuf_new(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = call i32 @free(%struct.TYPE_6__* %78)
  %80 = call i32 @pthread_mutex_unlock(i32* @logger_stack_lock)
  %81 = load i32, i32* @LOGGER_ADD_WATCHER_FAILED, align 4
  store i32 %81, i32* %4, align 4
  br label %97

82:                                               ; preds = %62
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bipbuf_offer(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @watchers, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %91, align 8
  %92 = load i32, i32* @watcher_count, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @watcher_count, align 4
  %94 = call i32 (...) @logger_set_flags()
  %95 = call i32 @pthread_mutex_unlock(i32* @logger_stack_lock)
  %96 = load i32, i32* @LOGGER_ADD_WATCHER_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %82, %77, %39, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32* @bipbuf_new(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @bipbuf_offer(i32*, i8*, i32) #1

declare dso_local i32 @logger_set_flags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
