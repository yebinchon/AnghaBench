; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetStorage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetStorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8, i32 }

@String = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"extended\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"invalid storage type \22%s\22\00", align 1
@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"cannot alter system column \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"column data type %s can only have storage PLAIN\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32)* @ATExecSetStorage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecSetStorage(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @String, align 4
  %18 = call i32 @IsA(i32* %16, i32 %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @strVal(i32* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @pg_strcasecmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i8 112, i8* %10, align 1
  br label %51

26:                                               ; preds = %4
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @pg_strcasecmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8 101, i8* %10, align 1
  br label %50

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @pg_strcasecmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8 120, i8* %10, align 1
  br label %49

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @pg_strcasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 109, i8* %10, align 1
  br label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = call i32 @ereport(i32 %42, i32 %46)
  store i8 0, i8* %10, align 1
  br label %48

48:                                               ; preds = %41, %40
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* @AttributeRelationId, align 4
  %53 = load i32, i32* @RowExclusiveLock, align 4
  %54 = call i32 @table_open(i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @RelationGetRelid(i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call %struct.TYPE_8__* @SearchSysCacheCopyAttName(i32 %56, i8* %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %12, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @RelationGetRelationName(i32 %67)
  %69 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %66, i32 %68)
  %70 = call i32 @ereport(i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %62, %51
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = call i64 @GETSTRUCT(%struct.TYPE_8__* %72)
  %74 = inttoptr i64 %73 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %13, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = call i32 @ereport(i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %80, %71
  %88 = load i8, i8* %10, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 112
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @TypeIsToastable(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91, %87
  %98 = load i8, i8* %10, align 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store i8 %98, i8* %100, align 8
  br label %111

101:                                              ; preds = %91
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %104 = call i32 @errcode(i32 %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @format_type_be(i32 %107)
  %109 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %108)
  %110 = call i32 @ereport(i32 %102, i32 %109)
  br label %111

111:                                              ; preds = %101, %97
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %116 = call i32 @CatalogTupleUpdate(i32 %112, i32* %114, %struct.TYPE_8__* %115)
  %117 = load i32, i32* @RelationRelationId, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @RelationGetRelid(i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @InvokeObjectPostAlterHook(i32 %117, i32 %119, i64 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %125 = call i32 @heap_freetuple(%struct.TYPE_8__* %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @RowExclusiveLock, align 4
  %128 = call i32 @table_close(i32 %126, i32 %127)
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @RelationRelationId, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @RelationGetRelid(i32 %131)
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @ObjectAddressSubSet(i32 %129, i32 %130, i32 %132, i64 %133)
  %135 = load i32, i32* %15, align 4
  ret i32 %135
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsA(i32*, i32) #1

declare dso_local i8* @strVal(i32*) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopyAttName(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i64 @TypeIsToastable(i32) #1

declare dso_local i8* @format_type_be(i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i64) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ObjectAddressSubSet(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
