; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginInsertValue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginInsertValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@InvalidBlockNumber = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@GIN_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ginInsertValue(i32 %0, %struct.TYPE_6__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BufferGetPage(i32 %12)
  %14 = call i64 @GinPageIsIncompleteSplit(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @ginFinishSplit(i32 %17, %struct.TYPE_6__* %18, i32 0, i32* %19)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @InvalidBlockNumber, align 4
  %26 = load i32, i32* @InvalidBuffer, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ginPlaceToPage(i32 %22, %struct.TYPE_6__* %23, i8* %24, i32 %25, i32 %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GIN_UNLOCK, align 4
  %36 = call i32 @LockBuffer(i32 %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = call i32 @freeGinBtreeStack(%struct.TYPE_6__* %37)
  br label %44

39:                                               ; preds = %21
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @ginFinishSplit(i32 %40, %struct.TYPE_6__* %41, i32 1, i32* %42)
  br label %44

44:                                               ; preds = %39, %31
  ret void
}

declare dso_local i64 @GinPageIsIncompleteSplit(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @ginFinishSplit(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @ginPlaceToPage(i32, %struct.TYPE_6__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @freeGinBtreeStack(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
