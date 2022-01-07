; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_get_latest_tid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_get_latest_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_get_latest_tid(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ItemPointerIsValid(i32* %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %131, %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ItemPointerGetBlockNumber(i32* %7)
  %30 = call i32 @ReadBuffer(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %33 = call i32 @LockBuffer(i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @BufferGetPage(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @TestForOldSnapshot(i32 %36, i32 %37, i32 %38)
  %40 = call i64 @ItemPointerGetOffsetNumber(i32* %7)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @FirstOffsetNumber, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %27
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @PageGetMaxOffsetNumber(i32 %46)
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %27
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @UnlockReleaseBuffer(i32 %50)
  br label %141

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @PageGetItemId(i32 %53, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @ItemIdIsNormal(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @UnlockReleaseBuffer(i32 %60)
  br label %141

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @PageGetItem(i32 %65, i32 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_12__*
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @ItemIdGetLength(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @RelationGetRelid(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @TransactionIdIsValid(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %62
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_12__* %82)
  %84 = call i32 @TransactionIdEquals(i32 %80, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @UnlockReleaseBuffer(i32 %87)
  br label %141

89:                                               ; preds = %79, %62
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_13__* %13, i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @CheckForSerializableConflictOut(i32 %93, i32 %94, %struct.TYPE_13__* %13, i32 %95, i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %4, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %89
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = call i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_12__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = call i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_12__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = call i64 @ItemPointerEquals(i32* %122, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121, %116, %111, %103
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @UnlockReleaseBuffer(i32 %129)
  br label %141

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %7, align 4
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_12__* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @UnlockReleaseBuffer(i32 %139)
  br label %27

141:                                              ; preds = %128, %86, %59, %49
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_12__*) #1

declare dso_local i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @CheckForSerializableConflictOut(i32, i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_12__*) #1

declare dso_local i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_12__*) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
