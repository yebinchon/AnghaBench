; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_enum.c_RenameEnumLabel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_enum.c_RenameEnumLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }

@NAMEDATALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid enum label \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Labels must be %d characters or less.\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@EnumRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ENUMTYPOIDNAME = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\22%s\22 is not an existing enum label\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"enum label \22%s\22 already exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RenameEnumLabel(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = load i32, i32* @NAMEDATALEN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @NAMEDATALEN, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @errdetail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @ereport(i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %20, %3
  %31 = load i32, i32* @TypeRelationId, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ExclusiveLock, align 4
  %34 = call i32 @LockDatabaseObject(i32 %31, i32 %32, i32 0, i32 %33)
  %35 = load i32, i32* @EnumRelationId, align 4
  %36 = load i32, i32* @RowExclusiveLock, align 4
  %37 = call i32 @table_open(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @ENUMTYPOIDNAME, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  %41 = call %struct.TYPE_15__* @SearchSysCacheList1(i32 %38, i32 %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %10, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %80, %30
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %52, i64 %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %8, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = call i64 @GETSTRUCT(%struct.TYPE_13__* %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %9, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @NameStr(i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strcmp(i32 %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %49
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %12, align 8
  br label %70

70:                                               ; preds = %68, %49
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @NameStr(i32 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strcmp(i32 %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %78, %70
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = icmp ne %struct.TYPE_13__* %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = call i32 @ereport(i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* @ERROR, align 4
  %98 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %99 = call i32 @errcode(i32 %98)
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = call i32 @ereport(i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %96, %93
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %105 = call %struct.TYPE_13__* @heap_copytuple(%struct.TYPE_13__* %104)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %8, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = call i64 @GETSTRUCT(%struct.TYPE_13__* %106)
  %108 = inttoptr i64 %107 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %9, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %110 = call i32 @ReleaseCatCacheList(%struct.TYPE_15__* %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @namestrcpy(i32* %112, i8* %113)
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = call i32 @CatalogTupleUpdate(i32 %115, i32* %117, %struct.TYPE_13__* %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = call i32 @heap_freetuple(%struct.TYPE_13__* %120)
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @RowExclusiveLock, align 4
  %124 = call i32 @table_close(i32 %122, i32 %123)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i32 @LockDatabaseObject(i32, i32, i32, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_15__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local %struct.TYPE_13__* @heap_copytuple(%struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseCatCacheList(%struct.TYPE_15__*) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_13__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
