; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_ApplyWorkerMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_ApplyWorkerMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@logicalrep_worker_sighup = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@die = common dso_local global i32 0, align 4
@MyLogicalRepWorker = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"libpqwalreceiver\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"session_replication_role\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"replica\00", align 1
@PGC_SUSET = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ApplyContext\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@ApplyContext = common dso_local global i32 0, align 4
@MySubscription = common dso_local global %struct.TYPE_11__* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [120 x i8] c"logical replication apply worker for subscription %u will not start because the subscription was removed during startup\00", align 1
@MySubscriptionValid = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [123 x i8] c"logical replication apply worker for subscription \22%s\22 will not start because the subscription was disabled during startup\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"synchronous_commit\00", align 1
@PGC_BACKEND = common dso_local global i32 0, align 4
@SUBSCRIPTIONOID = common dso_local global i32 0, align 4
@subscription_change_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [95 x i8] c"logical replication table synchronization worker for subscription \22%s\22, table \22%s\22 has started\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"logical replication apply worker for subscription \22%s\22 has started\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"connecting to publisher using connection string \22%s\22\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"subscription has no replication slot set\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pg_%u\00", align 1
@replorigin_session_origin = common dso_local global i32 0, align 4
@wrconn = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"could not connect to the publisher: %s\00", align 1
@SUBSCRIPTIONRELMAP = common dso_local global i32 0, align 4
@invalidate_syncing_table_states = common dso_local global i32 0, align 4
@LOGICALREP_PROTO_VERSION_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApplyWorkerMain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @DatumGetInt32(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @NAMEDATALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @logicalrep_worker_attach(i32 %20)
  %22 = load i32, i32* @SIGHUP, align 4
  %23 = load i32, i32* @logicalrep_worker_sighup, align 4
  %24 = call i32 @pqsignal(i32 %22, i32 %23)
  %25 = load i32, i32* @SIGTERM, align 4
  %26 = load i32, i32* @die, align 4
  %27 = call i32 @pqsignal(i32 %25, i32 %26)
  %28 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %29 = call i32 (...) @GetCurrentTimestamp()
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  store i32 %29, i32* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 6
  store i32 %29, i32* %35, align 4
  %36 = call i32 @load_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %37 = load i32, i32* @PGC_SUSET, align 4
  %38 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %39 = call i32 @SetConfigOption(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BackgroundWorkerInitializeConnectionByOid(i32 %42, i32 %45, i32 0)
  %47 = load i32, i32* @TopMemoryContext, align 4
  %48 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %49 = call i32 @AllocSetContextCreate(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  store i32 %49, i32* @ApplyContext, align 4
  %50 = call i32 (...) @StartTransactionCommand()
  %51 = load i32, i32* @ApplyContext, align 4
  %52 = call i32 @MemoryContextSwitchTo(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call %struct.TYPE_11__* @GetSubscription(i8* %55, i32 1)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** @MySubscription, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %1
  %60 = load i32, i32* @LOG, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = call i32 @ereport(i32 %60, i32 %64)
  %66 = call i32 @proc_exit(i32 0)
  br label %67

67:                                               ; preds = %59, %1
  store i32 1, i32* @MySubscriptionValid, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @MemoryContextSwitchTo(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @LOG, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  %80 = call i32 @ereport(i32 %75, i32 %79)
  %81 = call i32 @proc_exit(i32 0)
  br label %82

82:                                               ; preds = %74, %67
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @PGC_BACKEND, align 4
  %87 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %88 = call i32 @SetConfigOption(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @SUBSCRIPTIONOID, align 4
  %90 = load i32, i32* @subscription_change_cb, align 4
  %91 = call i32 @CacheRegisterSyscacheCallback(i32 %89, i32 %90, i32 0)
  %92 = call i64 (...) @am_tablesync_worker()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = load i32, i32* @LOG, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyLogicalRepWorker, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @get_rel_name(i32 %101)
  %103 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0), i8* %98, i32 %102)
  %104 = call i32 @ereport(i32 %95, i32 %103)
  br label %112

105:                                              ; preds = %82
  %106 = load i32, i32* @LOG, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  %111 = call i32 @ereport(i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %105, %94
  %113 = call i32 (...) @CommitTransactionCommand()
  %114 = load i32, i32* @DEBUG1, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @elog(i32 %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  %119 = call i64 (...) @am_tablesync_worker()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %112
  %122 = call i8* @LogicalRepSyncTableStart(i32* %7)
  store i8* %122, i8** %10, align 8
  %123 = load i32, i32* @ApplyContext, align 4
  %124 = call i32 @MemoryContextSwitchTo(i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = call i8* @pstrdup(i8* %125)
  store i8* %126, i8** %8, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @MemoryContextSwitchTo(i32 %127)
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @pfree(i8* %129)
  br label %177

131:                                              ; preds = %112
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %8, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* @ERROR, align 4
  %139 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %140 = call i32 @ereport(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %131
  %142 = call i32 (...) @StartTransactionCommand()
  %143 = trunc i64 %17 to i32
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @snprintf(i8* %19, i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %146)
  %148 = call i32 @replorigin_by_name(i8* %19, i32 1)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @OidIsValid(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %141
  %153 = call i32 @replorigin_create(i8* %19)
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %152, %141
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @replorigin_session_setup(i32 %155)
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* @replorigin_session_origin, align 4
  %158 = call i32 @replorigin_session_get_progress(i32 0)
  store i32 %158, i32* %7, align 4
  %159 = call i32 (...) @CommitTransactionCommand()
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32* @walrcv_connect(i32 %162, i32 1, i8* %165, i8** %13)
  store i32* %166, i32** @wrconn, align 8
  %167 = load i32*, i32** @wrconn, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %154
  %170 = load i32, i32* @ERROR, align 4
  %171 = load i8*, i8** %13, align 8
  %172 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %171)
  %173 = call i32 @ereport(i32 %170, i32 %172)
  br label %174

174:                                              ; preds = %169, %154
  %175 = load i32*, i32** @wrconn, align 8
  %176 = call i32 @walrcv_identify_system(i32* %175, i32* %12)
  br label %177

177:                                              ; preds = %174, %121
  %178 = load i32, i32* @SUBSCRIPTIONRELMAP, align 4
  %179 = load i32, i32* @invalidate_syncing_table_states, align 4
  %180 = call i32 @CacheRegisterSyscacheCallback(i32 %178, i32 %179, i32 0)
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load i32, i32* %7, align 4
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i32 %182, i32* %183, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i8* %184, i8** %185, align 8
  %186 = load i32, i32* @LOGICALREP_PROTO_VERSION_NUM, align 4
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MySubscription, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load i32*, i32** @wrconn, align 8
  %197 = call i32 @walrcv_startstreaming(i32* %196, %struct.TYPE_10__* %9)
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @LogicalRepApplyLoop(i32 %198)
  %200 = call i32 @proc_exit(i32 0)
  %201 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %201)
  ret void
}

declare dso_local i32 @DatumGetInt32(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @logicalrep_worker_attach(i32) #1

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @load_file(i8*, i32) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i32 @BackgroundWorkerInitializeConnectionByOid(i32, i32, i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_11__* @GetSubscription(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

declare dso_local i64 @am_tablesync_worker(...) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @LogicalRepSyncTableStart(i32*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @replorigin_by_name(i8*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @replorigin_create(i8*) #1

declare dso_local i32 @replorigin_session_setup(i32) #1

declare dso_local i32 @replorigin_session_get_progress(i32) #1

declare dso_local i32* @walrcv_connect(i32, i32, i8*, i8**) #1

declare dso_local i32 @walrcv_identify_system(i32*, i32*) #1

declare dso_local i32 @walrcv_startstreaming(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @LogicalRepApplyLoop(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
