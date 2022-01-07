; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_RelationPutHeapTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_RelationPutHeapTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to add tuple to page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationPutHeapTuple(i32 %0, i32 %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @HeapTupleHeaderIsSpeculative(i64 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %4
  %22 = phi i1 [ true, %4 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @BufferGetPage(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @InvalidOffsetNumber, align 8
  %36 = call i64 @PageAddItem(i32 %27, i32 %31, i32 %34, i64 %35, i32 0, i32 1)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @InvalidOffsetNumber, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @PANIC, align 4
  %42 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %21
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @BufferGetBlockNumber(i32 %46)
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @ItemPointerSet(i32* %45, i32 %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @PageGetItemId(i32 %53, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @PageGetItem(i32 %56, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %12, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %52, %43
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @HeapTupleHeaderIsSpeculative(i64) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i64) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
