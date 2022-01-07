; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_replaceQ_delete_unsafe.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_replaceQ_delete_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.page_cache_descr*, %struct.page_cache_descr* }
%struct.page_cache_descr = type { %struct.page_cache_descr*, %struct.page_cache_descr* }
%struct.rrdeng_page_descr = type { %struct.page_cache_descr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_instance*, %struct.rrdeng_page_descr*)* @pg_cache_replaceQ_delete_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_cache_replaceQ_delete_unsafe(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca %struct.page_cache*, align 8
  %6 = alloca %struct.page_cache_descr*, align 8
  %7 = alloca %struct.page_cache_descr*, align 8
  %8 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  %9 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %10 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %9, i32 0, i32 0
  store %struct.page_cache* %10, %struct.page_cache** %5, align 8
  %11 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %12 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %11, i32 0, i32 0
  %13 = load %struct.page_cache_descr*, %struct.page_cache_descr** %12, align 8
  store %struct.page_cache_descr* %13, %struct.page_cache_descr** %6, align 8
  %14 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %15 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %14, i32 0, i32 1
  %16 = load %struct.page_cache_descr*, %struct.page_cache_descr** %15, align 8
  store %struct.page_cache_descr* %16, %struct.page_cache_descr** %7, align 8
  %17 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %18 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %17, i32 0, i32 0
  %19 = load %struct.page_cache_descr*, %struct.page_cache_descr** %18, align 8
  store %struct.page_cache_descr* %19, %struct.page_cache_descr** %8, align 8
  %20 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %21 = icmp ne %struct.page_cache_descr* null, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  %27 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %28 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %27, i32 0, i32 0
  store %struct.page_cache_descr* %26, %struct.page_cache_descr** %28, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  %31 = icmp ne %struct.page_cache_descr* null, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %37 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  %38 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %37, i32 0, i32 1
  store %struct.page_cache_descr* %36, %struct.page_cache_descr** %38, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %41 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %42 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.page_cache_descr*, %struct.page_cache_descr** %43, align 8
  %45 = icmp eq %struct.page_cache_descr* %40, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  %51 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %52 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.page_cache_descr* %50, %struct.page_cache_descr** %53, align 8
  br label %54

54:                                               ; preds = %49, %39
  %55 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %56 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %57 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.page_cache_descr*, %struct.page_cache_descr** %58, align 8
  %60 = icmp eq %struct.page_cache_descr* %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.page_cache_descr*, %struct.page_cache_descr** %7, align 8
  %66 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %67 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.page_cache_descr* %65, %struct.page_cache_descr** %68, align 8
  br label %69

69:                                               ; preds = %64, %54
  %70 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %71 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %70, i32 0, i32 0
  store %struct.page_cache_descr* null, %struct.page_cache_descr** %71, align 8
  %72 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %73 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %72, i32 0, i32 1
  store %struct.page_cache_descr* null, %struct.page_cache_descr** %73, align 8
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
