; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_try_evict_one_page_unsafe.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_try_evict_one_page_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.page_cache_descr* }
%struct.page_cache_descr = type { i64, %struct.rrdeng_page_descr*, %struct.page_cache_descr* }
%struct.rrdeng_page_descr = type { i32 }

@RRD_PAGE_POPULATED = common dso_local global i64 0, align 8
@RRD_PAGE_DIRTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrdengine_instance*)* @pg_cache_try_evict_one_page_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_cache_try_evict_one_page_unsafe(%struct.rrdengine_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.page_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rrdeng_page_descr*, align 8
  %7 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  %8 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %9 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %8, i32 0, i32 0
  store %struct.page_cache* %9, %struct.page_cache** %4, align 8
  store %struct.page_cache_descr* null, %struct.page_cache_descr** %7, align 8
  %10 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %11 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @uv_rwlock_wrlock(i32* %12)
  %14 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %15 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.page_cache_descr*, %struct.page_cache_descr** %16, align 8
  store %struct.page_cache_descr* %17, %struct.page_cache_descr** %7, align 8
  br label %18

18:                                               ; preds = %67, %1
  %19 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %20 = icmp ne %struct.page_cache_descr* null, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %23 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %22, i32 0, i32 1
  %24 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %23, align 8
  store %struct.rrdeng_page_descr* %24, %struct.rrdeng_page_descr** %6, align 8
  %25 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %26 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %27 = call i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance* %25, %struct.rrdeng_page_descr* %26)
  %28 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %29 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @RRD_PAGE_POPULATED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %21
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @RRD_PAGE_DIRTY, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %42 = call i64 @pg_cache_try_get_unsafe(%struct.rrdeng_page_descr* %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %46 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %47 = call i32 @pg_cache_evict_unsafe(%struct.rrdengine_instance* %45, %struct.rrdeng_page_descr* %46)
  %48 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %49 = call i32 @pg_cache_put_unsafe(%struct.rrdeng_page_descr* %48)
  %50 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %51 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %52 = call i32 @pg_cache_replaceQ_delete_unsafe(%struct.rrdengine_instance* %50, %struct.rrdeng_page_descr* %51)
  %53 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %54 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %55 = call i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance* %53, %struct.rrdeng_page_descr* %54)
  %56 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %57 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @uv_rwlock_wrunlock(i32* %58)
  %60 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %61 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %62 = call i32 @rrdeng_try_deallocate_pg_cache_descr(%struct.rrdengine_instance* %60, %struct.rrdeng_page_descr* %61)
  store i32 1, i32* %2, align 4
  br label %76

63:                                               ; preds = %40, %35, %21
  %64 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %65 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %66 = call i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance* %64, %struct.rrdeng_page_descr* %65)
  br label %67

67:                                               ; preds = %63
  %68 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %69 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %68, i32 0, i32 2
  %70 = load %struct.page_cache_descr*, %struct.page_cache_descr** %69, align 8
  store %struct.page_cache_descr* %70, %struct.page_cache_descr** %7, align 8
  br label %18

71:                                               ; preds = %18
  %72 = load %struct.page_cache*, %struct.page_cache** %4, align 8
  %73 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @uv_rwlock_wrunlock(i32* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %44
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @uv_rwlock_wrlock(i32*) #1

declare dso_local i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i64 @pg_cache_try_get_unsafe(%struct.rrdeng_page_descr*, i32) #1

declare dso_local i32 @pg_cache_evict_unsafe(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @pg_cache_put_unsafe(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @pg_cache_replaceQ_delete_unsafe(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #1

declare dso_local i32 @rrdeng_try_deallocate_pg_cache_descr(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
