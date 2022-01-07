; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_StorePartitionBound.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_StorePartitionBound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@Natts_pg_class = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@Anum_pg_class_relpartbound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StorePartitionBound(i32 %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %15 = load i32, i32* @Natts_pg_class, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @Natts_pg_class, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = load i32, i32* @Natts_pg_class, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load i32, i32* @RelationRelationId, align 4
  %26 = load i32, i32* @RowExclusiveLock, align 4
  %27 = call i32 @table_open(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @RELOID, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @RelationGetRelid(i32 %29)
  %31 = call i32 @ObjectIdGetDatum(i32 %30)
  %32 = call %struct.TYPE_15__* @SearchSysCacheCopy1(i32 %28, i32 %31)
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %8, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = call i32 @HeapTupleIsValid(%struct.TYPE_15__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @RelationGetRelid(i32 %38)
  %40 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %3
  %42 = mul nuw i64 4, %16
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i32* %18, i32 0, i32 %43)
  %45 = mul nuw i64 4, %20
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i32* %21, i32 0, i32 %46)
  %48 = mul nuw i64 4, %23
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(i32* %24, i32 0, i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = call i32 @nodeToString(%struct.TYPE_14__* %51)
  %53 = call i32 @CStringGetTextDatum(i32 %52)
  %54 = load i32, i32* @Anum_pg_class_relpartbound, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %18, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @Anum_pg_class_relpartbound, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %21, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* @Anum_pg_class_relpartbound, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %24, i64 %64
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @RelationGetDescr(i32 %67)
  %69 = call %struct.TYPE_15__* @heap_modify_tuple(%struct.TYPE_15__* %66, i32 %68, i32* %18, i32* %21, i32* %24)
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %9, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = call i64 @GETSTRUCT(%struct.TYPE_15__* %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_16__*
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = call i32 @CatalogTupleUpdate(i32 %74, i32* %76, %struct.TYPE_15__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = call i32 @heap_freetuple(%struct.TYPE_15__* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RowExclusiveLock, align 4
  %83 = call i32 @table_close(i32 %81, i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %41
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @RelationGetRelid(i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @RelationGetRelid(i32 %91)
  %93 = call i32 @update_default_partition_oid(i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %88, %41
  %95 = call i32 (...) @CommandCounterIncrement()
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @RelationGetPartitionDesc(i32 %96)
  %98 = call i32 @get_default_oid_from_partdesc(i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i64 @OidIsValid(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @CacheInvalidateRelcacheByRelid(i32 %103)
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @CacheInvalidateRelcache(i32 %106)
  %108 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_15__* @SearchSysCacheCopy1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @RelationGetRelid(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_15__*) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CStringGetTextDatum(i32) #2

declare dso_local i32 @nodeToString(%struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_15__* @heap_modify_tuple(%struct.TYPE_15__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_15__*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_15__*) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @update_default_partition_oid(i32, i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @get_default_oid_from_partdesc(i32) #2

declare dso_local i32 @RelationGetPartitionDesc(i32) #2

declare dso_local i64 @OidIsValid(i32) #2

declare dso_local i32 @CacheInvalidateRelcacheByRelid(i32) #2

declare dso_local i32 @CacheInvalidateRelcache(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
