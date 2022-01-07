; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_oldest_time_in_range.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_oldest_time_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rrdeng_page_descr = type { i32 }
%struct.pg_cache_page_index = type { i32 }

@INVALID_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_cache_oldest_time_in_range(%struct.rrdengine_instance* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rrdengine_instance*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page_cache*, align 8
  %11 = alloca %struct.rrdeng_page_descr*, align 8
  %12 = alloca %struct.pg_cache_page_index**, align 8
  %13 = alloca %struct.pg_cache_page_index*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %6, align 8
  %15 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %14, i32 0, i32 0
  store %struct.page_cache* %15, %struct.page_cache** %10, align 8
  store %struct.rrdeng_page_descr* null, %struct.rrdeng_page_descr** %11, align 8
  %16 = load %struct.page_cache*, %struct.page_cache** %10, align 8
  %17 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @uv_rwlock_rdlock(i32* %18)
  %20 = load %struct.page_cache*, %struct.page_cache** %10, align 8
  %21 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.pg_cache_page_index** @JudyHSGet(i32 %23, i32* %24, i32 4)
  store %struct.pg_cache_page_index** %25, %struct.pg_cache_page_index*** %12, align 8
  %26 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %12, align 8
  %27 = icmp ne %struct.pg_cache_page_index** null, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %12, align 8
  %33 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %32, align 8
  store %struct.pg_cache_page_index* %33, %struct.pg_cache_page_index** %13, align 8
  br label %34

34:                                               ; preds = %31, %4
  %35 = load %struct.page_cache*, %struct.page_cache** %10, align 8
  %36 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @uv_rwlock_rdunlock(i32* %37)
  %39 = load %struct.pg_cache_page_index**, %struct.pg_cache_page_index*** %12, align 8
  %40 = icmp eq %struct.pg_cache_page_index** null, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @INVALID_TIME, align 4
  store i32 %42, i32* %5, align 4
  br label %65

43:                                               ; preds = %34
  %44 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %13, align 8
  %45 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %44, i32 0, i32 0
  %46 = call i32 @uv_rwlock_rdlock(i32* %45)
  %47 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %13, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.rrdeng_page_descr* @find_first_page_in_time_range(%struct.pg_cache_page_index* %47, i32 %48, i32 %49)
  store %struct.rrdeng_page_descr* %50, %struct.rrdeng_page_descr** %11, align 8
  %51 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %11, align 8
  %52 = icmp eq %struct.rrdeng_page_descr* null, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %13, align 8
  %55 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %54, i32 0, i32 0
  %56 = call i32 @uv_rwlock_rdunlock(i32* %55)
  %57 = load i32, i32* @INVALID_TIME, align 4
  store i32 %57, i32* %5, align 4
  br label %65

58:                                               ; preds = %43
  %59 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %13, align 8
  %60 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %59, i32 0, i32 0
  %61 = call i32 @uv_rwlock_rdunlock(i32* %60)
  %62 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %11, align 8
  %63 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %58, %53, %41
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @uv_rwlock_rdlock(i32*) #1

declare dso_local %struct.pg_cache_page_index** @JudyHSGet(i32, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @uv_rwlock_rdunlock(i32*) #1

declare dso_local %struct.rrdeng_page_descr* @find_first_page_in_time_range(%struct.pg_cache_page_index*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
