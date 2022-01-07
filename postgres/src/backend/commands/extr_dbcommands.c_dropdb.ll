; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_dropdb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_dropdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@DatabaseRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"database \22%s\22 does not exist\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"database \22%s\22 does not exist, skipping\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot drop a template database\00", align 1
@MyDatabaseId = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"cannot drop the currently open database\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"database \22%s\22 is used by an active logical replication slot\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"There is %d active slot.\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"There are %d active slots.\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"database \22%s\22 is being used by logical replication subscription\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"There is %d subscription.\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"There are %d subscriptions.\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"database \22%s\22 is being accessed by other users\00", align 1
@DATABASEOID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"cache lookup failed for database %u\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@CHECKPOINT_IMMEDIATE = common dso_local global i32 0, align 4
@CHECKPOINT_FORCE = common dso_local global i32 0, align 4
@CHECKPOINT_WAIT = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dropdb(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @DatabaseRelationId, align 4
  %17 = load i32, i32* @RowExclusiveLock, align 4
  %18 = call i32 @table_open(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @AccessExclusiveLock, align 4
  %21 = call i32 @get_db_info(i8* %19, i32 %20, i64* %7, i32* null, i32* null, i32* %8, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @ereport(i32 %27, i32 %31)
  br label %41

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @RowExclusiveLock, align 4
  %36 = call i32 @table_close(i32 %34, i32 %35)
  %37 = load i32, i32* @NOTICE, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @ereport(i32 %37, i32 %39)
  br label %173

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i64, i64* %7, align 8
  %44 = call i32 (...) @GetUserId()
  %45 = call i32 @pg_database_ownercheck(i64 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %49 = load i32, i32* @OBJECT_DATABASE, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @aclcheck_error(i32 %48, i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @DatabaseRelationId, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @InvokeObjectDropHook(i32 %53, i64 %54, i32 0)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @MyDatabaseId, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @ReplicationSlotsCountDBSlots(i64 %75, i32* %13, i32* %14)
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @errdetail_plural(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %86)
  %88 = call i32 @ereport(i32 %80, i32 %87)
  br label %89

89:                                               ; preds = %79, %74
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @CountDBSubscriptions(i64 %90)
  store i32 %91, i32* %15, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @errdetail_plural(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %99, i32 %100)
  %102 = call i32 @ereport(i32 %94, i32 %101)
  br label %103

103:                                              ; preds = %93, %89
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @TerminateOtherDBBackends(i64 %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @CountOtherDBBackends(i64 %110, i32* %11, i32* %12)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @errdetail_busy_db(i32 %119, i32 %120)
  %122 = call i32 @ereport(i32 %114, i32 %121)
  br label %123

123:                                              ; preds = %113, %109
  %124 = load i32, i32* @DATABASEOID, align 4
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @ObjectIdGetDatum(i64 %125)
  %127 = call %struct.TYPE_5__* @SearchSysCache1(i32 %124, i32 %126)
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** %10, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %129 = call i32 @HeapTupleIsValid(%struct.TYPE_5__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %123
  %132 = load i32, i32* @ERROR, align 4
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @elog(i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %131, %123
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = call i32 @CatalogTupleDelete(i32 %136, i32* %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %141 = call i32 @ReleaseSysCache(%struct.TYPE_5__* %140)
  %142 = load i64, i64* %7, align 8
  %143 = load i32, i32* @DatabaseRelationId, align 4
  %144 = call i32 @DeleteSharedComments(i64 %142, i32 %143)
  %145 = load i64, i64* %7, align 8
  %146 = load i32, i32* @DatabaseRelationId, align 4
  %147 = call i32 @DeleteSharedSecurityLabel(i64 %145, i32 %146)
  %148 = load i64, i64* %7, align 8
  %149 = load i32, i32* @InvalidOid, align 4
  %150 = call i32 @DropSetting(i64 %148, i32 %149)
  %151 = load i64, i64* %7, align 8
  %152 = call i32 @dropDatabaseDependencies(i64 %151)
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @ReplicationSlotsDropDBSlots(i64 %153)
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @DropDatabaseBuffers(i64 %155)
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @pgstat_drop_database(i64 %157)
  %159 = load i64, i64* %7, align 8
  %160 = call i32 @ForgetDatabaseSyncRequests(i64 %159)
  %161 = load i32, i32* @CHECKPOINT_IMMEDIATE, align 4
  %162 = load i32, i32* @CHECKPOINT_FORCE, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @RequestCheckpoint(i32 %165)
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @remove_dbtablespaces(i64 %167)
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @NoLock, align 4
  %171 = call i32 @table_close(i32 %169, i32 %170)
  %172 = call i32 (...) @ForceSyncCommit()
  br label %173

173:                                              ; preds = %135, %33
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @get_db_info(i8*, i32, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @pg_database_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #1

declare dso_local i32 @InvokeObjectDropHook(i32, i64, i32) #1

declare dso_local i32 @ReplicationSlotsCountDBSlots(i64, i32*, i32*) #1

declare dso_local i32 @errdetail_plural(i8*, i8*, i32, i32) #1

declare dso_local i32 @CountDBSubscriptions(i64) #1

declare dso_local i32 @TerminateOtherDBBackends(i64) #1

declare dso_local i64 @CountOtherDBBackends(i64, i32*, i32*) #1

declare dso_local i32 @errdetail_busy_db(i32, i32) #1

declare dso_local %struct.TYPE_5__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_5__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_5__*) #1

declare dso_local i32 @DeleteSharedComments(i64, i32) #1

declare dso_local i32 @DeleteSharedSecurityLabel(i64, i32) #1

declare dso_local i32 @DropSetting(i64, i32) #1

declare dso_local i32 @dropDatabaseDependencies(i64) #1

declare dso_local i32 @ReplicationSlotsDropDBSlots(i64) #1

declare dso_local i32 @DropDatabaseBuffers(i64) #1

declare dso_local i32 @pgstat_drop_database(i64) #1

declare dso_local i32 @ForgetDatabaseSyncRequests(i64) #1

declare dso_local i32 @RequestCheckpoint(i32) #1

declare dso_local i32 @remove_dbtablespaces(i64) #1

declare dso_local i32 @ForceSyncCommit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
