; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_RelationCreateStorage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_RelationCreateStorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@InvalidBackendId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid relpersistence: %c\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@pendingDeletes = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @RelationCreateStorage(i32 %0, i8 signext %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %14
    i32 130, label %16
  ]

12:                                               ; preds = %2
  %13 = call i32 (...) @BackendIdForTempRelations()
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @InvalidBackendId, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @InvalidBackendId, align 4
  store i32 %17, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i8, i8* %5, align 1
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %20)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %57

22:                                               ; preds = %16, %14, %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_9__* @smgropen(i32 %23, i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = load i32, i32* @MAIN_FORKNUM, align 4
  %28 = call i32 @smgrcreate(%struct.TYPE_9__* %26, i32 %27, i32 0)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* @MAIN_FORKNUM, align 4
  %36 = call i32 @log_smgrcreate(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32, i32* @TopMemoryContext, align 4
  %39 = call i64 @MemoryContextAlloc(i32 %38, i32 32)
  %40 = inttoptr i64 %39 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = call i32 (...) @GetCurrentTransactionNestLevel()
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pendingDeletes, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** @pendingDeletes, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %3, align 8
  br label %57

57:                                               ; preds = %37, %18
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %58
}

declare dso_local i32 @BackendIdForTempRelations(...) #1

declare dso_local i32 @elog(i32, i8*, i8 signext) #1

declare dso_local %struct.TYPE_9__* @smgropen(i32, i32) #1

declare dso_local i32 @smgrcreate(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @log_smgrcreate(i32*, i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
