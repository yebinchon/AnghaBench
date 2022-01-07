; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_HeapTupleHeaderAdvanceLatestRemovedXid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_HeapTupleHeaderAdvanceLatestRemovedXid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@HEAP_MOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HeapTupleHeaderAdvanceLatestRemovedXid(%struct.TYPE_8__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i64 @HeapTupleHeaderGetXmin(%struct.TYPE_8__* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = call i64 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_8__* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call i64 @HeapTupleHeaderGetXvac(%struct.TYPE_8__* %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HEAP_MOVED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @TransactionIdPrecedes(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %4, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i64 @HeapTupleHeaderXminCommitted(%struct.TYPE_8__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @HeapTupleHeaderXminInvalid(%struct.TYPE_8__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @TransactionIdDidCommit(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38, %30
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @TransactionIdFollows(i64 %47, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = load i64*, i64** %4, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %46, %42
  br label %56

56:                                               ; preds = %55, %38, %34
  ret void
}

declare dso_local i64 @HeapTupleHeaderGetXmin(%struct.TYPE_8__*) #1

declare dso_local i64 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_8__*) #1

declare dso_local i64 @HeapTupleHeaderGetXvac(%struct.TYPE_8__*) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i64 @HeapTupleHeaderXminCommitted(%struct.TYPE_8__*) #1

declare dso_local i32 @HeapTupleHeaderXminInvalid(%struct.TYPE_8__*) #1

declare dso_local i64 @TransactionIdDidCommit(i64) #1

declare dso_local i64 @TransactionIdFollows(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
