; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_update_metric_times.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_update_metric_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_cache_page_index = type { i8*, i8*, i32, i32 }
%struct.rrdeng_page_descr = type { i8*, i8* }

@INVALID_TIME = common dso_local global i8* null, align 8
@PJE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_cache_update_metric_times(%struct.pg_cache_page_index* %0) #0 {
  %2 = alloca %struct.pg_cache_page_index*, align 8
  %3 = alloca %struct.rrdeng_page_descr**, align 8
  %4 = alloca %struct.rrdeng_page_descr**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rrdeng_page_descr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.pg_cache_page_index* %0, %struct.pg_cache_page_index** %2, align 8
  %10 = load i8*, i8** @INVALID_TIME, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** @INVALID_TIME, align 8
  store i8* %11, i8** %9, align 8
  %12 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %13 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %12, i32 0, i32 2
  %14 = call i32 @uv_rwlock_rdlock(i32* %13)
  store i64 0, i64* %5, align 8
  %15 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %16 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PJE0, align 4
  %19 = call %struct.rrdeng_page_descr** @JudyLFirst(i32 %17, i64* %5, i32 %18)
  store %struct.rrdeng_page_descr** %19, %struct.rrdeng_page_descr*** %3, align 8
  %20 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %3, align 8
  %21 = icmp ne %struct.rrdeng_page_descr** null, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %3, align 8
  %27 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %26, align 8
  store %struct.rrdeng_page_descr* %27, %struct.rrdeng_page_descr** %7, align 8
  %28 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %29 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %25, %1
  store i64 -1, i64* %6, align 8
  %32 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %33 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PJE0, align 4
  %36 = call %struct.rrdeng_page_descr** @JudyLLast(i32 %34, i64* %6, i32 %35)
  store %struct.rrdeng_page_descr** %36, %struct.rrdeng_page_descr*** %4, align 8
  %37 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %4, align 8
  %38 = icmp ne %struct.rrdeng_page_descr** null, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %4, align 8
  %44 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %43, align 8
  store %struct.rrdeng_page_descr* %44, %struct.rrdeng_page_descr** %7, align 8
  %45 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %46 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %42, %31
  %49 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %50 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %49, i32 0, i32 2
  %51 = call i32 @uv_rwlock_rdunlock(i32* %50)
  %52 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %3, align 8
  %53 = icmp eq %struct.rrdeng_page_descr** null, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %4, align 8
  %59 = icmp eq %struct.rrdeng_page_descr** null, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i8*, i8** @INVALID_TIME, align 8
  %63 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %64 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %66 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %65, i32 0, i32 1
  store i8* %62, i8** %66, align 8
  br label %74

67:                                               ; preds = %48
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %70 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %2, align 8
  %73 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %67, %57
  ret void
}

declare dso_local i32 @uv_rwlock_rdlock(i32*) #1

declare dso_local %struct.rrdeng_page_descr** @JudyLFirst(i32, i64*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.rrdeng_page_descr** @JudyLLast(i32, i64*, i32) #1

declare dso_local i32 @uv_rwlock_rdunlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
