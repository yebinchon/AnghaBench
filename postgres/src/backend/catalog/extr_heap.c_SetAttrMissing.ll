; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_SetAttrMissing.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_SetAttrMissing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@Natts_pg_attribute = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %s of relation %u\00", align 1
@F_ARRAY_IN = common dso_local global i32 0, align 4
@Anum_pg_attribute_atthasmissing = common dso_local global i32 0, align 4
@Anum_pg_attribute_attmissingval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetAttrMissing(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @Natts_pg_attribute, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @Natts_pg_attribute, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @Natts_pg_attribute, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AccessExclusiveLock, align 4
  %29 = call i32 @table_open(i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @AttributeRelationId, align 4
  %31 = load i32, i32* @RowExclusiveLock, align 4
  %32 = call i32 @table_open(i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call %struct.TYPE_10__* @SearchSysCacheAttName(i32 %33, i8* %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %15, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %37 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @elog(i32 %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %46 = call i64 @GETSTRUCT(%struct.TYPE_10__* %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %12, align 8
  %48 = load i32, i32* @F_ARRAY_IN, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @CStringGetDatum(i8* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ObjectIdGetDatum(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Int32GetDatum(i32 %57)
  %59 = call i32 @OidFunctionCall3(i32 %48, i32 %50, i32 %54, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = mul nuw i64 4, %18
  %61 = trunc i64 %60 to i32
  %62 = call i32 @MemSet(i32* %20, i32 0, i32 %61)
  %63 = mul nuw i64 4, %22
  %64 = trunc i64 %63 to i32
  %65 = call i32 @MemSet(i32* %23, i32 0, i32 %64)
  %66 = mul nuw i64 4, %25
  %67 = trunc i64 %66 to i32
  %68 = call i32 @MemSet(i32* %26, i32 0, i32 %67)
  %69 = call i32 @BoolGetDatum(i32 1)
  %70 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %20, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %26, i64 %76
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %20, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %26, i64 %85
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @RelationGetDescr(i32 %88)
  %90 = call %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__* %87, i32 %89, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %16, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %95 = call i32 @CatalogTupleUpdate(i32 %91, i32* %93, %struct.TYPE_10__* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %97 = call i32 @ReleaseSysCache(%struct.TYPE_10__* %96)
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @RowExclusiveLock, align 4
  %100 = call i32 @table_close(i32 %98, i32 %99)
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @AccessExclusiveLock, align 4
  %103 = call i32 @table_close(i32 %101, i32 %102)
  %104 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_10__* @SearchSysCacheAttName(i32, i8*) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #2

declare dso_local i32 @elog(i32, i8*, i8*, i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #2

declare dso_local i32 @OidFunctionCall3(i32, i32, i32, i32) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_10__*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
