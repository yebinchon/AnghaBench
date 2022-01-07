; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_load_metric_is_finished.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_rrdeng_load_metric_is_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrddim_query_handle = type { %struct.rrdeng_query_handle }
%struct.rrdeng_query_handle = type { i64 }

@INVALID_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdeng_load_metric_is_finished(%struct.rrddim_query_handle* %0) #0 {
  %2 = alloca %struct.rrddim_query_handle*, align 8
  %3 = alloca %struct.rrdeng_query_handle*, align 8
  store %struct.rrddim_query_handle* %0, %struct.rrddim_query_handle** %2, align 8
  %4 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %2, align 8
  %5 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %4, i32 0, i32 0
  store %struct.rrdeng_query_handle* %5, %struct.rrdeng_query_handle** %3, align 8
  %6 = load i64, i64* @INVALID_TIME, align 8
  %7 = load %struct.rrdeng_query_handle*, %struct.rrdeng_query_handle** %3, align 8
  %8 = getelementptr inbounds %struct.rrdeng_query_handle, %struct.rrdeng_query_handle* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
