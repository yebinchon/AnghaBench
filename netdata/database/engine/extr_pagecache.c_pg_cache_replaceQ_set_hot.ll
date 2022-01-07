; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_replaceQ_set_hot.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_replaceQ_set_hot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rrdeng_page_descr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_cache_replaceQ_set_hot(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca %struct.page_cache*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  %6 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %7 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %6, i32 0, i32 0
  store %struct.page_cache* %7, %struct.page_cache** %5, align 8
  %8 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %9 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @uv_rwlock_wrlock(i32* %10)
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %13 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %14 = call i32 @pg_cache_replaceQ_delete_unsafe(%struct.rrdengine_instance* %12, %struct.rrdeng_page_descr* %13)
  %15 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %16 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %17 = call i32 @pg_cache_replaceQ_insert_unsafe(%struct.rrdengine_instance* %15, %struct.rrdeng_page_descr* %16)
  %18 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %19 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @uv_rwlock_wrunlock(i32* %20)
  ret void
}

declare dso_local i32 @uv_rwlock_wrlock(i32*) #1

declare dso_local i32 @pg_cache_replaceQ_delete_unsafe(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @pg_cache_replaceQ_insert_unsafe(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
