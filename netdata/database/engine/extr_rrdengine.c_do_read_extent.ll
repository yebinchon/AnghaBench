; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_do_read_extent.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_do_read_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_worker_config = type { i32, %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.rrdeng_page_descr = type { %struct.page_cache_descr*, %struct.TYPE_4__* }
%struct.page_cache_descr = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.rrdengine_datafile* }
%struct.rrdengine_datafile = type { i32 }
%struct.extent_io_descriptor = type { i32, i32, i32, i32, %struct.TYPE_6__, i64, i32, i32*, %struct.rrdeng_page_descr** }
%struct.TYPE_6__ = type { %struct.extent_io_descriptor* }

@RRDFILE_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"posix_memalign:%s\00", align 1
@RRD_PAGE_READ_PENDING = common dso_local global i32 0, align 4
@read_extent_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrdengine_worker_config*, %struct.rrdeng_page_descr**, i32, i32)* @do_read_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_read_extent(%struct.rrdengine_worker_config* %0, %struct.rrdeng_page_descr** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rrdengine_worker_config*, align 8
  %6 = alloca %struct.rrdeng_page_descr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rrdengine_instance*, align 8
  %10 = alloca %struct.page_cache_descr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.extent_io_descriptor*, align 8
  %17 = alloca %struct.rrdengine_datafile*, align 8
  store %struct.rrdengine_worker_config* %0, %struct.rrdengine_worker_config** %5, align 8
  store %struct.rrdeng_page_descr** %1, %struct.rrdeng_page_descr*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %5, align 8
  %19 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %18, i32 0, i32 1
  %20 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %19, align 8
  store %struct.rrdengine_instance* %20, %struct.rrdengine_instance** %9, align 8
  %21 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %22 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %21, i64 0
  %23 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %22, align 8
  %24 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %26, align 8
  store %struct.rrdengine_datafile* %27, %struct.rrdengine_datafile** %17, align 8
  %28 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %29 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %28, i64 0
  %30 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %29, align 8
  %31 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %36 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %35, i64 0
  %37 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %36, align 8
  %38 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = call %struct.extent_io_descriptor* @mallocz(i32 56)
  store %struct.extent_io_descriptor* %42, %struct.extent_io_descriptor** %16, align 8
  %43 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %44 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %43, i32 0, i32 5
  %45 = bitcast i64* %44 to i8*
  %46 = load i32, i32* @RRDFILE_ALIGNMENT, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @ALIGN_BYTES_CEILING(i32 %47)
  %49 = call i32 @posix_memalign(i8* %45, i32 %46, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %100, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %58
  %63 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  %64 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %64, i64 %66
  %68 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %67, align 8
  %69 = call i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance* %63, %struct.rrdeng_page_descr* %68)
  %70 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %70, i64 %72
  %74 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %73, align 8
  %75 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %74, i32 0, i32 0
  %76 = load %struct.page_cache_descr*, %struct.page_cache_descr** %75, align 8
  store %struct.page_cache_descr* %76, %struct.page_cache_descr** %10, align 8
  %77 = load i32, i32* @RRD_PAGE_READ_PENDING, align 4
  %78 = load %struct.page_cache_descr*, %struct.page_cache_descr** %10, align 8
  %79 = getelementptr inbounds %struct.page_cache_descr, %struct.page_cache_descr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  %83 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %83, i64 %85
  %87 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %86, align 8
  %88 = call i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance* %82, %struct.rrdeng_page_descr* %87)
  %89 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %6, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %89, i64 %91
  %93 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %92, align 8
  %94 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %95 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %94, i32 0, i32 8
  %96 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %96, i64 %98
  store %struct.rrdeng_page_descr* %93, %struct.rrdeng_page_descr** %99, align 8
  br label %100

100:                                              ; preds = %62
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %58

103:                                              ; preds = %58
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %106 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %109 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %112 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %114 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %115 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store %struct.extent_io_descriptor* %113, %struct.extent_io_descriptor** %116, align 8
  %117 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %118 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %117, i32 0, i32 7
  store i32* null, i32** %118, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %121 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @ALIGN_BYTES_CEILING(i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %125 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @uv_buf_init(i8* %127, i32 %128)
  %130 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %131 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %5, align 8
  %133 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %136 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %135, i32 0, i32 4
  %137 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %17, align 8
  %138 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.extent_io_descriptor*, %struct.extent_io_descriptor** %16, align 8
  %141 = getelementptr inbounds %struct.extent_io_descriptor, %struct.extent_io_descriptor* %140, i32 0, i32 3
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @read_extent_cb, align 4
  %144 = call i32 @uv_fs_read(i32 %134, %struct.TYPE_6__* %136, i32 %139, i32* %141, i32 1, i32 %142, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 -1, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  %151 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add i32 %153, %149
  store i32 %154, i32* %152, align 4
  %155 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  %156 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  %162 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, %160
  store i32 %165, i32* %163, align 4
  %166 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  %167 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %9, align 8
  %173 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %175, %171
  store i32 %176, i32* %174, align 4
  ret void
}

declare dso_local %struct.extent_io_descriptor* @mallocz(i32) #1

declare dso_local i32 @posix_memalign(i8*, i32, i32) #1

declare dso_local i32 @ALIGN_BYTES_CEILING(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @rrdeng_page_descr_mutex_lock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @rrdeng_page_descr_mutex_unlock(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_fs_read(i32, %struct.TYPE_6__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
