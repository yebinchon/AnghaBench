; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdenginelib.c_get_rrdeng_statistics.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdenginelib.c_get_rrdeng_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_4__, %struct.page_cache }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.page_cache = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [875 x i8] c"metric_API_producers: %ld\0Ametric_API_consumers: %ld\0Apage_cache_total_pages: %ld\0Apage_cache_descriptors: %ld\0Apage_cache_populated_pages: %ld\0Apage_cache_committed_pages: %ld\0Apage_cache_insertions: %ld\0Apage_cache_deletions: %ld\0Apage_cache_hits: %ld\0Apage_cache_misses: %ld\0Apage_cache_backfills: %ld\0Apage_cache_evictions: %ld\0Acompress_before_bytes: %ld\0Acompress_after_bytes: %ld\0Adecompress_before_bytes: %ld\0Adecompress_after_bytes: %ld\0Aio_write_bytes: %ld\0Aio_write_requests: %ld\0Aio_read_bytes: %ld\0Aio_read_requests: %ld\0Aio_write_extent_bytes: %ld\0Aio_write_extents: %ld\0Aio_read_extent_bytes: %ld\0Aio_read_extents: %ld\0Adatafile_creations: %ld\0Adatafile_deletions: %ld\0Ajournalfile_creations: %ld\0Ajournalfile_deletions: %ld\0Aio_errors: %ld\0Afs_errors: %ld\0Aglobal_io_errors: %ld\0Aglobal_fs_errors: %ld\0Arrdeng_reserved_file_descriptors: %ld\0Aflushing_errors: %ld\0Aglobal_flushing_errors: %ld\0A\00", align 1
@global_io_errors = common dso_local global i64 0, align 8
@global_fs_errors = common dso_local global i64 0, align 8
@rrdeng_reserved_file_descriptors = common dso_local global i64 0, align 8
@global_flushing_errors = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_rrdeng_statistics(%struct.rrdengine_instance* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rrdengine_instance*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page_cache*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %9 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %8, i32 0, i32 1
  store %struct.page_cache* %9, %struct.page_cache** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %13 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 27
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %17 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 26
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %21 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %24 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 25
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %28 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.page_cache*, %struct.page_cache** %7, align 8
  %31 = getelementptr inbounds %struct.page_cache, %struct.page_cache* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %35 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 24
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %39 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 23
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %43 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 22
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %47 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 21
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %51 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 20
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %55 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 19
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %59 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 18
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %63 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 17
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %67 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 16
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %71 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 15
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %75 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 14
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %79 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 13
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %83 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %87 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 11
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %91 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 10
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %95 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %99 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %103 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %107 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %111 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %115 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %119 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %123 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %127 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @global_io_errors, align 8
  %131 = load i64, i64* @global_fs_errors, align 8
  %132 = load i64, i64* @rrdeng_reserved_file_descriptors, align 8
  %133 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %4, align 8
  %134 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @global_flushing_errors, align 8
  %138 = call i32 @snprintfz(i8* %10, i64 %11, i8* getelementptr inbounds ([875 x i8], [875 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %19, i64 %22, i64 %26, i64 %29, i64 %33, i64 %37, i64 %41, i64 %45, i64 %49, i64 %53, i64 %57, i64 %61, i64 %65, i64 %69, i64 %73, i64 %77, i64 %81, i64 %85, i64 %89, i64 %93, i64 %97, i64 %101, i64 %105, i64 %109, i64 %113, i64 %117, i64 %121, i64 %125, i64 %129, i64 %130, i64 %131, i64 %132, i64 %136, i64 %137)
  %139 = load i8*, i8** %5, align 8
  ret i8* %139
}

declare dso_local i32 @snprintfz(i8*, i64, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
