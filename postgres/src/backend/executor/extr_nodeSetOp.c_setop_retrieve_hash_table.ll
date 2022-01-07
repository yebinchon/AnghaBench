; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSetOp.c_setop_retrieve_hash_table.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSetOp.c_setop_retrieve_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*)* @setop_retrieve_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setop_retrieve_hash_table(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %50, %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = call %struct.TYPE_8__* @ScanTupleHashTable(i32 %20, i32* %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = icmp eq %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i32* null, i32** %2, align 8
  br label %54

29:                                               ; preds = %16
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @set_output_count(%struct.TYPE_9__* %30, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @ExecStoreMinimalTuple(i32 %47, i32* %48, i32 0)
  store i32* %49, i32** %2, align 8
  br label %54

50:                                               ; preds = %29
  br label %10

51:                                               ; preds = %10
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @ExecClearTuple(i32* %52)
  store i32* null, i32** %2, align 8
  br label %54

54:                                               ; preds = %51, %40, %26
  %55 = load i32*, i32** %2, align 8
  ret i32* %55
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local %struct.TYPE_8__* @ScanTupleHashTable(i32, i32*) #1

declare dso_local i32 @set_output_count(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @ExecStoreMinimalTuple(i32, i32*, i32) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
