; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_page_descr_mutex_lock.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_page_descr_mutex_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i32 }
%struct.rrdeng_page_descr = type { i64, %struct.page_cache_descr* }
%struct.page_cache_descr = type { i32, %struct.rrdeng_page_descr* }

@PG_CACHE_DESCR_SHIFT = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_LOCKED = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_ALLOCATED = common dso_local global i32 0, align 4
@PG_CACHE_DESCR_FLAGS_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page_cache_descr*, align 8
  %10 = alloca i32, align 4
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  store %struct.page_cache_descr* null, %struct.page_cache_descr** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %2, %41, %47, %70, %77, %102
  %12 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %13 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PG_CACHE_DESCR_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %11
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  %24 = and i64 %22, %23
  %25 = call i32 @assert(i64 %24)
  %26 = load i64, i64* @PG_CACHE_DESCR_SHIFT, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = load i32, i32* @PG_CACHE_DESCR_ALLOCATED, align 4
  %30 = or i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %33 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @ulong_compare_and_swap(i64* %33, i64 %34, i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %103

41:                                               ; preds = %21
  br label %11

42:                                               ; preds = %11
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 0, %48
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = call i32 @assert(i64 %51)
  br label %11

53:                                               ; preds = %42
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 0, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %58 = icmp eq %struct.page_cache_descr* null, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %61 = call %struct.page_cache_descr* @rrdeng_create_pg_cache_descr(%struct.rrdengine_instance* %60)
  store %struct.page_cache_descr* %61, %struct.page_cache_descr** %9, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  store i64 %63, i64* %7, align 8
  %64 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %65 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @ulong_compare_and_swap(i64* %65, i64 0, i64 %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 0, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  %71 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %72 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %73 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %72, i32 0, i32 1
  store %struct.page_cache_descr* %71, %struct.page_cache_descr** %73, align 8
  %74 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %75 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %76 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %75, i32 0, i32 1
  store %struct.rrdeng_page_descr* %74, %struct.rrdeng_page_descr** %76, align 8
  store %struct.page_cache_descr* null, %struct.page_cache_descr** %9, align 8
  br label %11

77:                                               ; preds = %62
  br label %11

78:                                               ; preds = %53
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* @PG_CACHE_DESCR_ALLOCATED, align 4
  %81 = sext i32 %80 to i64
  %82 = and i64 %79, %81
  %83 = call i32 @assert(i64 %82)
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  %86 = load i64, i64* @PG_CACHE_DESCR_SHIFT, align 8
  %87 = shl i64 %85, %86
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @PG_CACHE_DESCR_FLAGS_MASK, align 8
  %90 = and i64 %88, %89
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %94 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %93, i32 0, i32 0
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i64 @ulong_compare_and_swap(i64* %94, i64 %95, i64 %96)
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %78
  br label %103

102:                                              ; preds = %78
  br label %11

103:                                              ; preds = %101, %40
  %104 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %105 = icmp ne %struct.page_cache_descr* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %108 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %109 = call i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance* %107, %struct.page_cache_descr* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %112 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %111, i32 0, i32 1
  %113 = load %struct.page_cache_descr*, %struct.page_cache_descr** %112, align 8
  store %struct.page_cache_descr* %113, %struct.page_cache_descr** %9, align 8
  %114 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %115 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %114, i32 0, i32 0
  %116 = call i32 @uv_mutex_lock(i32* %115)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @ulong_compare_and_swap(i64*, i64, i64) #1

declare dso_local %struct.page_cache_descr* @rrdeng_create_pg_cache_descr(%struct.rrdengine_instance*) #1

declare dso_local i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance*, %struct.page_cache_descr*) #1

declare dso_local i32 @uv_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
