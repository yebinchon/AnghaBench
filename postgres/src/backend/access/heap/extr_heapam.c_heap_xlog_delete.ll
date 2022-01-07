; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@XLH_DELETE_ALL_VISIBLE_CLEARED = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@VISIBILITYMAP_VALID_BITS = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"invalid lp\00", align 1
@HEAP_XMAX_BITS = common dso_local global i32 0, align 4
@HEAP_MOVED = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@XLH_DELETE_IS_SUPER = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@FirstCommandId = common dso_local global i32 0, align 4
@XLH_DELETE_IS_PARTITION_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @heap_xlog_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_xlog_delete(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = call i64 @XLogRecGetData(%struct.TYPE_15__* %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %4, align 8
  store i32* null, i32** %7, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = call i32 @XLogRecGetBlockTag(%struct.TYPE_15__* %20, i32 0, i32* %10, i32* null, i32* %9)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ItemPointerSetBlockNumber(i32* %11, i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ItemPointerSetOffsetNumber(i32* %11, i64 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @XLH_DELETE_ALL_VISIBLE_CLEARED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %1
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @CreateFakeRelcacheEntry(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @InvalidBuffer, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @visibilitymap_pin(i32 %38, i32 %39, i32* %13)
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @VISIBILITYMAP_VALID_BITS, align 4
  %45 = call i32 @visibilitymap_clear(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ReleaseBuffer(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @FreeFakeRelcacheEntry(i32 %48)
  br label %50

50:                                               ; preds = %34, %1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = call i64 @XLogReadBufferForRedo(%struct.TYPE_15__* %51, i32 0, i32* %5)
  %53 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %166

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @BufferGetPage(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @PageGetMaxOffsetNumber(i32 %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32* @PageGetItemId(i32 %65, i64 %68)
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @PageGetMaxOffsetNumber(i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @ItemIdIsNormal(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77, %70
  %82 = load i32, i32* @PANIC, align 4
  %83 = call i32 @elog(i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @PageGetItem(i32 %85, i32* %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %8, align 8
  %89 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %90 = load i32, i32* @HEAP_MOVED, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = call i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_16__* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = call i32 @fix_infomask_from_infobits(i32 %107, i32* %109, i32* %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @XLH_DELETE_IS_SUPER, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %84
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_16__* %120, i32 %123)
  br label %129

125:                                              ; preds = %84
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = load i32, i32* @InvalidTransactionId, align 4
  %128 = call i32 @HeapTupleHeaderSetXmin(%struct.TYPE_16__* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %119
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = load i32, i32* @FirstCommandId, align 4
  %132 = call i32 @HeapTupleHeaderSetCmax(%struct.TYPE_16__* %130, i32 %131, i32 0)
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %135 = call i32 @XLogRecGetXid(%struct.TYPE_15__* %134)
  %136 = call i32 @PageSetPrunable(i32 %133, i32 %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @XLH_DELETE_ALL_VISIBLE_CLEARED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @PageClearAllVisible(i32 %144)
  br label %146

146:                                              ; preds = %143, %129
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @XLH_DELETE_IS_PARTITION_MOVE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = call i32 @HeapTupleHeaderSetMovedPartitions(%struct.TYPE_16__* %154)
  br label %160

156:                                              ; preds = %146
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @PageSetLSN(i32 %161, i32 %162)
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @MarkBufferDirty(i32 %164)
  br label %166

166:                                              ; preds = %160, %50
  %167 = load i32, i32* %5, align 4
  %168 = call i64 @BufferIsValid(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @UnlockReleaseBuffer(i32 %171)
  br label %173

173:                                              ; preds = %170, %166
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_15__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_15__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ItemPointerSetBlockNumber(i32*, i32) #1

declare dso_local i32 @ItemPointerSetOffsetNumber(i32*, i64) #1

declare dso_local i32 @CreateFakeRelcacheEntry(i32) #1

declare dso_local i32 @visibilitymap_pin(i32, i32, i32*) #1

declare dso_local i32 @visibilitymap_clear(i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @FreeFakeRelcacheEntry(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32* @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetItem(i32, i32*) #1

declare dso_local i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_16__*) #1

declare dso_local i32 @fix_infomask_from_infobits(i32, i32*, i32*) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmin(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetCmax(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @PageSetPrunable(i32, i32) #1

declare dso_local i32 @XLogRecGetXid(%struct.TYPE_15__*) #1

declare dso_local i32 @PageClearAllVisible(i32) #1

declare dso_local i32 @HeapTupleHeaderSetMovedPartitions(%struct.TYPE_16__*) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
