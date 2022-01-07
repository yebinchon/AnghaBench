; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_wait_event.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i32 }
%struct.rrdeng_page_descr = type { %struct.page_cache_descr* }
%struct.page_cache_descr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pg_cache_wait_event(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca %struct.page_cache_descr*, align 8
  %6 = alloca i64, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  %7 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %8 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %7, i32 0, i32 0
  %9 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  store %struct.page_cache_descr* %9, %struct.page_cache_descr** %5, align 8
  %10 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %11 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %12 = call i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance* %10, %struct.rrdeng_page_descr* %11)
  %13 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %14 = call i32 @pg_cache_wait_event_unsafe(%struct.rrdeng_page_descr* %13)
  %15 = load %struct.page_cache_descr*, %struct.page_cache_descr** %5, align 8
  %16 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %19 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %20 = call i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance* %18, %struct.rrdeng_page_descr* %19)
  %21 = load i64, i64* %6, align 8
  ret i64 %21
}

declare dso_local i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @pg_cache_wait_event_unsafe(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
