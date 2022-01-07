; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_insert.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_4__, %struct.page_cache }
%struct.TYPE_4__ = type { i32 }
%struct.page_cache = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pg_cache_page_index = type { i64, i32, i32, i32, i32, %struct.page_cache_descr* }
%struct.page_cache_descr = type { i32 }
%struct.rrdeng_page_descr = type { i64, i32, i32, i32, i32, %struct.page_cache_descr* }

@PG_CACHE_DESCR_ALLOCATED = common dso_local global i64 0, align 8
@RRD_PAGE_POPULATED = common dso_local global i32 0, align 4
@RRD_PAGE_DIRTY = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@PJE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_cache_insert(%struct.rrdengine_instance* %0, %struct.pg_cache_page_index* %1, %struct.rrdeng_page_descr* %2) #0 {
  %4 = alloca %struct.rrdengine_instance*, align 8
  %5 = alloca %struct.pg_cache_page_index*, align 8
  %6 = alloca %struct.rrdeng_page_descr*, align 8
  %7 = alloca %struct.page_cache*, align 8
  %8 = alloca %struct.rrdeng_page_descr**, align 8
  %9 = alloca %struct.pg_cache_page_index*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %4, align 8
  store %struct.pg_cache_page_index* %1, %struct.pg_cache_page_index** %5, align 8
  store %struct.rrdeng_page_descr* %2, %struct.rrdeng_page_descr** %6, align 8
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %13 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %12, i32 0, i32 1
  store %struct.page_cache* %13, %struct.page_cache** %7, align 8
  %14 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %15 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 0, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %21 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %20, i32 0, i32 5
  %22 = load %struct.page_cache_descr*, %struct.page_cache_descr** %21, align 8
  store %struct.page_cache_descr* %22, %struct.page_cache_descr** %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @PG_CACHE_DESCR_ALLOCATED, align 8
  %25 = and i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.page_cache_descr*, %struct.page_cache_descr** %11, align 8
  %29 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RRD_PAGE_POPULATED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %19
  %35 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %36 = call i32 @pg_cache_reserve_pages(%struct.rrdengine_instance* %35, i32 1)
  %37 = load %struct.page_cache_descr*, %struct.page_cache_descr** %11, align 8
  %38 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RRD_PAGE_DIRTY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %45 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %46 = call i32 @pg_cache_replaceQ_insert(%struct.rrdengine_instance* %44, %struct.rrdeng_page_descr* %45)
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %19
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %5, align 8
  %51 = icmp eq %struct.pg_cache_page_index* null, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %57 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @uv_rwlock_rdlock(i32* %58)
  %60 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %61 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %65 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.rrdeng_page_descr** @JudyHSGet(i32 %63, i32 %66, i32 4)
  store %struct.rrdeng_page_descr** %67, %struct.rrdeng_page_descr*** %8, align 8
  %68 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %8, align 8
  %69 = icmp ne %struct.rrdeng_page_descr** null, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %8, align 8
  %73 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %72, align 8
  %74 = bitcast %struct.rrdeng_page_descr* %73 to %struct.pg_cache_page_index*
  store %struct.pg_cache_page_index* %74, %struct.pg_cache_page_index** %9, align 8
  %75 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %76 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @uv_rwlock_rdunlock(i32* %77)
  br label %81

79:                                               ; preds = %49
  %80 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %5, align 8
  store %struct.pg_cache_page_index* %80, %struct.pg_cache_page_index** %9, align 8
  br label %81

81:                                               ; preds = %79, %55
  %82 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %9, align 8
  %83 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %82, i32 0, i32 2
  %84 = call i32 @uv_rwlock_wrlock(i32* %83)
  %85 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %9, align 8
  %86 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %85, i32 0, i32 3
  %87 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %88 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @USEC_PER_SEC, align 4
  %91 = sdiv i32 %89, %90
  %92 = load i32, i32* @PJE0, align 4
  %93 = call %struct.rrdeng_page_descr** @JudyLIns(i32* %86, i32 %91, i32 %92)
  store %struct.rrdeng_page_descr** %93, %struct.rrdeng_page_descr*** %8, align 8
  %94 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %95 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %8, align 8
  store %struct.rrdeng_page_descr* %94, %struct.rrdeng_page_descr** %95, align 8
  %96 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %9, align 8
  %97 = bitcast %struct.pg_cache_page_index* %96 to %struct.rrdeng_page_descr*
  %98 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %6, align 8
  %99 = call i32 @pg_cache_add_new_metric_time(%struct.rrdeng_page_descr* %97, %struct.rrdeng_page_descr* %98)
  %100 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %9, align 8
  %101 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %100, i32 0, i32 2
  %102 = call i32 @uv_rwlock_wrunlock(i32* %101)
  %103 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %104 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %103, i32 0, i32 0
  %105 = call i32 @uv_rwlock_wrlock(i32* %104)
  %106 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %107 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %112 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %116 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %115, i32 0, i32 0
  %117 = call i32 @uv_rwlock_wrunlock(i32* %116)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pg_cache_reserve_pages(%struct.rrdengine_instance*, i32) #1

declare dso_local i32 @pg_cache_replaceQ_insert(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @uv_rwlock_rdlock(i32*) #1

declare dso_local %struct.rrdeng_page_descr** @JudyHSGet(i32, i32, i32) #1

declare dso_local i32 @uv_rwlock_rdunlock(i32*) #1

declare dso_local i32 @uv_rwlock_wrlock(i32*) #1

declare dso_local %struct.rrdeng_page_descr** @JudyLIns(i32*, i32, i32) #1

declare dso_local i32 @pg_cache_add_new_metric_time(%struct.rrdeng_page_descr*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
