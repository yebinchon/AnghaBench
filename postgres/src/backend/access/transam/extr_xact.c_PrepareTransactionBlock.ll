; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PrepareTransactionBlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_PrepareTransactionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@TBLOCK_END = common dso_local global i64 0, align 8
@TopTransactionContext = common dso_local global i32 0, align 4
@prepareGID = common dso_local global i32 0, align 4
@TBLOCK_PREPARE = common dso_local global i64 0, align 8
@TBLOCK_STARTED = common dso_local global i64 0, align 8
@TBLOCK_IMPLICIT_INPROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrepareTransactionBlock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @EndTransactionBlock(i32 0)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  br label %10

10:                                               ; preds = %15, %8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %3, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TBLOCK_END, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @TopTransactionContext, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @MemoryContextStrdup(i32 %26, i8* %27)
  store i32 %28, i32* @prepareGID, align 4
  %29 = load i64, i64* @TBLOCK_PREPARE, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %48

32:                                               ; preds = %19
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TBLOCK_STARTED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TBLOCK_IMPLICIT_INPROGRESS, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ true, %32 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %25
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @EndTransactionBlock(i32) #1

declare dso_local i32 @MemoryContextStrdup(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
