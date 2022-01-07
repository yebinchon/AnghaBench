; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_page_descr_mutex_unlock.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_page_descr_mutex_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i32 }
%struct.rrdeng_page_descr = type { i64, %struct.page_cache_descr* }
%struct.page_cache_descr = type { i32, i32, i32 }

@PG_CACHE_DESCR_SHIFT = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_LOCKED = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_ALLOCATED = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_DESTROY = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_FLAGS_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page_cache_descr*, align 8
  %10 = alloca i32, align 4
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  %11 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %12 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %11, i32 0, i32 1
  %13 = load %struct.page_cache_descr*, %struct.page_cache_descr** %12, align 8
  %14 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %13, i32 0, i32 2
  %15 = call i32 @uv_mutex_unlock(i32* %14)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %2, %39, %45, %86, %90, %114
  %17 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %18 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @PG_CACHE_DESCR_SHIFT, align 8
  %22 = lshr i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 0, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %32 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @ulong_compare_and_swap(i64* %32, i64 %33, i64 0)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %115

39:                                               ; preds = %26
  br label %16

40:                                               ; preds = %16
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 0, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %16

50:                                               ; preds = %40
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @PG_CACHE_DESCR_ALLOCATED, align 8
  %53 = and i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %57 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %56, i32 0, i32 1
  %58 = load %struct.page_cache_descr*, %struct.page_cache_descr** %57, align 8
  store %struct.page_cache_descr* %58, %struct.page_cache_descr** %9, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @PG_CACHE_DESCR_DESTROY, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %50
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 1, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %68 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  %72 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %73 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  store i64 %77, i64* %6, align 8
  %78 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %79 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %78, i32 0, i32 0
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @ulong_compare_and_swap(i64* %79, i64 %80, i64 %81)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  %87 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %88 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %89 = call i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance* %87, %struct.page_cache_descr* %88)
  br label %16

90:                                               ; preds = %76
  br label %16

91:                                               ; preds = %71, %66, %63, %50
  %92 = load i64, i64* %8, align 8
  %93 = icmp ugt i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %96, 1
  %98 = load i64, i64* @PG_CACHE_DESCR_SHIFT, align 8
  %99 = shl i64 %97, %98
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @PG_CACHE_DESCR_FLAGS_MASK, align 8
  %102 = and i64 %100, %101
  %103 = load i64, i64* %6, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %106 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %105, i32 0, i32 0
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @ulong_compare_and_swap(i64* %106, i64 %107, i64 %108)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %91
  br label %115

114:                                              ; preds = %91
  br label %16

115:                                              ; preds = %113, %38
  ret void
}

declare dso_local i32 @uv_mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ulong_compare_and_swap(i64*, i64, i64) #1

declare dso_local i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance*, %struct.page_cache_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
