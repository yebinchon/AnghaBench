; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_wal_flush_transaction_buffer.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_wal_flush_transaction_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_worker_config = type { i32, %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.rrdengine_journalfile* }
%struct.rrdengine_journalfile = type { i32, i32 }
%struct.generic_io_descriptor = type { i32, i32, %struct.TYPE_10__, i32*, i32*, i32 }
%struct.TYPE_10__ = type { %struct.generic_io_descriptor* }

@STORE_PADDING = common dso_local global i32 0, align 4
@flush_transaction_buffer_cb = common dso_local global i32 0, align 4
@RRDENG_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wal_flush_transaction_buffer(%struct.rrdengine_worker_config* %0) #0 {
  %2 = alloca %struct.rrdengine_worker_config*, align 8
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.generic_io_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rrdengine_journalfile*, align 8
  store %struct.rrdengine_worker_config* %0, %struct.rrdengine_worker_config** %2, align 8
  %9 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %2, align 8
  %10 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %9, i32 0, i32 1
  %11 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %10, align 8
  store %struct.rrdengine_instance* %11, %struct.rrdengine_instance** %3, align 8
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %13 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* null, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %19 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 0, %21
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ true, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %135

29:                                               ; preds = %23
  %30 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %31 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %34, align 8
  store %struct.rrdengine_journalfile* %35, %struct.rrdengine_journalfile** %8, align 8
  %36 = call %struct.generic_io_descriptor* @mallocz(i32 40)
  store %struct.generic_io_descriptor* %36, %struct.generic_io_descriptor** %5, align 8
  %37 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %38 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  %41 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %42 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %29
  %49 = load i32, i32* @STORE_PADDING, align 4
  %50 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %51 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %49, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %29
  %58 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %59 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %63 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %66 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %8, align 8
  %68 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %71 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %73 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %74 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store %struct.generic_io_descriptor* %72, %struct.generic_io_descriptor** %75, align 8
  %76 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %77 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %79 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @uv_buf_init(i8* %81, i32 %82)
  %84 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %85 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %2, align 8
  %87 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %90 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %89, i32 0, i32 2
  %91 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %8, align 8
  %92 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.generic_io_descriptor*, %struct.generic_io_descriptor** %5, align 8
  %95 = getelementptr inbounds %struct.generic_io_descriptor, %struct.generic_io_descriptor* %94, i32 0, i32 1
  %96 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %8, align 8
  %97 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @flush_transaction_buffer_cb, align 4
  %100 = call i32 @uv_fs_write(i32 %88, %struct.TYPE_10__* %90, i32 %93, i32* %95, i32 1, i32 %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 -1, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i64, i64* @RRDENG_BLOCK_SIZE, align 8
  %106 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %8, align 8
  %107 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load i64, i64* @RRDENG_BLOCK_SIZE, align 8
  %113 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %114 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 8
  %119 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %120 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32* null, i32** %121, align 8
  %122 = load i64, i64* @RRDENG_BLOCK_SIZE, align 8
  %123 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %124 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %122
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  %130 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %131 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %57, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.generic_io_descriptor* @mallocz(i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_fs_write(i32, %struct.TYPE_10__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
