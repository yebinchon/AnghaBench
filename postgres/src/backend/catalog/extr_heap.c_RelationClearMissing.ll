; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RelationClearMissing.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RelationClearMissing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@Natts_pg_attribute = common dso_local global i32 0, align 4
@Anum_pg_attribute_atthasmissing = common dso_local global i32 0, align 4
@Anum_pg_attribute_attmissingval = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %d of relation %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationClearMissing(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @RelationGetRelid(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @RelationGetNumberOfAttributes(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @Natts_pg_attribute, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @Natts_pg_attribute, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load i32, i32* @Natts_pg_attribute, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %28 = mul nuw i64 4, %19
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32* %21, i32 0, i32 %29)
  %31 = mul nuw i64 4, %23
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %24, i32 0, i32 %32)
  %34 = mul nuw i64 4, %26
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %27, i32 0, i32 %35)
  %37 = call i32 @BoolGetDatum(i32 0)
  %38 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %21, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %24, i64 %44
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %27, i64 %48
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %27, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @AttributeRelationId, align 4
  %55 = load i32, i32* @RowExclusiveLock, align 4
  %56 = call i32 @table_open(i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %99, %1
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %57
  %62 = load i32, i32* @ATTNUM, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ObjectIdGetDatum(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @Int16GetDatum(i32 %65)
  %67 = call %struct.TYPE_11__* @SearchSysCache2(i32 %62, i32 %64, i32 %66)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %12, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = call i32 @HeapTupleIsValid(%struct.TYPE_11__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @elog(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %61
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = call i64 @GETSTRUCT(%struct.TYPE_11__* %77)
  %79 = inttoptr i64 %78 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %11, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @RelationGetDescr(i32 %86)
  %88 = call %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__* %85, i32 %87, i32* %21, i32* %24, i32* %27)
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %13, align 8
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %93 = call i32 @CatalogTupleUpdate(i32 %89, i32* %91, %struct.TYPE_11__* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %95 = call i32 @heap_freetuple(%struct.TYPE_11__* %94)
  br label %96

96:                                               ; preds = %84, %76
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = call i32 @ReleaseSysCache(%struct.TYPE_11__* %97)
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %57

102:                                              ; preds = %57
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @RowExclusiveLock, align 4
  %105 = call i32 @table_close(i32 %103, i32 %104)
  %106 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @RelationGetNumberOfAttributes(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BoolGetDatum(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_11__* @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_11__*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_11__*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_11__*) #1

declare dso_local i32 @table_close(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
