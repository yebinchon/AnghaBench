; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_try_reserve_pages.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_pg_cache_try_reserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i32, %struct.page_cache }
%struct.page_cache = type { i32, i32 }

@D_RRDENGINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"==Page cache full. Trying to reserve %u pages.==\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Evicted %u pages.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrdengine_instance*, i32)* @pg_cache_try_reserve_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_cache_try_reserve_pages(%struct.rrdengine_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %9 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %8, i32 0, i32 1
  store %struct.page_cache* %9, %struct.page_cache** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %12 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %18 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %17, i32 0, i32 1
  %19 = call i32 @uv_rwlock_wrlock(i32* %18)
  %20 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %21 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %22, %23
  %25 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %26 = call i32 @pg_cache_soft_limit(%struct.rrdengine_instance* %25)
  %27 = add i32 %26, 1
  %28 = icmp uge i32 %24, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %2
  %30 = load i32, i32* @D_RRDENGINE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @debug(i32 %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %41, %29
  %34 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %35 = call i32 @pg_cache_try_evict_one_page_unsafe(%struct.rrdengine_instance* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %51

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %43 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %44, %45
  %47 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %48 = call i32 @pg_cache_soft_limit(%struct.rrdengine_instance* %47)
  %49 = add i32 %48, 1
  %50 = icmp uge i32 %46, %49
  br i1 %50, label %33, label %51

51:                                               ; preds = %41, %37
  %52 = load i32, i32* @D_RRDENGINE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @debug(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %2
  %56 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %57 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %58, %59
  %61 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %62 = call i32 @pg_cache_hard_limit(%struct.rrdengine_instance* %61)
  %63 = add i32 %62, 1
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %68 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %65, %55
  %72 = load %struct.page_cache*, %struct.page_cache** %5, align 8
  %73 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %72, i32 0, i32 1
  %74 = call i32 @uv_rwlock_wrunlock(i32* %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_rwlock_wrlock(i32*) #1

declare dso_local i32 @pg_cache_soft_limit(%struct.rrdengine_instance*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @pg_cache_try_evict_one_page_unsafe(%struct.rrdengine_instance*) #1

declare dso_local i32 @pg_cache_hard_limit(%struct.rrdengine_instance*) #1

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
