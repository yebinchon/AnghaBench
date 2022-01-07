; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveAttrDefaultById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveAttrDefaultById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@AttrDefaultRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_attrdef_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@AttrDefaultOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not find tuple for attrdef %u\00", align 1
@AccessExclusiveLock = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %d of relation %u\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveAttrDefaultById(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @AttrDefaultRelationId, align 4
  %12 = load i32, i32* @RowExclusiveLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %15 = load i32, i32* @Anum_pg_attrdef_oid, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_OIDEQ, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AttrDefaultOidIndexId, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %24 = call i32 @systable_beginscan(i32 %21, i32 %22, i32 1, i32* null, i32 1, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.TYPE_9__* @systable_getnext(i32 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = call i32 @HeapTupleIsValid(%struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, i32, ...) @elog(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = call i64 @GETSTRUCT(%struct.TYPE_9__* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_11__*
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = call i64 @GETSTRUCT(%struct.TYPE_9__* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_11__*
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @AccessExclusiveLock, align 4
  %47 = call i32 @relation_open(i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @CatalogTupleDelete(i32 %48, i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @systable_endscan(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @RowExclusiveLock, align 4
  %56 = call i32 @table_close(i32 %54, i32 %55)
  %57 = load i32, i32* @AttributeRelationId, align 4
  %58 = load i32, i32* @RowExclusiveLock, align 4
  %59 = call i32 @table_open(i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @ATTNUM, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ObjectIdGetDatum(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @Int16GetDatum(i32 %63)
  %65 = call %struct.TYPE_9__* @SearchSysCacheCopy2(i32 %60, i32 %62, i32 %64)
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %8, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = call i32 @HeapTupleIsValid(%struct.TYPE_9__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %34
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i32, i8*, i32, ...) @elog(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %34
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = call i64 @GETSTRUCT(%struct.TYPE_9__* %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = call i32 @CatalogTupleUpdate(i32 %79, i32* %81, %struct.TYPE_9__* %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @RowExclusiveLock, align 4
  %86 = call i32 @table_close(i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @NoLock, align 4
  %89 = call i32 @relation_close(i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_9__*) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local %struct.TYPE_9__* @SearchSysCacheCopy2(i32, i32, i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
