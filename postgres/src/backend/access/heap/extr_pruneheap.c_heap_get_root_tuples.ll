; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_get_root_tuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_get_root_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@MaxHeapTuplesPerPage = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_get_root_tuples(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @MemSet(i32* %11, i32 0, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @PageGetMaxOffsetNumber(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %121, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %124

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @PageGetItemId(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ItemIdIsUsed(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @ItemIdIsDead(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %24
  br label %121

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @ItemIdIsNormal(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @PageGetItem(i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %8, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = call i64 @HeapTupleHeaderIsHeapOnly(%struct.TYPE_7__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %121

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = call i32 @HeapTupleHeaderIsHotUpdated(%struct.TYPE_7__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %121

60:                                               ; preds = %49
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = call i32 @ItemPointerGetOffsetNumber(i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_7__* %64)
  store i32 %65, i32* %10, align 4
  br label %73

66:                                               ; preds = %36
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ItemIdIsRedirected(i32 %67)
  %69 = call i32 @Assert(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ItemIdGetRedirect(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %108, %73
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @PageGetItemId(i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @ItemIdIsNormal(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %120

82:                                               ; preds = %74
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @PageGetItem(i32 %83, i32 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @TransactionIdIsValid(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_7__* %92)
  %94 = call i32 @TransactionIdEquals(i32 %91, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %120

97:                                               ; preds = %90, %82
  %98 = load i32, i32* %5, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = call i32 @HeapTupleHeaderIsHotUpdated(%struct.TYPE_7__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  br label %120

108:                                              ; preds = %97
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = call i32 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_7__* %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = call i32 @ItemPointerGetOffsetNumber(i32* %116)
  store i32 %117, i32* %9, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_7__* %118)
  store i32 %119, i32* %10, align 4
  br label %74

120:                                              ; preds = %107, %96, %81
  br label %121

121:                                              ; preds = %120, %59, %48, %35
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @OffsetNumberNext(i32 %122)
  store i32 %123, i32* %5, align 4
  br label %20

124:                                              ; preds = %20
  ret void
}

declare dso_local i32 @MemSet(i32*, i32, i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i64 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @HeapTupleHeaderIsHeapOnly(%struct.TYPE_7__*) #1

declare dso_local i32 @HeapTupleHeaderIsHotUpdated(%struct.TYPE_7__*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_7__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemIdIsRedirected(i32) #1

declare dso_local i32 @ItemIdGetRedirect(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_7__*) #1

declare dso_local i32 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_7__*) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
