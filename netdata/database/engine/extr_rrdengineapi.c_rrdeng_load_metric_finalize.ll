; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_load_metric_finalize.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_load_metric_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrddim_query_handle = type { %struct.rrdeng_query_handle }
%struct.rrdeng_query_handle = type { %struct.rrdeng_page_descr*, %struct.rrdengine_instance* }
%struct.rrdeng_page_descr = type { i32 }
%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_load_metric_finalize(%struct.rrddim_query_handle* %0) #0 {
  %2 = alloca %struct.rrddim_query_handle*, align 8
  %3 = alloca %struct.rrdeng_query_handle*, align 8
  %4 = alloca %struct.rrdengine_instance*, align 8
  %5 = alloca %struct.rrdeng_page_descr*, align 8
  store %struct.rrddim_query_handle* %0, %struct.rrddim_query_handle** %2, align 8
  %6 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %2, align 8
  %7 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %6, i32 0, i32 0
  store %struct.rrdeng_query_handle* %7, %struct.rrdeng_query_handle** %3, align 8
  %8 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %3, align 8
  %9 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %8, i32 0, i32 1
  %10 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  store %struct.rrdengine_instance* %10, %struct.rrdengine_instance** %4, align 8
  %11 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %3, align 8
  %12 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %11, i32 0, i32 0
  %13 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %12, align 8
  store %struct.rrdeng_page_descr* %13, %struct.rrdeng_page_descr** %5, align 8
  %14 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %15 = icmp ne %struct.rrdeng_page_descr* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %18 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %5, align 8
  %19 = call i32 @pg_cache_put(%struct.rrdengine_instance* %17, %struct.rrdeng_page_descr* %18)
  br label %20

20:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @pg_cache_put(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
