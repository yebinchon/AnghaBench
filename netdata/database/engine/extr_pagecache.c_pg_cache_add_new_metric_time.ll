; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_add_new_metric_time.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_add_new_metric_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_cache_page_index = type { i64, i64 }
%struct.rrdeng_page_descr = type { i64, i64 }

@INVALID_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_cache_add_new_metric_time(%struct.pg_cache_page_index* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.pg_cache_page_index*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pg_cache_page_index* %0, %struct.pg_cache_page_index** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  %7 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %8 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %11 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @INVALID_TIME, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %18 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %19, %20
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i1 [ true, %2 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %29 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %32 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %35 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @INVALID_TIME, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i1 [ true, %33 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %50 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %3, align 8
  %53 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %43
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
