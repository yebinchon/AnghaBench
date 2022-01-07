; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_AlterTableSpaceOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_AlterTableSpaceOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@Natts_pg_tablespace = common dso_local global i32 0, align 4
@TableSpaceRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_tablespace_spcname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tablespace \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_TABLESPACE = common dso_local global i32 0, align 4
@Anum_pg_tablespace_spcoptions = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterTableSpaceOptions(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %16 = load i32, i32* @Natts_pg_tablespace, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @Natts_pg_tablespace, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i32, i32* @Natts_pg_tablespace, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i32, i32* @TableSpaceRelationId, align 4
  %27 = load i32, i32* @RowExclusiveLock, align 4
  %28 = call i32 @table_open(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %30 = load i32, i32* @Anum_pg_tablespace_spcname, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_NAMEEQ, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CStringGetDatum(i32 %35)
  %37 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %40 = call i32 @table_beginscan_catalog(i32 %38, i32 1, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ForwardScanDirection, align 4
  %43 = call %struct.TYPE_13__* @heap_getnext(i32 %41, i32 %42)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %6, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = call i32 @HeapTupleIsValid(%struct.TYPE_13__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 @ereport(i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %47, %1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = call i64 @GETSTRUCT(%struct.TYPE_13__* %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_14__*
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (...) @GetUserId()
  %64 = call i32 @pg_tablespace_ownercheck(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %68 = load i32, i32* @OBJECT_TABLESPACE, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @aclcheck_error(i32 %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %66, %56
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = load i32, i32* @Anum_pg_tablespace_spcoptions, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @RelationGetDescr(i32 %76)
  %78 = call i64 @heap_getattr(%struct.TYPE_13__* %74, i32 %75, i32 %77, i32* %12)
  store i64 %78, i64* %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %84

82:                                               ; preds = %73
  %83 = load i64, i64* %8, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i64 [ 0, %81 ], [ %83, %82 ]
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @transformRelOptions(i64 %85, i32 %88, i32* null, i32* null, i32 0, i32 %91)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @tablespace_reloptions(i64 %93, i32 1)
  %95 = mul nuw i64 4, %21
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memset(i32* %22, i32 0, i32 %96)
  %98 = mul nuw i64 4, %24
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memset(i32* %25, i32 0, i32 %99)
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %84
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* @Anum_pg_tablespace_spcoptions, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %19, i64 %107
  store i64 %104, i64* %108, align 8
  br label %114

109:                                              ; preds = %84
  %110 = load i32, i32* @Anum_pg_tablespace_spcoptions, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %22, i64 %112
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %103
  %115 = load i32, i32* @Anum_pg_tablespace_spcoptions, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %25, i64 %117
  store i32 1, i32* %118, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @RelationGetDescr(i32 %120)
  %122 = call %struct.TYPE_13__* @heap_modify_tuple(%struct.TYPE_13__* %119, i32 %121, i64* %19, i32* %22, i32* %25)
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %15, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %127 = call i32 @CatalogTupleUpdate(i32 %123, i32* %125, %struct.TYPE_13__* %126)
  %128 = load i32, i32* @TableSpaceRelationId, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @InvokeObjectPostAlterHook(i32 %128, i32 %129, i32 0)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %132 = call i32 @heap_freetuple(%struct.TYPE_13__* %131)
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @table_endscan(i32 %133)
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @NoLock, align 4
  %137 = call i32 @table_close(i32 %135, i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %139)
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #2

declare dso_local %struct.TYPE_13__* @heap_getnext(i32, i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_13__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_13__*) #2

declare dso_local i32 @pg_tablespace_ownercheck(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i32, i32, i32) #2

declare dso_local i64 @heap_getattr(%struct.TYPE_13__*, i32, i32, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i64 @transformRelOptions(i64, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @tablespace_reloptions(i64, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_13__* @heap_modify_tuple(%struct.TYPE_13__*, i32, i64*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_13__*) #2

declare dso_local i32 @table_endscan(i32) #2

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
