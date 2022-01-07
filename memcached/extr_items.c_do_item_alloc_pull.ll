; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_do_item_alloc_pull.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_do_item_alloc_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@settings = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@COLD_LRU = common dso_local global i32 0, align 4
@LRU_PULL_EVICT = common dso_local global i32 0, align 4
@HOT_LRU = common dso_local global i32 0, align 4
@lru_locks = common dso_local global i32* null, align 8
@itemstats = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @do_item_alloc_pull(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @COLD_LRU, align 4
  %16 = call i64 @lru_pull_tail(i32 %14, i32 %15, i32 0, i32 0, i32 0, i32* null)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32* @slabs_alloc(i64 %18, i32 %19, i32 0)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @COLD_LRU, align 4
  %26 = load i32, i32* @LRU_PULL_EVICT, align 4
  %27 = call i64 @lru_pull_tail(i32 %24, i32 %25, i32 0, i32 %26, i32 0, i32* null)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HOT_LRU, align 4
  %35 = call i64 @lru_pull_tail(i32 %33, i32 %34, i32 0, i32 0, i32 0, i32* null)
  br label %37

36:                                               ; preds = %29
  br label %44

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %23
  br label %40

39:                                               ; preds = %17
  br label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %7

44:                                               ; preds = %39, %36, %7
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32*, i32** @lru_locks, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @pthread_mutex_lock(i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @itemstats, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** @lru_locks, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %47, %44
  %67 = load i32*, i32** %5, align 8
  ret i32* %67
}

declare dso_local i64 @lru_pull_tail(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @slabs_alloc(i64, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
