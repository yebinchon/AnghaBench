; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_evict_unsafe.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_evict_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rrdeng_page_descr = type { %struct.page_cache_descr* }
%struct.page_cache_descr = type { i32, i32* }

@RRD_PAGE_POPULATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_instance*, %struct.rrdeng_page_descr*)* @pg_cache_evict_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_cache_evict_unsafe(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  %6 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %7 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %6, i32 0, i32 0
  %8 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  store %struct.page_cache_descr* %8, %struct.page_cache_descr** %5, align 8
  %9 = load %struct.page_cache_descr*, %struct.page_cache_descr** %5, align 8
  %10 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @freez(i32* %11)
  %13 = load %struct.page_cache_descr*, %struct.page_cache_descr** %5, align 8
  %14 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @RRD_PAGE_POPULATED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.page_cache_descr*, %struct.page_cache_descr** %5, align 8
  %18 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %22 = call i32 @pg_cache_release_pages_unsafe(%struct.rrdengine_instance* %21, i32 1)
  %23 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %24 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local i32 @freez(i32*) #1

declare dso_local i32 @pg_cache_release_pages_unsafe(%struct.rrdengine_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
