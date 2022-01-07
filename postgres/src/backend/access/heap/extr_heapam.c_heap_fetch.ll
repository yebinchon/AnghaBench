; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_fetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_fetch(i32 %0, i32 %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @ItemPointerGetBlockNumber(i32* %19)
  %21 = call i32 @ReadBuffer(i32 %18, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %24 = call i32 @LockBuffer(i32 %22, i32 %23)
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @BufferGetPage(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @TestForOldSnapshot(i32 %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @ItemPointerGetOffsetNumber(i32* %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @FirstOffsetNumber, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %4
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @PageGetMaxOffsetNumber(i32 %38)
  %40 = icmp sgt i64 %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %44 = call i32 @LockBuffer(i32 %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @ReleaseBuffer(i32 %45)
  %47 = load i32, i32* @InvalidBuffer, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  store i32 0, i32* %5, align 4
  br label %114

51:                                               ; preds = %36
  %52 = load i32, i32* %13, align 4
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @PageGetItemId(i32 %52, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ItemIdIsNormal(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %61 = call i32 @LockBuffer(i32 %59, i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ReleaseBuffer(i32 %62)
  %64 = load i32, i32* @InvalidBuffer, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  store i32 0, i32* %5, align 4
  br label %114

68:                                               ; preds = %51
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @PageGetItem(i32 %69, i32 %70)
  %72 = inttoptr i64 %71 to i32*
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ItemIdGetLength(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @RelationGetRelid(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_6__* %83, i32 %84, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %68
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @PredicateLockTuple(i32 %90, %struct.TYPE_6__* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %68
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @CheckForSerializableConflictOut(i32 %95, i32 %96, %struct.TYPE_6__* %97, i32 %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %103 = call i32 @LockBuffer(i32 %101, i32 %102)
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load i32, i32* %12, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  store i32 1, i32* %5, align 4
  br label %114

109:                                              ; preds = %94
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @ReleaseBuffer(i32 %110)
  %112 = load i32, i32* @InvalidBuffer, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %109, %106, %58, %41
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @PredicateLockTuple(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @CheckForSerializableConflictOut(i32, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
