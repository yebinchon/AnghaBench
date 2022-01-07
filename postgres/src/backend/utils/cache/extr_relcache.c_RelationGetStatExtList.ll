; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetStatExtList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetStatExtList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@Anum_pg_statistic_ext_stxrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@StatisticExtRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@StatisticExtRelidIndexId = common dso_local global i32 0, align 4
@list_oid_cmp = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RelationGetStatExtList(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32* @list_copy(i32* %19)
  store i32* %20, i32** %2, align 8
  br label %75

21:                                               ; preds = %1
  %22 = load i32*, i32** @NIL, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @Anum_pg_statistic_ext_stxrelid, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_OIDEQ, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @RelationGetRelid(%struct.TYPE_8__* %26)
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = call i32 @ScanKeyInit(i32* %6, i32 %23, i32 %24, i32 %25, i32 %28)
  %30 = load i32, i32* @StatisticExtRelationId, align 4
  %31 = load i32, i32* @AccessShareLock, align 4
  %32 = call %struct.TYPE_8__* @table_open(i32 %30, i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i32, i32* @StatisticExtRelidIndexId, align 4
  %35 = call i32 @systable_beginscan(%struct.TYPE_8__* %33, i32 %34, i32 1, i32* null, i32 1, i32* %6)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %41, %21
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @systable_getnext(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = call i64 @HeapTupleIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @GETSTRUCT(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32* @lappend_oid(i32* %47, i32 %48)
  store i32* %49, i32** %8, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @systable_endscan(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load i32, i32* @AccessShareLock, align 4
  %55 = call i32 @table_close(%struct.TYPE_8__* %53, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @list_oid_cmp, align 4
  %58 = call i32 @list_sort(i32* %56, i32 %57)
  %59 = load i32, i32* @CacheMemoryContext, align 4
  %60 = call i32 @MemoryContextSwitchTo(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @list_copy(i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @MemoryContextSwitchTo(i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @list_free(i32* %72)
  %74 = load i32*, i32** %8, align 8
  store i32* %74, i32** %2, align 8
  br label %75

75:                                               ; preds = %50, %16
  %76 = load i32*, i32** %2, align 8
  ret i32* %76
}

declare dso_local i32* @list_copy(i32*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_8__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_sort(i32*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
