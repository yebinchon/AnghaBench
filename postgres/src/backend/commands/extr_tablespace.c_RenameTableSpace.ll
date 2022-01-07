; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_RenameTableSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_RenameTableSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@TableSpaceRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_tablespace_spcname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tablespace \22%s\22 does not exist\00", align 1
@ACLCHECK_NO_PRIV = common dso_local global i32 0, align 4
@OBJECT_TABLESPACE = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERRCODE_RESERVED_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unacceptable tablespace name \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"The prefix \22pg_\22 is reserved for system tablespaces.\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"tablespace \22%s\22 already exists\00", align 1
@NoLock = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenameTableSpace(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @TableSpaceRelationId, align 4
  %14 = load i32, i32* @RowExclusiveLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %17 = load i32, i32* @Anum_pg_tablespace_spcname, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_NAMEEQ, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @CStringGetDatum(i8* %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %25 = call i32 @table_beginscan_catalog(i32 %23, i32 1, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ForwardScanDirection, align 4
  %28 = call %struct.TYPE_9__* @heap_getnext(i32 %26, i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %9, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = call i64 @HeapTupleIsValid(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = call i32 @ereport(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = call %struct.TYPE_9__* @heap_copytuple(%struct.TYPE_9__* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %10, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = call i64 @GETSTRUCT(%struct.TYPE_9__* %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @table_endscan(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (...) @GetUserId()
  %52 = call i32 @pg_tablespace_ownercheck(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @ACLCHECK_NO_PRIV, align 4
  %56 = load i32, i32* @OBJECT_TABLESPACE, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @aclcheck_error(i32 %55, i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %54, %39
  %60 = load i32, i32* @allowSystemTableMods, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @IsReservedName(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_RESERVED_NAME, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = call i32 @errdetail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %66, %62, %59
  %75 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %76 = load i32, i32* @Anum_pg_tablespace_spcname, align 4
  %77 = load i32, i32* @BTEqualStrategyNumber, align 4
  %78 = load i32, i32* @F_NAMEEQ, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @CStringGetDatum(i8* %79)
  %81 = call i32 @ScanKeyInit(i32* %75, i32 %76, i32 %77, i32 %78, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %84 = call i32 @table_beginscan_catalog(i32 %82, i32 1, i32* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ForwardScanDirection, align 4
  %87 = call %struct.TYPE_9__* @heap_getnext(i32 %85, i32 %86)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %9, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = call i64 @HeapTupleIsValid(%struct.TYPE_9__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %74
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = call i32 @ereport(i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %91, %74
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @table_endscan(i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @namestrcpy(i32* %102, i8* %103)
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = call i32 @CatalogTupleUpdate(i32 %105, i32* %107, %struct.TYPE_9__* %108)
  %110 = load i32, i32* @TableSpaceRelationId, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @InvokeObjectPostAlterHook(i32 %110, i32 %111, i32 0)
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @TableSpaceRelationId, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @ObjectAddressSet(i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @NoLock, align 4
  %119 = call i32 @table_close(i32 %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  ret i32 %120
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @heap_getnext(i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @heap_copytuple(%struct.TYPE_9__*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_9__*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @pg_tablespace_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #1

declare dso_local i64 @IsReservedName(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
