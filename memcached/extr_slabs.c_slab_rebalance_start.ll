; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_slab_rebalance_start.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_slab_rebalance_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i8*, i32, i32*, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@slabs_lock = common dso_local global i32 0, align 4
@slab_rebal = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SLAB_GLOBAL_PAGE_POOL = common dso_local global i64 0, align 8
@power_largest = common dso_local global i64 0, align 8
@slabclass = common dso_local global %struct.TYPE_6__* null, align 8
@slab_rebalance_signal = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Started a slab rebalance\0A\00", align 1
@stats_state = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @slab_rebalance_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slab_rebalance_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @pthread_mutex_lock(i32* @slabs_lock)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 0), align 8
  %6 = load i64, i64* @SLAB_GLOBAL_PAGE_POOL, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %24, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 0), align 8
  %10 = load i64, i64* @power_largest, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 1), align 8
  %14 = load i64, i64* @SLAB_GLOBAL_PAGE_POOL, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 1), align 8
  %18 = load i64, i64* @power_largest, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 0), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 1), align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %12, %8, %0
  store i32 -2, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @slabclass, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %2, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 1), align 8
  %30 = call i32 @grow_slab_list(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -3, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @pthread_mutex_unlock(i32* @slabs_lock)
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* %1, align 4
  br label %82

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 5), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 5), align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %52, i64 %60
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 2), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 5), align 8
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 6), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 3), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 0), align 8
  %64 = load i64, i64* @SLAB_GLOBAL_PAGE_POOL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 3), align 8
  br label %67

67:                                               ; preds = %66, %45
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @calloc(i32 %70, i32 4)
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slab_rebal, i32 0, i32 4), align 8
  store i32 2, i32* @slab_rebalance_signal, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @settings, i32 0, i32 0), align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %67
  %79 = call i32 @pthread_mutex_unlock(i32* @slabs_lock)
  %80 = call i32 (...) @STATS_LOCK()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stats_state, i32 0, i32 0), align 4
  %81 = call i32 (...) @STATS_UNLOCK()
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %78, %42
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @grow_slab_list(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
