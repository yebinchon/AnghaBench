; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_finish_speculative.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_finish_speculative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"invalid lp\00", align 1
@MaxOffsetNumber = common dso_local global i64 0, align 8
@SpecTokenOffsetNumber = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid speculative token constant\00", align 1
@XLOG_INCLUDE_ORIGIN = common dso_local global i32 0, align 4
@SizeOfHeapConfirm = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HEAP_ID = common dso_local global i32 0, align 4
@XLOG_HEAP_CONFIRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_finish_speculative(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %8, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ItemPointerGetBlockNumber(i32* %13)
  %15 = call i32 @ReadBuffer(i32 %12, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %18 = call i32 @LockBuffer(i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @BufferGetPage(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @ItemPointerGetOffsetNumber(i32* %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @PageGetMaxOffsetNumber(i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32* @PageGetItemId(i64 %29, i64 %30)
  store i32* %31, i32** %8, align 8
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @PageGetMaxOffsetNumber(i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @ItemIdIsNormal(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @PageGetItem(i64 %45, i32* %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %9, align 8
  %49 = load i64, i64* @MaxOffsetNumber, align 8
  %50 = load i64, i64* @SpecTokenOffsetNumber, align 8
  %51 = icmp slt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @StaticAssertStmt(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 (...) @START_CRIT_SECTION()
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = call i32 @HeapTupleHeaderIsSpeculative(%struct.TYPE_5__* %55)
  %57 = call i32 @Assert(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @MarkBufferDirty(i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @RelationNeedsWAL(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %44
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @ItemPointerGetOffsetNumber(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = call i32 (...) @XLogBeginInsert()
  %72 = load i32, i32* @XLOG_INCLUDE_ORIGIN, align 4
  %73 = call i32 @XLogSetRecordFlags(i32 %72)
  %74 = bitcast %struct.TYPE_4__* %10 to i8*
  %75 = load i32, i32* @SizeOfHeapConfirm, align 4
  %76 = call i32 @XLogRegisterData(i8* %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @REGBUF_STANDARD, align 4
  %79 = call i32 @XLogRegisterBuffer(i32 0, i32 %77, i32 %78)
  %80 = load i32, i32* @RM_HEAP_ID, align 4
  %81 = load i32, i32* @XLOG_HEAP_CONFIRM, align 4
  %82 = call i32 @XLogInsert(i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @PageSetLSN(i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %67, %44
  %87 = call i32 (...) @END_CRIT_SECTION()
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @UnlockReleaseBuffer(i32 %88)
  ret void
}

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i8* @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32* @PageGetItemId(i64, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetItem(i64, i32*) #1

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HeapTupleHeaderIsSpeculative(%struct.TYPE_5__*) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogSetRecordFlags(i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
