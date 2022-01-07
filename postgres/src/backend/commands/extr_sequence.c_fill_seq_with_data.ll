; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_fill_seq_with_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_fill_seq_with_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@P_NEW = common dso_local global i32 0, align 4
@SEQ_MAGIC = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@FrozenTransactionId = common dso_local global i32 0, align 4
@FirstCommandId = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to add sequence tuple to page\00", align 1
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_SEQ_ID = common dso_local global i32 0, align 4
@XLOG_SEQ_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*)* @fill_seq_with_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_seq_with_data(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = load i32, i32* @P_NEW, align 4
  %13 = call i32 @ReadBuffer(%struct.TYPE_15__* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @BufferGetBlockNumber(i32 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BufferGetPage(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @BufferGetPageSize(i32 %22)
  %24 = call i32 @PageInit(i32 %21, i32 %23, i32 4)
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @PageGetSpecialPointer(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %7, align 8
  %28 = load i32, i32* @SEQ_MAGIC, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %33 = call i32 @LockBuffer(i32 %31, i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = load i32, i32* @FrozenTransactionId, align 4
  %38 = call i32 @HeapTupleHeaderSetXmin(%struct.TYPE_17__* %36, i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = call i32 @HeapTupleHeaderSetXminFrozen(%struct.TYPE_17__* %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = load i32, i32* @FirstCommandId, align 4
  %47 = call i32 @HeapTupleHeaderSetCmin(%struct.TYPE_17__* %45, i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = load i32, i32* @InvalidTransactionId, align 4
  %52 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_17__* %50, i32 %51)
  %53 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* @FirstOffsetNumber, align 8
  %65 = call i32 @ItemPointerSet(i32* %63, i32 0, i64 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call i64 @RelationNeedsWAL(%struct.TYPE_15__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %2
  %70 = call i32 (...) @GetTopTransactionId()
  br label %71

71:                                               ; preds = %69, %2
  %72 = call i32 (...) @START_CRIT_SECTION()
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @MarkBufferDirty(i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = ptrtoint %struct.TYPE_17__* %78 to i32
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @InvalidOffsetNumber, align 4
  %84 = call i64 @PageAddItem(i32 %75, i32 %79, i32 %82, i32 %83, i32 0, i32 0)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @FirstOffsetNumber, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load i32, i32* @ERROR, align 4
  %90 = call i32 @elog(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %71
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = call i64 @RelationNeedsWAL(%struct.TYPE_15__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = call i32 (...) @XLogBeginInsert()
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %99 = call i32 @XLogRegisterBuffer(i32 0, i32 %97, i32 %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = bitcast %struct.TYPE_13__* %9 to i8*
  %105 = call i32 @XLogRegisterData(i8* %104, i32 4)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = bitcast %struct.TYPE_17__* %108 to i8*
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @XLogRegisterData(i8* %109, i32 %112)
  %114 = load i32, i32* @RM_SEQ_ID, align 4
  %115 = load i32, i32* @XLOG_SEQ_LOG, align 4
  %116 = call i32 @XLogInsert(i32 %114, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @PageSetLSN(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %95, %91
  %121 = call i32 (...) @END_CRIT_SECTION()
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @UnlockReleaseBuffer(i32 %122)
  ret void
}

declare dso_local i32 @ReadBuffer(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageInit(i32, i32, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmin(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXminFrozen(%struct.TYPE_17__*) #1

declare dso_local i32 @HeapTupleHeaderSetCmin(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i64) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_15__*) #1

declare dso_local i32 @GetTopTransactionId(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
