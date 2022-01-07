; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_abort_speculative.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_abort_speculative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }

@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"attempted to kill a tuple inserted by another transaction\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"attempted to kill a non-speculative tuple\00", align 1
@RecentGlobalXmin = common dso_local global i32 0, align 4
@HEAP_XMAX_BITS = common dso_local global i32 0, align 4
@HEAP_MOVED = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@XLH_DELETE_IS_SUPER = common dso_local global i32 0, align 4
@SizeOfHeapDelete = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HEAP_ID = common dso_local global i32 0, align 4
@XLOG_HEAP_DELETE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_abort_speculative(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %13 = call i64 (...) @GetCurrentTransactionId()
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ItemPointerIsValid(i32* %14)
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ItemPointerGetBlockNumber(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ReadBuffer(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @BufferGetPage(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %26 = call i32 @LockBuffer(i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @PageIsAllVisible(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ItemPointerGetOffsetNumber(i32* %34)
  %36 = call i32 @PageGetItemId(i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ItemIdIsNormal(i32 %37)
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @RelationGetRelid(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @PageGetItem(i32 %43, i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_14__*
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ItemIdGetLength(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %2
  %63 = load i32, i32* @ERROR, align 4
  %64 = call i32 @elog(i32 %63, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %2
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @IsToastRelation(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = call i64 @HeapTupleHeaderIsSpeculative(%struct.TYPE_14__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ERROR, align 4
  %76 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69, %65
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = call i32 @HeapTupleHeaderIsHeapOnly(%struct.TYPE_14__* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @Assert(i32 %83)
  %85 = call i32 (...) @START_CRIT_SECTION()
  %86 = load i32, i32* @RecentGlobalXmin, align 4
  %87 = call i32 @TransactionIdIsValid(i32 %86)
  %88 = call i32 @Assert(i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @RecentGlobalXmin, align 4
  %91 = call i32 @PageSetPrunable(i32 %89, i32 %90)
  %92 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %93 = load i32, i32* @HEAP_MOVED, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %102 = xor i32 %101, -1
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = load i32, i32* @InvalidTransactionId, align 4
  %111 = call i32 @HeapTupleHeaderSetXmin(%struct.TYPE_14__* %109, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @MarkBufferDirty(i32 %117)
  %119 = load i32, i32* %3, align 4
  %120 = call i64 @RelationNeedsWAL(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %153

122:                                              ; preds = %77
  %123 = load i32, i32* @XLH_DELETE_IS_SUPER, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @compute_infobits(i32 %128, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i32 %133, i32* %134, align 4
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %136 = call i32 @ItemPointerGetOffsetNumber(i32* %135)
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i32 %136, i32* %137, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = call i32 (...) @XLogBeginInsert()
  %141 = bitcast %struct.TYPE_13__* %11 to i8*
  %142 = load i32, i32* @SizeOfHeapDelete, align 4
  %143 = call i32 @XLogRegisterData(i8* %141, i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @REGBUF_STANDARD, align 4
  %146 = call i32 @XLogRegisterBuffer(i32 0, i32 %144, i32 %145)
  %147 = load i32, i32* @RM_HEAP_ID, align 4
  %148 = load i32, i32* @XLOG_HEAP_DELETE, align 4
  %149 = call i32 @XLogInsert(i32 %147, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @PageSetLSN(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %122, %77
  %154 = call i32 (...) @END_CRIT_SECTION()
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %157 = call i32 @LockBuffer(i32 %155, i32 %156)
  %158 = call i64 @HeapTupleHasExternal(%struct.TYPE_15__* %7)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load i32, i32* %3, align 4
  %162 = call i64 @IsToastRelation(i32 %161)
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @Assert(i32 %165)
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @heap_toast_delete(i32 %167, %struct.TYPE_15__* %7, i32 1)
  br label %169

169:                                              ; preds = %160, %153
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @ReleaseBuffer(i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @pgstat_count_heap_delete(i32 %172)
  ret void
}

declare dso_local i64 @GetCurrentTransactionId(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @PageIsAllVisible(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @IsToastRelation(i32) #1

declare dso_local i64 @HeapTupleHeaderIsSpeculative(%struct.TYPE_14__*) #1

declare dso_local i32 @HeapTupleHeaderIsHeapOnly(%struct.TYPE_14__*) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @PageSetPrunable(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmin(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @compute_infobits(i32, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i64 @HeapTupleHasExternal(%struct.TYPE_15__*) #1

declare dso_local i32 @heap_toast_delete(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @pgstat_count_heap_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
