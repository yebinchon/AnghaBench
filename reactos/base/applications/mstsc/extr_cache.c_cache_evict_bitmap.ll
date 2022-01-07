; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_cache.c_cache_evict_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_cache.c_cache_evict_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@g_bmpcache_lru = common dso_local global i64* null, align 8
@g_bmpcache = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [44 x i8] c"evict bitmap: id=%d idx=%d n_idx=%d bmp=%p\0A\00", align 1
@g_bmpcache_count = common dso_local global i32* null, align 8
@NOT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_evict_bitmap(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @IS_PERSISTENT(i64 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %73

9:                                                ; preds = %1
  %10 = load i64*, i64** @g_bmpcache_lru, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DEBUG_RDP5(i8* %33)
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %36 = load i64, i64* %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ui_destroy_bitmap(i64 %42)
  %44 = load i32*, i32** @g_bmpcache_count, align 8
  %45 = load i64, i64* %2, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** @g_bmpcache_lru, align 8
  %59 = load i64, i64* %2, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* @NOT_SET, align 4
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @g_bmpcache, align 8
  %63 = load i64, i64* %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %63
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %61, i32* %69, align 4
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @pstcache_touch_bitmap(i64 %70, i64 %71, i32 0)
  br label %73

73:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @IS_PERSISTENT(i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @ui_destroy_bitmap(i64) #1

declare dso_local i32 @pstcache_touch_bitmap(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
