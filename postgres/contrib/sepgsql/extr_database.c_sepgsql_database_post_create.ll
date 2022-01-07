; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_database.c_sepgsql_database_post_create.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_database.c_sepgsql_database_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@DatabaseRelationId = common dso_local global i8* null, align 8
@SEPG_CLASS_DB_DATABASE = common dso_local global i32 0, align 4
@SEPG_DB_DATABASE__GETATTR = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_database_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@DatabaseOidIndexId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not find tuple for database %u\00", align 1
@SEPG_DB_DATABASE__CREATE = common dso_local global i32 0, align 4
@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_database_post_create(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i8*, i8** @DatabaseRelationId, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @get_database_oid(i8* %20, i32 0)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @sepgsql_get_label(i8* %25, i32 %27, i64 %29)
  store i8* %30, i8** %9, align 8
  %31 = call i32 @initStringInfo(%struct.TYPE_8__* %13)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @quote_identifier(i8* %32)
  %34 = call i32 @appendStringInfoString(%struct.TYPE_8__* %13, i32 %33)
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @SEPG_CLASS_DB_DATABASE, align 4
  %37 = load i32, i32* @SEPG_DB_DATABASE__GETATTR, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sepgsql_avc_check_perms_label(i8* %35, i32 %36, i32 %37, i32 %39, i32 1)
  %41 = load i8*, i8** @DatabaseRelationId, align 8
  %42 = load i32, i32* @AccessShareLock, align 4
  %43 = call i32 @table_open(i8* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @Anum_pg_database_oid, align 4
  %45 = load i32, i32* @BTEqualStrategyNumber, align 4
  %46 = load i32, i32* @F_OIDEQ, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ObjectIdGetDatum(i32 %47)
  %49 = call i32 @ScanKeyInit(i32* %6, i32 %44, i32 %45, i32 %46, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @DatabaseOidIndexId, align 4
  %52 = load i32, i32* @SnapshotSelf, align 4
  %53 = call i32 @systable_beginscan(i32 %50, i32 %51, i32 1, i32 %52, i32 1, i32* %6)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @systable_getnext(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @HeapTupleIsValid(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %17
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @elog(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %17
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @GETSTRUCT(i32 %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %12, align 8
  %67 = call i32 (...) @sepgsql_get_client_label()
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* @SEPG_CLASS_DB_DATABASE, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @NameStr(i32 %72)
  %74 = call i8* @sepgsql_compute_create(i32 %67, i8* %68, i32 %69, i8* %73)
  store i8* %74, i8** %10, align 8
  %75 = call i32 @resetStringInfo(%struct.TYPE_8__* %13)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @NameStr(i32 %78)
  %80 = call i32 @quote_identifier(i8* %79)
  %81 = call i32 @appendStringInfoString(%struct.TYPE_8__* %13, i32 %80)
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* @SEPG_CLASS_DB_DATABASE, align 4
  %84 = load i32, i32* @SEPG_DB_DATABASE__CREATE, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sepgsql_avc_check_perms_label(i8* %82, i32 %83, i32 %84, i32 %86, i32 1)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @systable_endscan(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @AccessShareLock, align 4
  %92 = call i32 @table_close(i32 %90, i32 %91)
  %93 = load i8*, i8** @DatabaseRelationId, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* %3, align 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @SetSecurityLabel(%struct.TYPE_9__* %11, i32 %98, i8* %99)
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @pfree(i8* %101)
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @pfree(i8* %103)
  ret void
}

declare dso_local i32 @get_database_oid(i8*, i32) #1

declare dso_local i8* @sepgsql_get_label(i8*, i32, i64) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @quote_identifier(i8*) #1

declare dso_local i32 @sepgsql_avc_check_perms_label(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @table_open(i8*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @sepgsql_compute_create(i32, i8*, i32, i8*) #1

declare dso_local i32 @sepgsql_get_client_label(...) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @SetSecurityLabel(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
