; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_WaitForWALToBecomeAvailable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_WaitForWALToBecomeAvailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@WaitForWALToBecomeAvailable.last_fail_time = internal global i8* null, align 8
@InArchiveRecovery = common dso_local global i64 0, align 8
@currentSource = common dso_local global i32 0, align 4
@lastSourceFailed = common dso_local global i32 0, align 4
@StandbyMode = common dso_local global i32 0, align 4
@PrimaryConnInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RedoStartLSN = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_6__* null, align 8
@expectedTLEs = common dso_local global i32 0, align 4
@curFileTLI = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [124 x i8] c"according to history file, WAL location %X/%X belongs to timeline %u, but previous recovered WAL file came from timeline %u\00", align 1
@PrimarySlotName = common dso_local global i32 0, align 4
@receivedUpto = common dso_local global i32 0, align 4
@recoveryTargetTimeLineGoal = common dso_local global i32 0, align 4
@RECOVERY_TARGET_TIMELINE_LATEST = common dso_local global i32 0, align 4
@wal_retrieve_retry_interval = common dso_local global i32 0, align 4
@XLogCtl = common dso_local global %struct.TYPE_5__* null, align 8
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_RECOVERY_WAL_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unexpected WAL source %d\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"switched WAL source from %s to %s after %s\00", align 1
@xlogSourceNames = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@readFile = common dso_local global i32 0, align 4
@readSegNo = common dso_local global i32 0, align 4
@XLOG_FROM_ANY = common dso_local global i32 0, align 4
@receiveTLI = common dso_local global i32 0, align 4
@XLogReceiptTime = common dso_local global i8* null, align 8
@PANIC = common dso_local global i32 0, align 4
@readSource = common dso_local global i32 0, align 4
@XLogReceiptSource = common dso_local global i32 0, align 4
@WAIT_EVENT_RECOVERY_WAL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @WaitForWALToBecomeAvailable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WaitForWALToBecomeAvailable(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* @InArchiveRecovery, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 129, i32* @currentSource, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @currentSource, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 130, i32* @currentSource, align 4
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %22
  br label %29

29:                                               ; preds = %286, %28
  %30 = load i32, i32* @currentSource, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @lastSourceFailed, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %148

33:                                               ; preds = %29
  %34 = load i32, i32* @currentSource, align 4
  switch i32 %34, label %143 [
    i32 130, label %35
    i32 129, label %35
    i32 128, label %91
  ]

35:                                               ; preds = %33, %33
  %36 = load i32, i32* @StandbyMode, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call i32 (...) @CheckForStandbyTrigger()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @ShutdownWalRcv()
  store i32 0, i32* %5, align 4
  br label %288

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @StandbyMode, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %288

47:                                               ; preds = %43
  %48 = load i32, i32* @PrimaryConnInfo, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %47
  %51 = load i32, i32* @PrimaryConnInfo, align 4
  %52 = call i32 @strcmp(i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @RedoStartLSN, align 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  br label %83

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @expectedTLEs, align 4
  %67 = call i32 @tliOfPointInHistory(i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* @curFileTLI, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @curFileTLI, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 32
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @curFileTLI, align 4
  %81 = call i32 (i32, i8*, i32, ...) @elog(i32 %75, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %70, %63
  br label %83

83:                                               ; preds = %82, %57
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* @curFileTLI, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @PrimaryConnInfo, align 4
  %88 = load i32, i32* @PrimarySlotName, align 4
  %89 = call i32 @RequestXLogStreaming(i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 0, i32* @receivedUpto, align 4
  br label %90

90:                                               ; preds = %83, %50, %47
  store i32 128, i32* @currentSource, align 4
  br label %147

91:                                               ; preds = %33
  %92 = load i32, i32* @StandbyMode, align 4
  %93 = call i32 @Assert(i32 %92)
  %94 = call i32 (...) @WalRcvStreaming()
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (...) @ShutdownWalRcv()
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* @recoveryTargetTimeLineGoal, align 4
  %100 = load i32, i32* @RECOVERY_TARGET_TIMELINE_LATEST, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = call i32 (...) @rescanLatestTimeLine()
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 130, i32* @currentSource, align 4
  br label %147

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %98
  %108 = call i8* (...) @GetCurrentTimestamp()
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** @WaitForWALToBecomeAvailable.last_fail_time, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* @wal_retrieve_retry_interval, align 4
  %112 = call i32 @TimestampDifferenceExceeds(i8* %109, i8* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %141, label %114

114:                                              ; preds = %107
  %115 = load i8*, i8** @WaitForWALToBecomeAvailable.last_fail_time, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @TimestampDifference(i8* %115, i8* %116, i64* %15, i32* %17)
  %118 = load i32, i32* @wal_retrieve_retry_interval, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %15, align 8
  %121 = mul nsw i64 %120, 1000
  %122 = load i32, i32* %17, align 4
  %123 = sdiv i32 %122, 1000
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = sub nsw i64 %119, %125
  store i64 %126, i64* %16, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* @WL_LATCH_SET, align 4
  %130 = load i32, i32* @WL_TIMEOUT, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %133 = or i32 %131, %132
  %134 = load i64, i64* %16, align 8
  %135 = load i32, i32* @WAIT_EVENT_RECOVERY_WAL_STREAM, align 4
  %136 = call i32 @WaitLatch(i32* %128, i32 %133, i64 %134, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = call i32 @ResetLatch(i32* %138)
  %140 = call i8* (...) @GetCurrentTimestamp()
  store i8* %140, i8** %10, align 8
  br label %141

141:                                              ; preds = %114, %107
  %142 = load i8*, i8** %10, align 8
  store i8* %142, i8** @WaitForWALToBecomeAvailable.last_fail_time, align 8
  store i32 130, i32* @currentSource, align 4
  br label %147

143:                                              ; preds = %33
  %144 = load i32, i32* @ERROR, align 4
  %145 = load i32, i32* @currentSource, align 4
  %146 = call i32 (i32, i8*, i32, ...) @elog(i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %141, %105, %90
  br label %157

148:                                              ; preds = %29
  %149 = load i32, i32* @currentSource, align 4
  %150 = icmp eq i32 %149, 129
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i64, i64* @InArchiveRecovery, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 130, i32* @currentSource, align 4
  br label %155

155:                                              ; preds = %154, %151
  br label %156

156:                                              ; preds = %155, %148
  br label %157

157:                                              ; preds = %156, %147
  %158 = load i32, i32* @currentSource, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load i32, i32* @DEBUG2, align 4
  %163 = load i32*, i32** @xlogSourceNames, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** @xlogSourceNames, align 8
  %169 = load i32, i32* @currentSource, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @lastSourceFailed, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %177 = call i32 (i32, i8*, i32, ...) @elog(i32 %162, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %167, i32 %172, i8* %176)
  br label %178

178:                                              ; preds = %161, %157
  store i32 0, i32* @lastSourceFailed, align 4
  %179 = load i32, i32* @currentSource, align 4
  switch i32 %179, label %282 [
    i32 130, label %180
    i32 129, label %180
    i32 128, label %206
  ]

180:                                              ; preds = %178, %178
  %181 = load i32, i32* @readFile, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* @readFile, align 4
  %185 = call i32 @close(i32 %184)
  store i32 -1, i32* @readFile, align 4
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 0, i32* @curFileTLI, align 4
  br label %190

190:                                              ; preds = %189, %186
  %191 = load i32, i32* @readSegNo, align 4
  %192 = load i32, i32* @DEBUG2, align 4
  %193 = load i32, i32* @currentSource, align 4
  %194 = icmp eq i32 %193, 130
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @XLOG_FROM_ANY, align 4
  br label %199

197:                                              ; preds = %190
  %198 = load i32, i32* @currentSource, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = call i32 @XLogFileReadAnyTLI(i32 %191, i32 %192, i32 %200)
  store i32 %201, i32* @readFile, align 4
  %202 = load i32, i32* @readFile, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store i32 1, i32* %5, align 4
  br label %288

205:                                              ; preds = %199
  store i32 1, i32* @lastSourceFailed, align 4
  br label %286

206:                                              ; preds = %178
  %207 = load i32, i32* @StandbyMode, align 4
  %208 = call i32 @Assert(i32 %207)
  %209 = call i32 (...) @WalRcvStreaming()
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %206
  store i32 1, i32* @lastSourceFailed, align 4
  br label %286

212:                                              ; preds = %206
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @receivedUpto, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* %18, align 4
  br label %237

217:                                              ; preds = %212
  %218 = call i32 @GetWalRcvWriteRecPtr(i32* %19, i32* @receiveTLI)
  store i32 %218, i32* @receivedUpto, align 4
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @receivedUpto, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = load i32, i32* @receiveTLI, align 4
  %224 = load i32, i32* @curFileTLI, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %222
  store i32 1, i32* %18, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp sle i32 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = call i8* (...) @GetCurrentTimestamp()
  store i8* %231, i8** @XLogReceiptTime, align 8
  %232 = load i8*, i8** @XLogReceiptTime, align 8
  %233 = call i32 @SetCurrentChunkStartTime(i8* %232)
  br label %234

234:                                              ; preds = %230, %226
  br label %236

235:                                              ; preds = %222, %217
  store i32 0, i32* %18, align 4
  br label %236

236:                                              ; preds = %235, %234
  br label %237

237:                                              ; preds = %236, %216
  %238 = load i32, i32* %18, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %237
  %241 = load i32, i32* @readFile, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %240
  %244 = load i32, i32* @expectedTLEs, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* @receiveTLI, align 4
  %248 = call i32 @readTimeLineHistory(i32 %247)
  store i32 %248, i32* @expectedTLEs, align 4
  br label %249

249:                                              ; preds = %246, %243
  %250 = load i32, i32* @readSegNo, align 4
  %251 = load i32, i32* @PANIC, align 4
  %252 = load i32, i32* @receiveTLI, align 4
  %253 = call i32 @XLogFileRead(i32 %250, i32 %251, i32 %252, i32 128, i32 0)
  store i32 %253, i32* @readFile, align 4
  %254 = load i32, i32* @readFile, align 4
  %255 = icmp sge i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = call i32 @Assert(i32 %256)
  br label %259

258:                                              ; preds = %240
  store i32 128, i32* @readSource, align 4
  store i32 128, i32* @XLogReceiptSource, align 4
  store i32 1, i32* %5, align 4
  br label %288

259:                                              ; preds = %249
  br label %286

260:                                              ; preds = %237
  %261 = call i32 (...) @CheckForStandbyTrigger()
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store i32 1, i32* @lastSourceFailed, align 4
  br label %286

264:                                              ; preds = %260
  %265 = load i32, i32* %11, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %264
  %268 = call i32 (...) @WalRcvForceReply()
  store i32 1, i32* %11, align 4
  br label %269

269:                                              ; preds = %267, %264
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* @WL_LATCH_SET, align 4
  %273 = load i32, i32* @WL_TIMEOUT, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @WAIT_EVENT_RECOVERY_WAL_ALL, align 4
  %278 = call i32 @WaitLatch(i32* %271, i32 %276, i64 5000, i32 %277)
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  %281 = call i32 @ResetLatch(i32* %280)
  br label %286

282:                                              ; preds = %178
  %283 = load i32, i32* @ERROR, align 4
  %284 = load i32, i32* @currentSource, align 4
  %285 = call i32 (i32, i8*, i32, ...) @elog(i32 %283, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %284)
  br label %286

286:                                              ; preds = %282, %269, %263, %259, %211, %205
  %287 = call i32 (...) @HandleStartupProcInterrupts()
  br label %29

288:                                              ; preds = %258, %204, %46, %41
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local i32 @CheckForStandbyTrigger(...) #1

declare dso_local i32 @ShutdownWalRcv(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @tliOfPointInHistory(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @RequestXLogStreaming(i32, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @WalRcvStreaming(...) #1

declare dso_local i32 @rescanLatestTimeLine(...) #1

declare dso_local i8* @GetCurrentTimestamp(...) #1

declare dso_local i32 @TimestampDifferenceExceeds(i8*, i8*, i32) #1

declare dso_local i32 @TimestampDifference(i8*, i8*, i64*, i32*) #1

declare dso_local i32 @WaitLatch(i32*, i32, i64, i32) #1

declare dso_local i32 @ResetLatch(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @XLogFileReadAnyTLI(i32, i32, i32) #1

declare dso_local i32 @GetWalRcvWriteRecPtr(i32*, i32*) #1

declare dso_local i32 @SetCurrentChunkStartTime(i8*) #1

declare dso_local i32 @readTimeLineHistory(i32) #1

declare dso_local i32 @XLogFileRead(i32, i32, i32, i32, i32) #1

declare dso_local i32 @WalRcvForceReply(...) #1

declare dso_local i32 @HandleStartupProcInterrupts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
