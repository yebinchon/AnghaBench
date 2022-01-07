; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_finalize.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_store_metric_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rrdeng_collect_handle }
%struct.rrdeng_collect_handle = type { i64, %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_store_metric_finalize(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.rrdeng_collect_handle*, align 8
  %4 = alloca %struct.rrdengine_instance*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.rrdeng_collect_handle* %9, %struct.rrdeng_collect_handle** %3, align 8
  %10 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %11 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %10, i32 0, i32 1
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %11, align 8
  store %struct.rrdengine_instance* %12, %struct.rrdengine_instance** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call i32 @rrdeng_store_metric_flush_current_page(%struct.TYPE_8__* %13)
  %15 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %16 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %21 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %22 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pg_cache_put(%struct.rrdengine_instance* %20, i64 %23)
  br label %25

25:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @rrdeng_store_metric_flush_current_page(%struct.TYPE_8__*) #1

declare dso_local i32 @pg_cache_put(%struct.rrdengine_instance*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
