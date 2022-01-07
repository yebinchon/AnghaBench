; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_index_fetch_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_index_fetch_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexFetchTableData = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IndexFetchTableData*, i32*, i32, %struct.TYPE_13__*, i32*, i32*)* @heapam_index_fetch_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heapam_index_fetch_tuple(%struct.IndexFetchTableData* %0, i32* %1, i32 %2, %struct.TYPE_13__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.IndexFetchTableData*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.IndexFetchTableData* %0, %struct.IndexFetchTableData** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.IndexFetchTableData*, %struct.IndexFetchTableData** %7, align 8
  %18 = bitcast %struct.IndexFetchTableData* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %13, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = bitcast %struct.TYPE_13__* %19 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %14, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %22 = call i32 @TTS_IS_BUFFERTUPLE(%struct.TYPE_13__* %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %6
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %16, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @ItemPointerGetBlockNumber(i32* %38)
  %40 = call i64 @ReleaseAndReadBuffer(i64 %33, i32 %37, i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %27
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @heap_page_prune_opt(i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %48, %27
  br label %58

58:                                               ; preds = %57, %6
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %63 = call i32 @LockBuffer(i64 %61, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @heap_hot_search_buffer(i32* %64, i32 %68, i64 %71, i32 %72, %struct.TYPE_16__* %75, i32* %76, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %93 = call i32 @LockBuffer(i64 %91, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %58
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @IsMVCCSnapshot(i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.IndexFetchTableData*, %struct.IndexFetchTableData** %7, align 8
  %104 = getelementptr inbounds %struct.IndexFetchTableData, %struct.IndexFetchTableData* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @RelationGetRelid(i32 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @ExecStoreBufferHeapTuple(%struct.TYPE_16__* %111, %struct.TYPE_13__* %112, i64 %115)
  br label %119

117:                                              ; preds = %58
  %118 = load i32*, i32** %11, align 8
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %117, %96
  %120 = load i32, i32* %15, align 4
  ret i32 %120
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TTS_IS_BUFFERTUPLE(%struct.TYPE_13__*) #1

declare dso_local i64 @ReleaseAndReadBuffer(i64, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @heap_page_prune_opt(i32, i64) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @heap_hot_search_buffer(i32*, i32, i64, i32, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @IsMVCCSnapshot(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @ExecStoreBufferHeapTuple(%struct.TYPE_16__*, %struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
