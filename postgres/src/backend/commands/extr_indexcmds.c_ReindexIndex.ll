; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_ReindexIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_ReindexIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ReindexIndexCallbackState = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8 }

@InvalidOid = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RangeVarCallbackForReindexIndex = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@REINDEXOPT_REPORT_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReindexIndex(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ReindexIndexCallbackState, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @InvalidOid, align 4
  %14 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @AccessExclusiveLock, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32, i32* @RangeVarCallbackForReindexIndex, align 4
  %25 = call i32 @RangeVarGetRelidExtended(i32* %15, i32 %23, i32 0, i32 %24, %struct.ReindexIndexCallbackState* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NoLock, align 4
  %28 = call %struct.TYPE_7__* @index_open(i32 %26, i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = call i32 @ReindexPartitionedIndex(%struct.TYPE_7__* %37)
  br label %61

39:                                               ; preds = %22
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 8
  store i8 %44, i8* %10, align 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = load i32, i32* @NoLock, align 4
  %47 = call i32 @index_close(%struct.TYPE_7__* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ReindexRelationConcurrently(i32 %51, i32 %52)
  br label %61

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load i8, i8* %10, align 1
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @REINDEXOPT_REPORT_PROGRESS, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @reindex_index(i32 %55, i32 0, i8 signext %56, i32 %59)
  br label %61

61:                                               ; preds = %36, %54, %50
  ret void
}

declare dso_local i32 @RangeVarGetRelidExtended(i32*, i32, i32, i32, %struct.ReindexIndexCallbackState*) #1

declare dso_local %struct.TYPE_7__* @index_open(i32, i32) #1

declare dso_local i32 @ReindexPartitionedIndex(%struct.TYPE_7__*) #1

declare dso_local i32 @index_close(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ReindexRelationConcurrently(i32, i32) #1

declare dso_local i32 @reindex_index(i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
