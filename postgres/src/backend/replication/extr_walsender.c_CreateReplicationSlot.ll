; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_CreateReplicationSlot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_CreateReplicationSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i8*, i64, i32 }
%struct.TYPE_11__ = type { i32 }

@MAXFNAMELEN = common dso_local global i32 0, align 4
@CRS_EXPORT_SNAPSHOT = common dso_local global i64 0, align 8
@MyReplicationSlot = common dso_local global %struct.TYPE_13__* null, align 8
@sendTimeLineIsHistoric = common dso_local global i32 0, align 4
@ThisTimeLineID = common dso_local global i32 0, align 4
@sendTimeLine = common dso_local global i32 0, align 4
@REPLICATION_KIND_PHYSICAL = common dso_local global i64 0, align 8
@RS_TEMPORARY = common dso_local global i32 0, align 4
@RS_PERSISTENT = common dso_local global i32 0, align 4
@RS_EPHEMERAL = common dso_local global i32 0, align 4
@REPLICATION_KIND_LOGICAL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s must not be called inside a transaction\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"CREATE_REPLICATION_SLOT ... EXPORT_SNAPSHOT\00", align 1
@CRS_USE_SNAPSHOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"%s must be called inside a transaction\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CREATE_REPLICATION_SLOT ... USE_SNAPSHOT\00", align 1
@XactIsoLevel = common dso_local global i64 0, align 8
@XACT_REPEATABLE_READ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [64 x i8] c"%s must be called in REPEATABLE READ isolation mode transaction\00", align 1
@FirstSnapshotSet = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"%s must be called before any query\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s must not be called in a subtransaction\00", align 1
@NIL = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@logical_read_xlog_page = common dso_local global i32 0, align 4
@WalSndPrepareWrite = common dso_local global i32 0, align 4
@WalSndWriteData = common dso_local global i32 0, align 4
@WalSndUpdateProgress = common dso_local global i32 0, align 4
@last_reply_timestamp = common dso_local global i64 0, align 8
@MyProc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%X/%X\00", align 1
@DestRemoteSimple = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"slot_name\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"consistent_point\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"snapshot_name\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"output_plugin\00", align 1
@TTSOpsVirtual = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CreateReplicationSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateReplicationSlot(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i8* null, i8** %3, align 8
  %17 = load i32, i32* @MAXFNAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load i64, i64* @CRS_EXPORT_SNAPSHOT, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyReplicationSlot, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = call i32 @parseCreateReplSlotOptions(%struct.TYPE_12__* %27, i32* %7, i64* %8)
  store i32 0, i32* @sendTimeLineIsHistoric, align 4
  %29 = load i32, i32* @ThisTimeLineID, align 4
  store i32 %29, i32* @sendTimeLine, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REPLICATION_KIND_PHYSICAL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @RS_TEMPORARY, align 4
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @RS_PERSISTENT, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @ReplicationSlotCreate(i32 %38, i32 0, i32 %48)
  br label %66

50:                                               ; preds = %1
  %51 = call i32 (...) @CheckLogicalDecodingRequirements()
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @RS_TEMPORARY, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @RS_EPHEMERAL, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @ReplicationSlotCreate(i32 %54, i32 1, i32 %64)
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @REPLICATION_KIND_LOGICAL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %164

72:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @CRS_EXPORT_SNAPSHOT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = call i64 (...) @IsTransactionBlock()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @ERROR, align 4
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  store i32 1, i32* %15, align 4
  br label %119

84:                                               ; preds = %72
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @CRS_USE_SNAPSHOT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  %89 = call i64 (...) @IsTransactionBlock()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @ERROR, align 4
  %93 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 @ereport(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i64, i64* @XactIsoLevel, align 8
  %97 = load i64, i64* @XACT_REPEATABLE_READ, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @ERROR, align 4
  %101 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %102 = call i32 @ereport(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i64, i64* @FirstSnapshotSet, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @ERROR, align 4
  %108 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %109 = call i32 @ereport(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = call i64 (...) @IsSubTransaction()
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @ERROR, align 4
  %115 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %116 = call i32 @ereport(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  store i32 1, i32* %15, align 4
  br label %118

118:                                              ; preds = %117, %84
  br label %119

119:                                              ; preds = %118, %83
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @NIL, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @InvalidXLogRecPtr, align 4
  %126 = load i32, i32* @logical_read_xlog_page, align 4
  %127 = load i32, i32* @WalSndPrepareWrite, align 4
  %128 = load i32, i32* @WalSndWriteData, align 4
  %129 = load i32, i32* @WalSndUpdateProgress, align 4
  %130 = call %struct.TYPE_11__* @CreateInitDecodingContext(i8* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %14, align 8
  store i64 0, i64* @last_reply_timestamp, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %132 = call i32 @DecodingContextFindStartpoint(%struct.TYPE_11__* %131)
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @CRS_EXPORT_SNAPSHOT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %119
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @SnapBuildExportSnapshot(i32 %139)
  store i8* %140, i8** %3, align 8
  br label %154

141:                                              ; preds = %119
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @CRS_USE_SNAPSHOT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @SnapBuildInitialSnapshot(i32 %148)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* @MyProc, align 4
  %152 = call i32 @RestoreTransactionSnapshot(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %141
  br label %154

154:                                              ; preds = %153, %136
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %156 = call i32 @FreeDecodingContext(%struct.TYPE_11__* %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %154
  %162 = call i32 (...) @ReplicationSlotPersist()
  br label %163

163:                                              ; preds = %161, %154
  br label %184

164:                                              ; preds = %66
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @REPLICATION_KIND_PHYSICAL, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = call i32 (...) @ReplicationSlotReserveWal()
  %175 = call i32 (...) @ReplicationSlotMarkDirty()
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %173
  %181 = call i32 (...) @ReplicationSlotSave()
  br label %182

182:                                              ; preds = %180, %173
  br label %183

183:                                              ; preds = %182, %170, %164
  br label %184

184:                                              ; preds = %183, %163
  %185 = trunc i64 %18 to i32
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyReplicationSlot, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 32
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyReplicationSlot, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @snprintf(i8* %20, i32 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %190, i32 %194)
  %196 = load i32, i32* @DestRemoteSimple, align 4
  %197 = call i32* @CreateDestReceiver(i32 %196)
  store i32* %197, i32** %9, align 8
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %199 = call i32 @MemSet(i32* %198, i32 0, i32 16)
  %200 = call i32 @CreateTemplateTupleDesc(i32 4)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @TEXTOID, align 4
  %203 = call i32 @TupleDescInitBuiltinEntry(i32 %201, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %202, i32 -1, i32 0)
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @TEXTOID, align 4
  %206 = call i32 @TupleDescInitBuiltinEntry(i32 %204, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %205, i32 -1, i32 0)
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @TEXTOID, align 4
  %209 = call i32 @TupleDescInitBuiltinEntry(i32 %207, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %208, i32 -1, i32 0)
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @TEXTOID, align 4
  %212 = call i32 @TupleDescInitBuiltinEntry(i32 %210, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %211, i32 -1, i32 0)
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* %11, align 4
  %215 = call i32* @begin_tup_output_tupdesc(i32* %213, i32 %214, i32* @TTSOpsVirtual)
  store i32* %215, i32** %10, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyReplicationSlot, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @NameStr(i32 %219)
  store i8* %220, i8** %6, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = call i32 @CStringGetTextDatum(i8* %221)
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %222, i32* %223, align 16
  %224 = call i32 @CStringGetTextDatum(i8* %20)
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %224, i32* %225, align 4
  %226 = load i8*, i8** %3, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %184
  %229 = load i8*, i8** %3, align 8
  %230 = call i32 @CStringGetTextDatum(i8* %229)
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %230, i32* %231, align 8
  br label %234

232:                                              ; preds = %184
  %233 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 1, i32* %233, align 8
  br label %234

234:                                              ; preds = %232, %228
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @CStringGetTextDatum(i8* %242)
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %243, i32* %244, align 4
  br label %247

245:                                              ; preds = %234
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 1, i32* %246, align 4
  br label %247

247:                                              ; preds = %245, %239
  %248 = load i32*, i32** %10, align 8
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %251 = call i32 @do_tup_output(i32* %248, i32* %249, i32* %250)
  %252 = load i32*, i32** %10, align 8
  %253 = call i32 @end_tup_output(i32* %252)
  %254 = call i32 (...) @ReplicationSlotRelease()
  %255 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %255)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @parseCreateReplSlotOptions(%struct.TYPE_12__*, i32*, i64*) #2

declare dso_local i32 @ReplicationSlotCreate(i32, i32, i32) #2

declare dso_local i32 @CheckLogicalDecodingRequirements(...) #2

declare dso_local i64 @IsTransactionBlock(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i64 @IsSubTransaction(...) #2

declare dso_local %struct.TYPE_11__* @CreateInitDecodingContext(i8*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DecodingContextFindStartpoint(%struct.TYPE_11__*) #2

declare dso_local i8* @SnapBuildExportSnapshot(i32) #2

declare dso_local i32 @SnapBuildInitialSnapshot(i32) #2

declare dso_local i32 @RestoreTransactionSnapshot(i32, i32) #2

declare dso_local i32 @FreeDecodingContext(%struct.TYPE_11__*) #2

declare dso_local i32 @ReplicationSlotPersist(...) #2

declare dso_local i32 @ReplicationSlotReserveWal(...) #2

declare dso_local i32 @ReplicationSlotMarkDirty(...) #2

declare dso_local i32 @ReplicationSlotSave(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32* @CreateDestReceiver(i32) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i32 @CreateTemplateTupleDesc(i32) #2

declare dso_local i32 @TupleDescInitBuiltinEntry(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32* @begin_tup_output_tupdesc(i32*, i32, i32*) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @do_tup_output(i32*, i32*, i32*) #2

declare dso_local i32 @end_tup_output(i32*) #2

declare dso_local i32 @ReplicationSlotRelease(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
