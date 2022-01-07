; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_free_page_cache.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_pagecache.c_free_page_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.page_cache }
%struct.page_cache = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, %struct.rrdeng_page_descr* }
%struct.rrdeng_page_descr = type { i32, i32*, %struct.page_cache_descr*, %struct.rrdeng_page_descr* }
%struct.page_cache_descr = type { i32, %struct.rrdeng_page_descr* }
%struct.TYPE_3__ = type { i32* }
%struct.pg_cache_page_index = type { i32, i32*, %struct.page_cache_descr*, %struct.pg_cache_page_index* }

@PJE0 = common dso_local global i32 0, align 4
@PG_CACHE_DESCR_ALLOCATED = common dso_local global i32 0, align 4
@RRD_PAGE_POPULATED = common dso_local global i32 0, align 4
@RRDENG_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Freed %lu bytes of memory from page cache.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_page_cache(%struct.rrdengine_instance* %0) #0 {
  %2 = alloca %struct.rrdengine_instance*, align 8
  %3 = alloca %struct.page_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rrdeng_page_descr**, align 8
  %7 = alloca %struct.pg_cache_page_index*, align 8
  %8 = alloca %struct.pg_cache_page_index*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rrdeng_page_descr*, align 8
  %11 = alloca %struct.page_cache_descr*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %2, align 8
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %13 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %12, i32 0, i32 0
  store %struct.page_cache* %13, %struct.page_cache** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %15 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* @PJE0, align 4
  %18 = call i32 @JudyLFreeArray(i32** %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %20 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* null, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %30 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %31, align 8
  %33 = bitcast %struct.rrdeng_page_descr* %32 to %struct.pg_cache_page_index*
  store %struct.pg_cache_page_index* %33, %struct.pg_cache_page_index** %7, align 8
  br label %34

34:                                               ; preds = %139, %1
  %35 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %7, align 8
  %36 = icmp ne %struct.pg_cache_page_index* %35, null
  br i1 %36, label %37, label %141

37:                                               ; preds = %34
  %38 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %7, align 8
  %39 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %38, i32 0, i32 3
  %40 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %39, align 8
  store %struct.pg_cache_page_index* %40, %struct.pg_cache_page_index** %8, align 8
  store i32 0, i32* %9, align 4
  %41 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %7, align 8
  %42 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @PJE0, align 4
  %45 = call %struct.rrdeng_page_descr** @JudyLFirst(i32* %43, i32* %9, i32 %44)
  store %struct.rrdeng_page_descr** %45, %struct.rrdeng_page_descr*** %6, align 8
  %46 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %47 = icmp eq %struct.rrdeng_page_descr** null, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %55

52:                                               ; preds = %37
  %53 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %54 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %53, align 8
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi %struct.rrdeng_page_descr* [ null, %51 ], [ %54, %52 ]
  store %struct.rrdeng_page_descr* %56, %struct.rrdeng_page_descr** %10, align 8
  br label %57

57:                                               ; preds = %116, %55
  %58 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %59 = icmp ne %struct.rrdeng_page_descr* %58, null
  br i1 %59, label %60, label %118

60:                                               ; preds = %57
  %61 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %62 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PG_CACHE_DESCR_ALLOCATED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %60
  %68 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %69 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %68, i32 0, i32 2
  %70 = load %struct.page_cache_descr*, %struct.page_cache_descr** %69, align 8
  store %struct.page_cache_descr* %70, %struct.page_cache_descr** %11, align 8
  %71 = load %struct.page_cache_descr*, %struct.page_cache_descr** %11, align 8
  %72 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RRD_PAGE_POPULATED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load %struct.page_cache_descr*, %struct.page_cache_descr** %11, align 8
  %79 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %78, i32 0, i32 1
  %80 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %79, align 8
  %81 = call i32 @freez(%struct.rrdeng_page_descr* %80)
  %82 = load i64, i64* @RRDENG_BLOCK_SIZE, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %77, %67
  %88 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %89 = load %struct.page_cache_descr*, %struct.page_cache_descr** %11, align 8
  %90 = call i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance* %88, %struct.page_cache_descr* %89)
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 16
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %87, %60
  %96 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %10, align 8
  %97 = call i32 @freez(%struct.rrdeng_page_descr* %96)
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 32
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %7, align 8
  %103 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @PJE0, align 4
  %106 = call %struct.rrdeng_page_descr** @JudyLNext(i32* %104, i32* %9, i32 %105)
  store %struct.rrdeng_page_descr** %106, %struct.rrdeng_page_descr*** %6, align 8
  %107 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %108 = icmp eq %struct.rrdeng_page_descr** null, %107
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %116

113:                                              ; preds = %95
  %114 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %115 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %114, align 8
  br label %116

116:                                              ; preds = %113, %112
  %117 = phi %struct.rrdeng_page_descr* [ null, %112 ], [ %115, %113 ]
  store %struct.rrdeng_page_descr* %117, %struct.rrdeng_page_descr** %10, align 8
  br label %57

118:                                              ; preds = %57
  %119 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %7, align 8
  %120 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %119, i32 0, i32 1
  %121 = load i32, i32* @PJE0, align 4
  %122 = call i32 @JudyLFreeArray(i32** %120, i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %7, align 8
  %124 = getelementptr inbounds %struct.pg_cache_page_index, %struct.pg_cache_page_index* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* null, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %7, align 8
  %133 = bitcast %struct.pg_cache_page_index* %132 to %struct.rrdeng_page_descr*
  %134 = call i32 @freez(%struct.rrdeng_page_descr* %133)
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 %136, 32
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %118
  %140 = load %struct.pg_cache_page_index*, %struct.pg_cache_page_index** %8, align 8
  store %struct.pg_cache_page_index* %140, %struct.pg_cache_page_index** %7, align 8
  br label %34

141:                                              ; preds = %34
  %142 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %143 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* @PJE0, align 4
  %146 = call i32 @JudyHSFreeArray(i32** %144, i32 %145)
  store i32 %146, i32* %4, align 4
  %147 = load %struct.page_cache*, %struct.page_cache** %3, align 8
  %148 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* null, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %157)
  ret void
}

declare dso_local i32 @JudyLFreeArray(i32**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.rrdeng_page_descr** @JudyLFirst(i32*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @freez(%struct.rrdeng_page_descr*) #1

declare dso_local i32 @rrdeng_destroy_pg_cache_descr(%struct.rrdengine_instance*, %struct.page_cache_descr*) #1

declare dso_local %struct.rrdeng_page_descr** @JudyLNext(i32*, i32*, i32) #1

declare dso_local i32 @JudyHSFreeArray(i32**, i32) #1

declare dso_local i32 @info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
