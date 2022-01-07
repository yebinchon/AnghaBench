; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_RenameDatabase.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_RenameDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DatabaseRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"database \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"permission denied to rename database\00", align 1
@ERRCODE_DUPLICATE_DATABASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"database \22%s\22 already exists\00", align 1
@MyDatabaseId = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"current database cannot be renamed\00", align 1
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"database \22%s\22 is being accessed by other users\00", align 1
@DATABASEOID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"cache lookup failed for database %u\00", align 1
@NoLock = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenameDatabase(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @DatabaseRelationId, align 4
  %12 = load i32, i32* @RowExclusiveLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @AccessExclusiveLock, align 4
  %16 = call i32 @get_db_info(i8* %14, i32 %15, i64* %5, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (...) @GetUserId()
  %28 = call i32 @pg_database_ownercheck(i64 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %32 = load i32, i32* @OBJECT_DATABASE, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @aclcheck_error(i32 %31, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = call i32 (...) @have_createdb_privilege()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @get_database_oid(i8* %45, i32 1)
  %47 = call i64 @OidIsValid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_DUPLICATE_DATABASE, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = call i32 @ereport(i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @MyDatabaseId, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @CountOtherDBBackends(i64 %67, i32* %8, i32* %9)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @errdetail_busy_db(i32 %76, i32 %77)
  %79 = call i32 @ereport(i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %70, %66
  %81 = load i32, i32* @DATABASEOID, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @ObjectIdGetDatum(i64 %82)
  %84 = call %struct.TYPE_7__* @SearchSysCacheCopy1(i32 %81, i32 %83)
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %6, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @ERROR, align 4
  %90 = load i64, i64* %5, align 8
  %91 = call i32 (i32, i8*, ...) @elog(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = call i64 @GETSTRUCT(%struct.TYPE_7__* %93)
  %95 = inttoptr i64 %94 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @namestrcpy(i32* %96, i8* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = call i32 @CatalogTupleUpdate(i32 %99, i32* %101, %struct.TYPE_7__* %102)
  %104 = load i32, i32* @DatabaseRelationId, align 4
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @InvokeObjectPostAlterHook(i32 %104, i64 %105, i32 0)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @DatabaseRelationId, align 4
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @ObjectAddressSet(i32 %107, i32 %108, i64 %109)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @NoLock, align 4
  %113 = call i32 @table_close(i32 %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @get_db_info(i8*, i32, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pg_database_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #1

declare dso_local i32 @have_createdb_privilege(...) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_database_oid(i8*, i32) #1

declare dso_local i64 @CountOtherDBBackends(i64, i32*, i32*) #1

declare dso_local i32 @errdetail_busy_db(i32, i32) #1

declare dso_local %struct.TYPE_7__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_7__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
