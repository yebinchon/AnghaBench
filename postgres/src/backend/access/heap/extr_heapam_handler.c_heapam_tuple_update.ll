; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_tuple_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_tuple_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@TM_Ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32*, i32*, i32*)* @heapam_tuple_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heapam_tuple_update(i32 %0, i32 %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32 1, i32* %21, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %25 = call %struct.TYPE_10__* @ExecFetchSlotHeapTuple(%struct.TYPE_9__* %24, i32 1, i32* %21)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %22, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @RelationGetRelid(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32*, i32** %18, align 8
  %42 = load i32*, i32** %19, align 8
  %43 = call i64 @heap_update(i32 %35, i32 %36, %struct.TYPE_10__* %37, i32 %38, i32 %39, i32 %40, i32* %41, i32* %42)
  store i64 %43, i64* %23, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = call i32 @ItemPointerCopy(i32* %45, i32* %47)
  %49 = load i64, i64* %23, align 8
  %50 = load i64, i64* @TM_Ok, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %10
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %54 = call i32 @HeapTupleIsHeapOnly(%struct.TYPE_10__* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %10
  %58 = phi i1 [ false, %10 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %20, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %65 = call i32 @pfree(%struct.TYPE_10__* %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64, i64* %23, align 8
  ret i64 %67
}

declare dso_local %struct.TYPE_10__* @ExecFetchSlotHeapTuple(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @heap_update(i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #1

declare dso_local i32 @HeapTupleIsHeapOnly(%struct.TYPE_10__*) #1

declare dso_local i32 @pfree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
