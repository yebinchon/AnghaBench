; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveAttributeById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveAttributeById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8, i64, i32, i64, i32 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %d of relation %u\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"........pg.dropped.%d........\00", align 1
@Natts_pg_attribute = common dso_local global i32 0, align 4
@Anum_pg_attribute_atthasmissing = common dso_local global i32 0, align 4
@Anum_pg_attribute_attmissingval = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveAttributeById(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @NAMEDATALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @AccessExclusiveLock, align 4
  %21 = call i32 @relation_open(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @AttributeRelationId, align 4
  %23 = load i32, i32* @RowExclusiveLock, align 4
  %24 = call i32 @table_open(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @ATTNUM, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @Int16GetDatum(i32 %28)
  %30 = call %struct.TYPE_9__* @SearchSysCacheCopy2(i32 %25, i32 %27, i32 %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = call i32 @HeapTupleIsValid(%struct.TYPE_9__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = call i64 @GETSTRUCT(%struct.TYPE_9__* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @CatalogTupleDelete(i32 %46, i32* %48)
  br label %124

50:                                               ; preds = %39
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @InvalidOid, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  store i8 0, i8* %61, align 8
  %62 = trunc i64 %16 to i32
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @snprintf(i8* %18, i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = call i32 @namestrcpy(i32* %66, i8* %18)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %118

72:                                               ; preds = %50
  %73 = load i32, i32* @Natts_pg_attribute, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %11, align 8
  %76 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %12, align 8
  %77 = load i32, i32* @Natts_pg_attribute, align 4
  %78 = zext i32 %77 to i64
  %79 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %13, align 8
  %80 = load i32, i32* @Natts_pg_attribute, align 4
  %81 = zext i32 %80 to i64
  %82 = alloca i32, i64 %81, align 16
  store i64 %81, i64* %14, align 8
  %83 = mul nuw i64 4, %74
  %84 = trunc i64 %83 to i32
  %85 = call i32 @MemSet(i32* %76, i32 0, i32 %84)
  %86 = mul nuw i64 4, %78
  %87 = trunc i64 %86 to i32
  %88 = call i32 @MemSet(i32* %79, i32 0, i32 %87)
  %89 = mul nuw i64 4, %81
  %90 = trunc i64 %89 to i32
  %91 = call i32 @MemSet(i32* %82, i32 0, i32 %90)
  %92 = call i32 @BoolGetDatum(i32 0)
  %93 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %76, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %82, i64 %99
  store i32 1, i32* %100, align 4
  %101 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %76, i64 %103
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %79, i64 %107
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %82, i64 %111
  store i32 1, i32* %112, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @RelationGetDescr(i32 %114)
  %116 = call %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__* %113, i32 %115, i32* %76, i32* %79, i32* %82)
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %7, align 8
  %117 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %117)
  br label %118

118:                                              ; preds = %72, %50
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = call i32 @CatalogTupleUpdate(i32 %119, i32* %121, %struct.TYPE_9__* %122)
  br label %124

124:                                              ; preds = %118, %45
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @RowExclusiveLock, align 4
  %127 = call i32 @table_close(i32 %125, i32 %126)
  %128 = load i32, i32* %4, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @RemoveStatistics(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %124
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @NoLock, align 4
  %137 = call i32 @relation_close(i32 %135, i32 %136)
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @relation_open(i32, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_9__* @SearchSysCacheCopy2(i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int16GetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_9__*) #2

declare dso_local i32 @elog(i32, i8*, i32, i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_9__*) #2

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @RemoveStatistics(i32, i32) #2

declare dso_local i32 @relation_close(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
