; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_try_get_unsafe.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_try_get_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdeng_page_descr = type { %struct.page_cache_descr* }
%struct.page_cache_descr = type { i32, i64 }

@RRD_PAGE_LOCKED = common dso_local global i32 0, align 4
@RRD_PAGE_READ_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_cache_try_get_unsafe(%struct.rrdeng_page_descr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdeng_page_descr* %0, %struct.rrdeng_page_descr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %8 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %7, i32 0, i32 0
  %9 = load %struct.page_cache_descr*, %struct.page_cache_descr** %8, align 8
  store %struct.page_cache_descr* %9, %struct.page_cache_descr** %6, align 8
  %10 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %11 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RRD_PAGE_LOCKED, align 4
  %14 = load i32, i32* @RRD_PAGE_READ_PENDING, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %23 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %41

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* @RRD_PAGE_LOCKED, align 4
  %32 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %33 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.page_cache_descr*, %struct.page_cache_descr** %6, align 8
  %38 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
