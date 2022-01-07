; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_WaitForCommands.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_WaitForCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)* }

@ACT_DUMP = common dso_local global i64 0, align 8
@ACT_RESTORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*)* @WaitForCommands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WaitForCommands(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @getMessageFromMaster(i32* %11)
  store i8* %12, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  ret void

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @parseWorkerCommand(%struct.TYPE_8__* %16, i32** %6, i64* %7, i8* %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ACT_DUMP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @lockTableForWorker(%struct.TYPE_8__* %23, i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 %28(%struct.TYPE_8__* %29, i32* %30)
  store i32 %31, i32* %8, align 4
  br label %46

32:                                               ; preds = %15
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @ACT_RESTORE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 %39(%struct.TYPE_8__* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %32
  %44 = call i32 @Assert(i32 0)
  br label %45

45:                                               ; preds = %43, %36
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %52 = call i32 @buildWorkerResponse(%struct.TYPE_8__* %47, i32* %48, i64 %49, i32 %50, i8* %51, i32 256)
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %55 = call i32 @sendMessageToMaster(i32* %53, i8* %54)
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @free(i8* %56)
  br label %10
}

declare dso_local i8* @getMessageFromMaster(i32*) #1

declare dso_local i32 @parseWorkerCommand(%struct.TYPE_8__*, i32**, i64*, i8*) #1

declare dso_local i32 @lockTableForWorker(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @buildWorkerResponse(%struct.TYPE_8__*, i32*, i64, i32, i8*, i32) #1

declare dso_local i32 @sendMessageToMaster(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
