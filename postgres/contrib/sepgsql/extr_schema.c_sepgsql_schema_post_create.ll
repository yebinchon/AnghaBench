; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_schema.c_sepgsql_schema_post_create.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_schema.c_sepgsql_schema_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@NamespaceRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_namespace_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@NamespaceOidIndexId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not find tuple for namespace %u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pg_temp_\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pg_temp\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pg_toast_temp_\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"pg_toast_temp\00", align 1
@DatabaseRelationId = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SCHEMA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SEPG_DB_SCHEMA__CREATE = common dso_local global i32 0, align 4
@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_schema_post_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @NamespaceRelationId, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @Anum_pg_namespace_oid, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_OIDEQ, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i32 @ScanKeyInit(i32* %4, i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @NamespaceOidIndexId, align 4
  %24 = load i32, i32* @SnapshotSelf, align 4
  %25 = call i32 @systable_beginscan(i32 %22, i32 %23, i32 1, i32 %24, i32 1, i32* %4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @systable_getnext(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @HeapTupleIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @GETSTRUCT(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %11, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @NameStr(i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %53

47:                                               ; preds = %35
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 14)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32, i32* @DatabaseRelationId, align 4
  %55 = load i32, i32* @MyDatabaseId, align 4
  %56 = call i8* @sepgsql_get_label(i32 %54, i32 %55, i32 0)
  store i8* %56, i8** %7, align 8
  %57 = call i32 (...) @sepgsql_get_client_label()
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @SEPG_CLASS_DB_SCHEMA, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = call i8* @sepgsql_compute_create(i32 %57, i8* %58, i32 %59, i8* %60)
  store i8* %61, i8** %8, align 8
  %62 = call i32 @initStringInfo(%struct.TYPE_7__* %12)
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @quote_identifier(i8* %63)
  %65 = call i32 @appendStringInfo(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @SEPG_CLASS_DB_SCHEMA, align 4
  %68 = load i32, i32* @SEPG_DB_SCHEMA__CREATE, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sepgsql_avc_check_perms_label(i8* %66, i32 %67, i32 %68, i32 %70, i32 1)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @systable_endscan(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @AccessShareLock, align 4
  %76 = call i32 @table_close(i32 %74, i32 %75)
  %77 = load i32, i32* @NamespaceRelationId, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %2, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @SetSecurityLabel(%struct.TYPE_8__* %10, i32 %82, i8* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @pfree(i8* %85)
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @pfree(i8* %87)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @sepgsql_get_label(i32, i32, i32) #1

declare dso_local i8* @sepgsql_compute_create(i32, i8*, i32, i8*) #1

declare dso_local i32 @sepgsql_get_client_label(...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_7__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @quote_identifier(i8*) #1

declare dso_local i32 @sepgsql_avc_check_perms_label(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @SetSecurityLabel(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
