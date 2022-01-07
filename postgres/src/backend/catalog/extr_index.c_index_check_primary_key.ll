; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_check_primary_key.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_check_primary_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64* }
%struct.TYPE_13__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"multiple primary keys for table \22%s\22 are not allowed\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"primary keys cannot be expressions\00", align 1
@ATTNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %d of relation %u\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"primary key column \22%s\22 is not marked NOT NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_check_primary_key(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15, %4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = call i64 @relationHasPrimaryKey(%struct.TYPE_11__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = call i32 @RelationGetRelationName(%struct.TYPE_11__* %30)
  %32 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @ereport(i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %26, %22, %15
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %99, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @ereport(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %99

61:                                               ; preds = %57
  %62 = load i32, i32* @ATTNUM, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = call i32 @RelationGetRelid(%struct.TYPE_11__* %63)
  %65 = call i32 @ObjectIdGetDatum(i32 %64)
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @Int16GetDatum(i64 %66)
  %68 = call i32 @SearchSysCache2(i32 %62, i32 %65, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @HeapTupleIsValid(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = call i32 @RelationGetRelid(%struct.TYPE_11__* %75)
  %77 = call i32 @elog(i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %74, i32 %76)
  br label %78

78:                                               ; preds = %72, %61
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @GETSTRUCT(i32 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %12, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @NameStr(i32 %92)
  %94 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = call i32 @ereport(i32 %87, i32 %94)
  br label %96

96:                                               ; preds = %86, %78
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @ReleaseSysCache(i32 %97)
  br label %99

99:                                               ; preds = %96, %60
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %35

102:                                              ; preds = %35
  ret void
}

declare dso_local i64 @relationHasPrimaryKey(%struct.TYPE_11__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_11__*) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_11__*) #1

declare dso_local i32 @Int16GetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
