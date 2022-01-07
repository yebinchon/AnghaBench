; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_replaceQ_insert_unsafe.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_replaceQ_insert_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.page_cache_descr*, %struct.page_cache_descr* }
%struct.page_cache_descr = type { %struct.page_cache_descr*, %struct.page_cache_descr* }
%struct.rrdeng_page_descr = type { %struct.page_cache_descr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_instance*, %struct.rrdeng_page_descr*)* @pg_cache_replaceQ_insert_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_cache_replaceQ_insert_unsafe(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca %struct.page_cache*, align 8
  %6 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  %7 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %8 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %7, i32 0, i32 0
  store %struct.page_cache* %8, %struct.page_cache** %5, align 8
  %9 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %10 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %9, i32 0, i32 0
  %11 = load %struct.page_cache_descr*, %struct.page_cache_descr** %10, align 8
  store %struct.page_cache_descr* %11, %struct.page_cache_descr** %6, align 8
  %12 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %13 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.page_cache_descr*, %struct.page_cache_descr** %14, align 8
  %16 = icmp ne %struct.page_cache_descr* null, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %22 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.page_cache_descr*, %struct.page_cache_descr** %23, align 8
  %25 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %26 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %25, i32 0, i32 1
  store %struct.page_cache_descr* %24, %struct.page_cache_descr** %26, align 8
  %27 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %28 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %29 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.page_cache_descr*, %struct.page_cache_descr** %30, align 8
  %32 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %31, i32 0, i32 0
  store %struct.page_cache_descr* %27, %struct.page_cache_descr** %32, align 8
  br label %33

33:                                               ; preds = %20, %2
  %34 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %35 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.page_cache_descr*, %struct.page_cache_descr** %36, align 8
  %38 = icmp eq %struct.page_cache_descr* null, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %44 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %45 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store %struct.page_cache_descr* %43, %struct.page_cache_descr** %46, align 8
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %49 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %50 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.page_cache_descr* %48, %struct.page_cache_descr** %51, align 8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
