; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_DispatchJobForTocEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_DispatchJobForTocEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@NO_SLOT = common dso_local global i32 0, align 4
@WFW_ONE_IDLE = common dso_local global i32 0, align 4
@WRKR_WORKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DispatchJobForTocEntry(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [256 x i8], align 16
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  br label %15

15:                                               ; preds = %20, %6
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = call i32 @GetIdleWorker(%struct.TYPE_8__* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @NO_SLOT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = load i32, i32* @WFW_ONE_IDLE, align 4
  %24 = call i32 @WaitForWorkers(i32* %21, %struct.TYPE_8__* %22, i32 %23)
  br label %15

25:                                               ; preds = %15
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %30 = call i32 @buildWorkerCommand(i32* %26, i32* %27, i32 %28, i8* %29, i32 256)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = load i32, i32* %13, align 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %34 = call i32 @sendMessageToWorker(%struct.TYPE_8__* %31, i32 %32, i8* %33)
  %35 = load i32, i32* @WRKR_WORKING, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %35, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %43, i32* %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %51, i8** %58, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* %59, i32** %65, align 8
  ret void
}

declare dso_local i32 @GetIdleWorker(%struct.TYPE_8__*) #1

declare dso_local i32 @WaitForWorkers(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @buildWorkerCommand(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @sendMessageToWorker(%struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
