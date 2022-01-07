; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_try_deallocate_pg_cache_descr.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdenglocking.c_rrdeng_try_deallocate_pg_cache_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i32 }
%struct.rrdeng_page_descr = type { i64, %struct.page_cache_descr* }
%struct.page_cache_descr = type { i32, i32 }

@PG_CACHE_DESCR_SHIFT = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_DESTROY = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_LOCKED = common dso_local global i64 0, align 8
@PG_CACHE_DESCR_ALLOCATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdeng_try_deallocate_pg_cache_descr(%struct.rrdengine_instance* %0, %struct.rrdeng_page_descr* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdeng_page_descr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page_cache_descr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdeng_page_descr* %1, %struct.rrdeng_page_descr** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %2, %37, %41, %72, %84, %107, %108, %128
  %14 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %15 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PG_CACHE_DESCR_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %29 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %34 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %39 = load %struct.page_cache_descr*, %struct.page_cache_descr** %9, align 8
  %40 = call i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance* %38, %struct.page_cache_descr* %39)
  store i32 1, i32* %11, align 4
  br label %13

41:                                               ; preds = %32, %23
  br label %13

42:                                               ; preds = %13
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 0, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i64 0, i64* %6, align 8
  br label %62

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @PG_CACHE_DESCR_DESTROY, align 8
  %57 = or i64 %55, %56
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, i64* %6, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %54, %53
  %63 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %64 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %63, i32 0, i32 0
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @ulong_compare_and_swap(i64* %64, i64 %65, i64 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %129

72:                                               ; preds = %62
  br label %13

73:                                               ; preds = %42
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @PG_CACHE_DESCR_ALLOCATED, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %129

79:                                               ; preds = %73
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 0, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  br label %13

89:                                               ; preds = %79
  %90 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %91 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %90, i32 0, i32 1
  %92 = load %struct.page_cache_descr*, %struct.page_cache_descr** %91, align 8
  store %struct.page_cache_descr* %92, %struct.page_cache_descr** %9, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 0, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @PG_CACHE_DESCR_LOCKED, align 8
  %98 = or i64 %96, %97
  store i64 %98, i64* %6, align 8
  %99 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %100 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %99, i32 0, i32 0
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @ulong_compare_and_swap(i64* %100, i64 %101, i64 %102)
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  store i32 1, i32* %10, align 4
  br label %13

108:                                              ; preds = %95
  br label %13

109:                                              ; preds = %89
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @PG_CACHE_DESCR_DESTROY, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %129

115:                                              ; preds = %109
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @PG_CACHE_DESCR_DESTROY, align 8
  %118 = or i64 %116, %117
  store i64 %118, i64* %6, align 8
  %119 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %4, align 8
  %120 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %119, i32 0, i32 0
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @ulong_compare_and_swap(i64* %120, i64 %121, i64 %122)
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %129

128:                                              ; preds = %115
  br label %13

129:                                              ; preds = %127, %114, %78, %71
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance*, %struct.page_cache_descr*) #1

declare dso_local i64 @ulong_compare_and_swap(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
