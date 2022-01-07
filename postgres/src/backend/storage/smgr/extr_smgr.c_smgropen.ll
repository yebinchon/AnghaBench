; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_smgr.c_smgropen.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_smgr.c_smgropen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i64, i32, i8*, i8*, i8*, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@SMgrRelationHash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"smgr relation table\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@unowned_relns = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i8* null, align 8
@smgrsw = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @smgropen(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** @SMgrRelationHash, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = call i32 @MemSet(%struct.TYPE_11__* %8, i32 0, i32 8)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 8, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* @HASH_ELEM, align 4
  %16 = load i32, i32* @HASH_BLOBS, align 4
  %17 = or i32 %15, %16
  %18 = call i32* @hash_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 400, %struct.TYPE_11__* %8, i32 %17)
  store i32* %18, i32** @SMgrRelationHash, align 8
  %19 = call i32 @dlist_init(i32* @unowned_relns)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load i32, i32* %3, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** @SMgrRelationHash, align 8
  %26 = bitcast %struct.TYPE_10__* %5 to i8*
  %27 = load i32, i32* @HASH_ENTER, align 4
  %28 = call i64 @hash_search(i32* %25, i8* %26, i32 %27, i32* %7)
  %29 = inttoptr i64 %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %20
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load i8*, i8** @InvalidBlockNumber, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @InvalidBlockNumber, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @InvalidBlockNumber, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @smgrsw, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = call i32 %52(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = call i32 @dlist_push_tail(i32* @unowned_relns, i32* %56)
  br label %58

58:                                               ; preds = %32, %20
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %59
}

declare dso_local i32 @MemSet(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @dlist_init(i32*) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dlist_push_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
