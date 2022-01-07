; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_lock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@XLH_LOCK_ALL_FROZEN_CLEARED = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@VISIBILITYMAP_ALL_FROZEN = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"invalid lp\00", align 1
@HEAP_XMAX_BITS = common dso_local global i32 0, align 4
@HEAP_MOVED = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@FirstCommandId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @heap_xlog_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_xlog_lock(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = call i64 @XLogRecGetData(%struct.TYPE_12__* %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %4, align 8
  store i32* null, i32** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XLH_LOCK_ALL_FROZEN_CLEARED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %1
  %27 = load i32, i32* @InvalidBuffer, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = call i32 @XLogRecGetBlockTag(%struct.TYPE_12__* %28, i32 0, i32* %10, i32* null, i32* %12)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @CreateFakeRelcacheEntry(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @visibilitymap_pin(i32 %32, i32 %33, i32* %11)
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @VISIBILITYMAP_ALL_FROZEN, align 4
  %39 = call i32 @visibilitymap_clear(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ReleaseBuffer(i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @FreeFakeRelcacheEntry(i32 %42)
  br label %44

44:                                               ; preds = %26, %1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = call i64 @XLogReadBufferForRedo(%struct.TYPE_12__* %45, i32 0, i32* %5)
  %47 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %130

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @BufferGetPage(i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @PageGetMaxOffsetNumber(i64 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32* @PageGetItemId(i64 %60, i32 %61)
  store i32* %62, i32** %8, align 8
  br label %63

63:                                               ; preds = %59, %49
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @PageGetMaxOffsetNumber(i64 %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @ItemIdIsNormal(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* @PANIC, align 4
  %74 = call i32 @elog(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i64, i64* %6, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i64 @PageGetItem(i64 %76, i32* %77)
  %79 = inttoptr i64 %78 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %9, align 8
  %80 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %81 = load i32, i32* @HEAP_MOVED, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = call i32 @fix_infomask_from_infobits(i32 %96, i32* %98, i32* %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %75
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = call i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_13__* %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @BufferGetBlockNumber(i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ItemPointerSet(i32* %111, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %75
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_13__* %117, i32 %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = load i32, i32* @FirstCommandId, align 4
  %124 = call i32 @HeapTupleHeaderSetCmax(%struct.TYPE_13__* %122, i32 %123, i32 0)
  %125 = load i64, i64* %6, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @PageSetLSN(i64 %125, i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @MarkBufferDirty(i32 %128)
  br label %130

130:                                              ; preds = %116, %44
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @BufferIsValid(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @UnlockReleaseBuffer(i32 %135)
  br label %137

137:                                              ; preds = %134, %130
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_12__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CreateFakeRelcacheEntry(i32) #1

declare dso_local i32 @visibilitymap_pin(i32, i32, i32*) #1

declare dso_local i32 @visibilitymap_clear(i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @FreeFakeRelcacheEntry(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32* @PageGetItemId(i64, i32) #1

declare dso_local i32 @ItemIdIsNormal(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetItem(i64, i32*) #1

declare dso_local i32 @fix_infomask_from_infobits(i32, i32*, i32*) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_13__*) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetCmax(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
