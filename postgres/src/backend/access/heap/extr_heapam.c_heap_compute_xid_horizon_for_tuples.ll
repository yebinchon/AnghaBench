; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_compute_xid_horizon_for_tuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_compute_xid_horizon_for_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@ItemPointerCompare = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@MAX_IO_CONCURRENCY = common dso_local global i32 0, align 4
@effective_io_concurrency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_compute_xid_horizon_for_tuples(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @InvalidBuffer, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* @ItemPointerCompare, align 8
  %22 = inttoptr i64 %21 to i32 (i8*, i8*)*
  %23 = call i32 @qsort(i8* %19, i32 %20, i32 4, i32 (i8*, i8*)* %22)
  %24 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %24, i64* %8, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %104, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %107

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %12, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @InvalidBlockNumber, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load i32*, i32** %12, align 8
  %39 = call i64 @ItemPointerGetBlockNumber(i32* %38)
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @BufferIsValid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %49 = call i32 @LockBuffer(i32 %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ReleaseBuffer(i32 %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i32*, i32** %12, align 8
  %54 = call i64 @ItemPointerGetBlockNumber(i32* %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @ReadBuffer(%struct.TYPE_11__* %55, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32* @BufferGetPage(i32 %58)
  store i32* %59, i32** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %62 = call i32 @LockBuffer(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %37
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @ItemPointerGetOffsetNumber(i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @PageGetItemId(i32* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %73, %63
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @ItemIdIsRedirected(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @ItemIdGetRedirect(i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @PageGetItemId(i32* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %69

80:                                               ; preds = %69
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @ItemIdHasStorage(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @PageGetItem(i32* %85, i32 %86)
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @HeapTupleHeaderAdvanceLatestRemovedXid(i64 %88, i32* %7)
  br label %103

90:                                               ; preds = %80
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @ItemIdIsDead(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %102

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @ItemIdIsUsed(i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  br label %102

102:                                              ; preds = %95, %94
  br label %103

103:                                              ; preds = %102, %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %25

107:                                              ; preds = %25
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @BufferIsValid(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %114 = call i32 @LockBuffer(i32 %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @ReleaseBuffer(i32 %115)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @ReadBuffer(%struct.TYPE_11__*, i64) #1

declare dso_local i32* @BufferGetPage(i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @PageGetItemId(i32*, i32) #1

declare dso_local i64 @ItemIdIsRedirected(i32) #1

declare dso_local i32 @ItemIdGetRedirect(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @ItemIdHasStorage(i32) #1

declare dso_local i64 @PageGetItem(i32*, i32) #1

declare dso_local i32 @HeapTupleHeaderAdvanceLatestRemovedXid(i64, i32*) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
