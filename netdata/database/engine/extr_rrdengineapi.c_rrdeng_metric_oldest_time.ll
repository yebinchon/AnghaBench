; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_metric_oldest_time.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_metric_oldest_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rrdeng_collect_handle }
%struct.rrdeng_collect_handle = type { %struct.pg_cache_page_index* }
%struct.pg_cache_page_index = type { i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdeng_metric_oldest_time(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.rrdeng_collect_handle*, align 8
  %4 = alloca %struct.pg_cache_page_index*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.rrdeng_collect_handle* %9, %struct.rrdeng_collect_handle** %3, align 8
  %10 = load %struct.rrdeng_collect_handle*, %struct.rrdeng_collect_handle** %3, align 8
  %11 = getelementptr inbounds %struct.rrdeng_collect_handle, %struct.rrdeng_collect_handle* %10, i32 0, i32 0
  %12 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %11, align 8
  store %struct.pg_cache_page_index* %12, %struct.pg_cache_page_index** %4, align 8
  %13 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %4, align 8
  %14 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USEC_PER_SEC, align 4
  %17 = sdiv i32 %15, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
