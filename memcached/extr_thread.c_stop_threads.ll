; ModuleID = '/home/carl/AnghaBench/memcached/extr_thread.c_stop_threads.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_thread.c_stop_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"stopped assoc\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"asking workers to stop\0A\00", align 1
@init_lock = common dso_local global i32 0, align 4
@init_count = common dso_local global i64 0, align 8
@threads = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed writing to notify pipe\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"asking background threads to stop\0A\00", align 1
@CRAWLER_WAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"stopped lru crawler\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"stopped maintainer\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"stopped slab mover\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"stopped logger thread\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"stopped idle timeout thread\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"all background threads stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_threads() #0 {
  %1 = alloca [1 x i8], align 1
  %2 = alloca i32, align 4
  %3 = call i32 (...) @stop_assoc_maintenance_thread()
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds [1 x i8], [1 x i8]* %1, i64 0, i64 0
  store i8 115, i8* %16, align 1
  %17 = call i32 @pthread_mutex_lock(i32* @init_lock)
  store i64 0, i64* @init_count, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %35, %15
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 1), align 8
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threads, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %1, i64 0, i64 0
  %30 = call i32 @write(i32 %28, i8* %29, i32 1)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 1), align 8
  %40 = call i32 @wait_for_thread_registration(i32 %39)
  %41 = call i32 @pthread_mutex_unlock(i32* @init_lock)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* @CRAWLER_WAIT, align 4
  %49 = call i32 @stop_item_crawler_thread(i32 %48)
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = call i32 (...) @stop_lru_maintainer_thread()
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55
  %63 = call i32 (...) @stop_slab_maintenance_thread()
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  %70 = call i32 (...) @logger_stop()
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %69
  %77 = call i32 (...) @stop_conn_timeout_thread()
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @stop_assoc_maintenance_thread(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @wait_for_thread_registration(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @stop_item_crawler_thread(i32) #1

declare dso_local i32 @stop_lru_maintainer_thread(...) #1

declare dso_local i32 @stop_slab_maintenance_thread(...) #1

declare dso_local i32 @logger_stop(...) #1

declare dso_local i32 @stop_conn_timeout_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
