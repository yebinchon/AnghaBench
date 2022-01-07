; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetNotNull.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetNotNull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot alter system column \22%s\22\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@InvalidObjectAddress = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i8*, i32)* @ATExecSetNotNull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecSetNotNull(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @AttributeRelationId, align 4
  %14 = load i32, i32* @RowExclusiveLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @RelationGetRelid(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.TYPE_10__* @SearchSysCacheCopyAttName(i32 %17, i8* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @RelationGetRelationName(i32 %28)
  %30 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29)
  %31 = call i32 @ereport(i32 %24, i32 %30)
  br label %32

32:                                               ; preds = %23, %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = call i64 @GETSTRUCT(%struct.TYPE_10__* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_11__*
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = call i64 @GETSTRUCT(%struct.TYPE_10__* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_11__*
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = call i64 @GETSTRUCT(%struct.TYPE_10__* %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_11__*
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = call i32 @CatalogTupleUpdate(i32 %59, i32* %61, %struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = call i64 @GETSTRUCT(%struct.TYPE_10__* %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_11__*
  %73 = call i32 @NotNullImpliedByRelConstraints(i32 %69, %struct.TYPE_11__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %68, %54
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @RelationRelationId, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @RelationGetRelid(i32 %81)
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @ObjectAddressSubSet(i32 %79, i32 %80, i32 %82, i64 %83)
  br label %87

85:                                               ; preds = %47
  %86 = load i32, i32* @InvalidObjectAddress, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %85, %78
  %88 = load i32, i32* @RelationRelationId, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @RelationGetRelid(i32 %89)
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @InvokeObjectPostAlterHook(i32 %88, i32 %90, i64 %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @RowExclusiveLock, align 4
  %95 = call i32 @table_close(i32 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  ret i32 %96
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_10__* @SearchSysCacheCopyAttName(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @NotNullImpliedByRelConstraints(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ObjectAddressSubSet(i32, i32, i32, i64) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i64) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
