; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_schemacmds.c_RenameSchema.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_schemacmds.c_RenameSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@NamespaceRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NAMESPACENAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_SCHEMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"schema \22%s\22 does not exist\00", align 1
@ERRCODE_DUPLICATE_SCHEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"schema \22%s\22 already exists\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERRCODE_RESERVED_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unacceptable schema name \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"The prefix \22pg_\22 is reserved for system schemas.\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenameSchema(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @NamespaceRelationId, align 4
  %12 = load i32, i32* @RowExclusiveLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @NAMESPACENAME, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @CStringGetDatum(i8* %15)
  %17 = call %struct.TYPE_8__* @SearchSysCacheCopy1(i32 %14, i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_UNDEFINED_SCHEMA, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @ereport(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = call i64 @GETSTRUCT(%struct.TYPE_8__* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @get_namespace_oid(i8* %35, i32 1)
  %37 = call i64 @OidIsValid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_DUPLICATE_SCHEMA, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = call i32 @ereport(i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %39, %28
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (...) @GetUserId()
  %49 = call i32 @pg_namespace_ownercheck(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* @ACLCHECK_NOT_OWNER, align 8
  %53 = load i32, i32* @OBJECT_SCHEMA, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @aclcheck_error(i64 %52, i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @MyDatabaseId, align 4
  %58 = call i32 (...) @GetUserId()
  %59 = load i32, i32* @ACL_CREATE, align 4
  %60 = call i64 @pg_database_aclcheck(i32 %57, i32 %58, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @ACLCHECK_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @OBJECT_DATABASE, align 4
  %67 = load i32, i32* @MyDatabaseId, align 4
  %68 = call i8* @get_database_name(i32 %67)
  %69 = call i32 @aclcheck_error(i64 %65, i32 %66, i8* %68)
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i32, i32* @allowSystemTableMods, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @IsReservedName(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_RESERVED_NAME, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  %83 = call i32 @errdetail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 @ereport(i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %77, %73, %70
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @namestrcpy(i32* %87, i8* %88)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = call i32 @CatalogTupleUpdate(i32 %90, i32* %92, %struct.TYPE_8__* %93)
  %95 = load i32, i32* @NamespaceRelationId, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @InvokeObjectPostAlterHook(i32 %95, i32 %96, i32 0)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @NamespaceRelationId, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ObjectAddressSet(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @NoLock, align 4
  %104 = call i32 @table_close(i32 %102, i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = call i32 @heap_freetuple(%struct.TYPE_8__* %105)
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_namespace_oid(i8*, i32) #1

declare dso_local i32 @pg_namespace_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i8*) #1

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #1

declare dso_local i8* @get_database_name(i32) #1

declare dso_local i64 @IsReservedName(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
