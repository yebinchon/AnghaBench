; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_flush_current_page.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_flush_current_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rrdeng_collect_handle }
%struct.rrdeng_collect_handle = type { %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr*, i32, %struct.rrdengine_instance* }
%struct.rrdeng_page_descr = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.rrdeng_page_descr* }
%struct.rrdengine_instance = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@D_RRDENGINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Page has empty metrics only, deleting:\00", align 1
@debug_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_store_metric_flush_current_page(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.rrdeng_collect_handle*, align 8
  %4 = alloca %struct.rrdengine_instance*, align 8
  %5 = alloca %struct.rrdeng_page_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.rrdeng_collect_handle* %12, %struct.rrdeng_collect_handle** %3, align 8
  %13 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %14 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %13, i32 0, i32 3
  %15 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %14, align 8
  store %struct.rrdengine_instance* %15, %struct.rrdengine_instance** %4, align 8
  %16 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %17 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %16, i32 0, i32 0
  %18 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %17, align 8
  store %struct.rrdeng_page_descr* %18, %struct.rrdeng_page_descr** %5, align 8
  %19 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %20 = icmp eq %struct.rrdeng_page_descr* null, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %111

25:                                               ; preds = %1
  %26 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %27 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %25
  %32 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %33 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @rrd_stat_atomic_add(i32* %34, i32 -1)
  %36 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %37 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %36, i32 0, i32 1
  %38 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %37, align 8
  %39 = icmp ne %struct.rrdeng_page_descr* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %42 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %43 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %42, i32 0, i32 1
  %44 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %43, align 8
  %45 = call i32 @pg_cache_put(%struct.rrdengine_instance* %41, %struct.rrdeng_page_descr* %44)
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %48 = call i32 @page_has_only_empty_metrics(%struct.rrdeng_page_descr* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load i32, i32* @D_RRDENGINE, align 4
  %53 = call i32 @debug(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @debug_flags, align 4
  %55 = load i32, i32* @D_RRDENGINE, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %61 = call i32 @print_page_cache_descr(%struct.rrdeng_page_descr* %60)
  br label %62

62:                                               ; preds = %59, %51
  %63 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %64 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %65 = call i32 @pg_cache_put(%struct.rrdengine_instance* %63, %struct.rrdeng_page_descr* %64)
  %66 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %67 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %68 = call i32 @pg_cache_punch_hole(%struct.rrdengine_instance* %66, %struct.rrdeng_page_descr* %67, i32 1)
  %69 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %70 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %69, i32 0, i32 1
  store %struct.rrdeng_page_descr* null, %struct.rrdeng_page_descr** %70, align 8
  br label %93

71:                                               ; preds = %46
  %72 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %73 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %74 = call i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance* %72, %struct.rrdeng_page_descr* %73)
  %75 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %76 = call i32 @pg_cache_try_get_unsafe(%struct.rrdeng_page_descr* %75, i32 0)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %78 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %79 = call i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance* %77, %struct.rrdeng_page_descr* %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 1, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %85 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %86 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %87 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @rrdeng_commit_page(%struct.rrdengine_instance* %84, %struct.rrdeng_page_descr* %85, i32 %88)
  %90 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %91 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %92 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %91, i32 0, i32 1
  store %struct.rrdeng_page_descr* %90, %struct.rrdeng_page_descr** %92, align 8
  br label %93

93:                                               ; preds = %71, %62
  br label %108

94:                                               ; preds = %25
  %95 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %96 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %98, align 8
  %100 = call i32 @freez(%struct.rrdeng_page_descr* %99)
  %101 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %102 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %103 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = call i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance* %101, %struct.TYPE_11__* %104)
  %106 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %107 = call i32 @freez(%struct.rrdeng_page_descr* %106)
  br label %108

108:                                              ; preds = %94, %93
  %109 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %110 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %109, i32 0, i32 0
  store %struct.rrdeng_page_descr* null, %struct.rrdeng_page_descr** %110, align 8
  br label %111

111:                                              ; preds = %108, %24
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rrd_stat_atomic_add(i32*, i32) #1

declare dso_local i32 @pg_cache_put(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @page_has_only_empty_metrics(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @print_page_cache_descr(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @pg_cache_punch_hole(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*, i32) #1

declare dso_local i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @pg_cache_try_get_unsafe(%struct.rrdeng_page_descr*, i32) #1

declare dso_local i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rrdeng_commit_page(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*, i32) #1

declare dso_local i32 @freez(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
