; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_slab_rebalance_finish.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_slab_rebalance_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8** }
%struct.TYPE_10__ = type { i64, i64, i8*, i8*, i8*, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@slabs_lock = common dso_local global i32 0, align 4
@slabclass = common dso_local global %struct.TYPE_7__* null, align 8
@slab_rebal = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SLAB_GLOBAL_PAGE_POOL = common dso_local global i64 0, align 8
@settings = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@mem_limit_reached = common dso_local global i32 0, align 4
@slab_rebalance_signal = common dso_local global i64 0, align 8
@stats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@stats_state = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"finished a slab move\0A\00", align 1
@ITEM_FETCHED = common dso_local global i32 0, align 4
@ITEM_SLABBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @slab_rebalance_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_rebalance_finish() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = call i32 @pthread_mutex_lock(i32* @slabs_lock)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slabclass, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %11
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %1, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slabclass, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 1), align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %14
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %41, %0
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %34, i8** %40, align 8
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 3), align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8*, i8** %48, i64 %53
  store i8* %45, i8** %54, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 1), align 8
  %56 = load i64, i64* @SLAB_GLOBAL_PAGE_POOL, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 3), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @settings, i32 0, i32 1), align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(i8* %59, i32 0, i32 %61)
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 3), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 1), align 8
  %65 = call i32 @split_slab_page_into_freelist(i8* %63, i64 %64)
  br label %75

66:                                               ; preds = %44
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 1), align 8
  %68 = load i64, i64* @SLAB_GLOBAL_PAGE_POOL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 3), align 8
  %72 = call i32 @memset(i8* %71, i32 0, i32 1)
  store i32 0, i32* @mem_limit_reached, align 4
  %73 = call i32 (...) @memory_release()
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %58
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 1), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 3), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 4), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 2), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 10), align 8
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 9), align 8
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 8), align 8
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 7), align 8
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 6), align 8
  store i64 %80, i64* %8, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 6), align 8
  store i64 0, i64* @slab_rebalance_signal, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @slab_rebal, i32 0, i32 5), align 8
  %82 = call i32 @free(i32 %81)
  %83 = call i32 @pthread_mutex_unlock(i32* @slabs_lock)
  %84 = call i32 (...) @STATS_LOCK()
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 5), align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 5), align 4
  %87 = load i64, i64* %4, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 4), align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 4), align 4
  %92 = load i64, i64* %5, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 3), align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 3), align 4
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 4
  %102 = load i64, i64* %7, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1), align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1), align 4
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 0), align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats_state, i32 0, i32 0), align 4
  %112 = call i32 (...) @STATS_UNLOCK()
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @settings, i32 0, i32 0), align 8
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %75
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 @fprintf(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %75
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @split_slab_page_into_freelist(i8*, i64) #1

declare dso_local i32 @memory_release(...) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
