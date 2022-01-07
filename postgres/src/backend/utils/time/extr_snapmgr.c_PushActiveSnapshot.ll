; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_PushActiveSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_PushActiveSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i8* }

@InvalidSnapshot = common dso_local global %struct.TYPE_10__* null, align 8
@TopTransactionContext = common dso_local global i32 0, align 4
@CurrentSnapshot = common dso_local global %struct.TYPE_10__* null, align 8
@SecondarySnapshot = common dso_local global %struct.TYPE_10__* null, align 8
@ActiveSnapshot = common dso_local global i8* null, align 8
@OldestActiveSnapshot = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PushActiveSnapshot(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @InvalidSnapshot, align 8
  %6 = icmp ne %struct.TYPE_10__* %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load i32, i32* @TopTransactionContext, align 4
  %10 = call %struct.TYPE_11__* @MemoryContextAlloc(i32 %9, i32 24)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CurrentSnapshot, align 8
  %13 = icmp eq %struct.TYPE_10__* %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SecondarySnapshot, align 8
  %17 = icmp eq %struct.TYPE_10__* %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %14, %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = call %struct.TYPE_10__* @CopySnapshot(%struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %27, align 8
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i8*, i8** @ActiveSnapshot, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = call i32 (...) @GetCurrentTransactionNestLevel()
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = bitcast %struct.TYPE_11__* %45 to i8*
  store i8* %46, i8** @ActiveSnapshot, align 8
  %47 = load i32*, i32** @OldestActiveSnapshot, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i8*, i8** @ActiveSnapshot, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** @OldestActiveSnapshot, align 8
  br label %52

52:                                               ; preds = %49, %32
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_11__* @MemoryContextAlloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @CopySnapshot(%struct.TYPE_10__*) #1

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
