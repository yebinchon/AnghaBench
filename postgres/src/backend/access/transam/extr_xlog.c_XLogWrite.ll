; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogWrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_9__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@CritSectionCount = common dso_local global i64 0, align 8
@LogwrtResult = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@XLogCtl = common dso_local global %struct.TYPE_8__* null, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"xlog write request %X/%X is past end of log %X/%X\00", align 1
@openLogSegNo = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i64 0, align 8
@openLogFile = common dso_local global i64 0, align 8
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@WAIT_EVENT_WAL_WRITE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"could not write to log file %s at offset %u, length %zu: %m\00", align 1
@ThisTimeLineID = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@CHECKPOINT_CAUSE_XLOG = common dso_local global i32 0, align 4
@sync_method = common dso_local global i64 0, align 8
@SYNC_METHOD_OPEN = common dso_local global i64 0, align 8
@SYNC_METHOD_OPEN_DSYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @XLogWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogWrite(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = bitcast %struct.TYPE_7__* %3 to i64*
  store i64 %0, i64* %18, align 4
  store i32 %1, i32* %4, align 4
  %19 = load i64, i64* @CritSectionCount, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  %25 = bitcast %struct.TYPE_9__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_9__* @LogwrtResult to i8*), i8* align 8 %25, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %27 = call i32 @XLogRecPtrToBufIdx(i32 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %245, %2
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %246

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load i32, i32* @PANIC, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %47 = ashr i32 %46, 32
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %13, align 4
  %52 = ashr i32 %51, 32
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %50, i64 %53, i64 %55)
  br label %57

57:                                               ; preds = %44, %33
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %62 = icmp slt i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %65 = load i32, i32* @openLogSegNo, align 4
  %66 = load i64, i64* @wal_segment_size, align 8
  %67 = call i32 @XLByteInPrevSeg(i32 %64, i32 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72)
  %74 = load i64, i64* @openLogFile, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 (...) @XLogFileClose()
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %80 = load i32, i32* @openLogSegNo, align 4
  %81 = load i64, i64* @wal_segment_size, align 8
  %82 = call i32 @XLByteToPrevSeg(i32 %79, i32 %80, i64 %81)
  store i32 1, i32* %8, align 4
  %83 = load i32, i32* @openLogSegNo, align 4
  %84 = call i64 @XLogFileInit(i32 %83, i32* %8, i32 1)
  store i64 %84, i64* @openLogFile, align 8
  br label %85

85:                                               ; preds = %78, %57
  %86 = load i64, i64* @openLogFile, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %90 = load i32, i32* @openLogSegNo, align 4
  %91 = load i64, i64* @wal_segment_size, align 8
  %92 = call i32 @XLByteToPrevSeg(i32 %89, i32 %90, i64 %91)
  %93 = load i32, i32* @openLogSegNo, align 4
  %94 = call i64 @XLogFileOpen(i32 %93)
  store i64 %94, i64* @openLogFile, align 8
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %101 = load i32, i32* @XLOG_BLCKSZ, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i64, i64* @wal_segment_size, align 8
  %104 = call i64 @XLogSegmentOffset(i32 %102, i64 %103)
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %98, %95
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %111 = icmp sle i32 %109, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %105
  %116 = load i64, i64* %12, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @XLOG_BLCKSZ, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = load i64, i64* @wal_segment_size, align 8
  %123 = icmp sge i64 %121, %122
  br label %124

124:                                              ; preds = %115, %105
  %125 = phi i1 [ false, %105 ], [ %123, %115 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %230

138:                                              ; preds = %135, %129, %124
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @XLOG_BLCKSZ, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  store i8* %146, i8** %14, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @XLOG_BLCKSZ, align 4
  %149 = mul nsw i32 %147, %148
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %189, %138
  store i64 0, i64* @errno, align 8
  %152 = load i32, i32* @WAIT_EVENT_WAL_WRITE, align 4
  %153 = call i32 @pgstat_report_wait_start(i32 %152)
  %154 = load i64, i64* @openLogFile, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @pg_pwrite(i64 %154, i8* %155, i32 %156, i64 %157)
  store i32 %158, i32* %17, align 4
  %159 = call i32 (...) @pgstat_report_wait_end()
  %160 = load i32, i32* %17, align 4
  %161 = icmp sle i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %151
  %163 = load i64, i64* @errno, align 8
  %164 = load i64, i64* @EINTR, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %189

167:                                              ; preds = %162
  %168 = load i32, i32* @PANIC, align 4
  %169 = call i32 (...) @errcode_for_file_access()
  %170 = load i32, i32* @ThisTimeLineID, align 4
  %171 = load i32, i32* @openLogSegNo, align 4
  %172 = call i32 @XLogFileNameP(i32 %170, i32 %171)
  %173 = load i64, i64* %12, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %172, i64 %173, i32 %174)
  %176 = call i32 @ereport(i32 %168, i32 %175)
  br label %177

177:                                              ; preds = %167, %151
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %16, align 4
  %180 = sub nsw i32 %179, %178
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load i8*, i8** %14, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %14, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %12, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %12, align 8
  br label %189

189:                                              ; preds = %177, %166
  %190 = load i32, i32* %16, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %151, label %192

192:                                              ; preds = %189
  store i32 0, i32* %10, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %229

195:                                              ; preds = %192
  %196 = load i64, i64* @openLogFile, align 8
  %197 = load i32, i32* @openLogSegNo, align 4
  %198 = call i32 @issue_xlog_fsync(i64 %196, i32 %197)
  %199 = call i32 (...) @WalSndWakeupRequest()
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 1), align 4
  %201 = call i64 (...) @XLogArchivingActive()
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %195
  %204 = load i32, i32* @openLogSegNo, align 4
  %205 = call i32 @XLogArchiveNotifySeg(i32 %204)
  br label %206

206:                                              ; preds = %203, %195
  %207 = call i64 @time(i32* null)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 7
  store i64 %207, i64* %209, align 8
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 1), align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 8
  %213 = load i64, i64* @IsUnderPostmaster, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %206
  %216 = load i32, i32* @openLogSegNo, align 4
  %217 = call i64 @XLogCheckpointNeeded(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %215
  %220 = call i32 (...) @GetRedoRecPtr()
  %221 = load i32, i32* @openLogSegNo, align 4
  %222 = call i64 @XLogCheckpointNeeded(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @CHECKPOINT_CAUSE_XLOG, align 4
  %226 = call i32 @RequestCheckpoint(i32 %225)
  br label %227

227:                                              ; preds = %224, %219
  br label %228

228:                                              ; preds = %227, %215, %206
  br label %229

229:                                              ; preds = %228, %192
  br label %230

230:                                              ; preds = %229, %135
  %231 = load i32, i32* %5, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  br label %246

236:                                              ; preds = %230
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @NextBufIdx(i32 %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i32, i32* %10, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  br label %246

245:                                              ; preds = %241, %236
  br label %28

246:                                              ; preds = %244, %233, %28
  %247 = load i32, i32* %10, align 4
  %248 = icmp eq i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = call i32 @Assert(i32 %249)
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 1), align 4
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %295

255:                                              ; preds = %246
  %256 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 1), align 4
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %295

259:                                              ; preds = %255
  %260 = load i64, i64* @sync_method, align 8
  %261 = load i64, i64* @SYNC_METHOD_OPEN, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %292

263:                                              ; preds = %259
  %264 = load i64, i64* @sync_method, align 8
  %265 = load i64, i64* @SYNC_METHOD_OPEN_DSYNC, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %292

267:                                              ; preds = %263
  %268 = load i64, i64* @openLogFile, align 8
  %269 = icmp sge i64 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %267
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %272 = load i32, i32* @openLogSegNo, align 4
  %273 = load i64, i64* @wal_segment_size, align 8
  %274 = call i32 @XLByteInPrevSeg(i32 %271, i32 %272, i64 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %270
  %277 = call i32 (...) @XLogFileClose()
  br label %278

278:                                              ; preds = %276, %270, %267
  %279 = load i64, i64* @openLogFile, align 8
  %280 = icmp slt i64 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %283 = load i32, i32* @openLogSegNo, align 4
  %284 = load i64, i64* @wal_segment_size, align 8
  %285 = call i32 @XLByteToPrevSeg(i32 %282, i32 %283, i64 %284)
  %286 = load i32, i32* @openLogSegNo, align 4
  %287 = call i64 @XLogFileOpen(i32 %286)
  store i64 %287, i64* @openLogFile, align 8
  br label %288

288:                                              ; preds = %281, %278
  %289 = load i64, i64* @openLogFile, align 8
  %290 = load i32, i32* @openLogSegNo, align 4
  %291 = call i32 @issue_xlog_fsync(i64 %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %263, %259
  %293 = call i32 (...) @WalSndWakeupRequest()
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  store i32 %294, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 1), align 4
  br label %295

295:                                              ; preds = %292, %255, %246
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 4
  %298 = call i32 @SpinLockAcquire(i32* %297)
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 6
  %301 = bitcast %struct.TYPE_9__* %300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 4 bitcast (%struct.TYPE_9__* @LogwrtResult to i8*), i64 8, i1 false)
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %295
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 0), align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 8
  br label %313

313:                                              ; preds = %308, %295
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 1), align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %313
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @LogwrtResult, i32 0, i32 1), align 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 1
  store i32 %321, i32* %324, align 4
  br label %325

325:                                              ; preds = %320, %313
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XLogCtl, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 4
  %328 = call i32 @SpinLockRelease(i32* %327)
  ret void
}

declare dso_local i32 @Assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @XLogRecPtrToBufIdx(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @XLByteInPrevSeg(i32, i32, i64) #1

declare dso_local i32 @XLogFileClose(...) #1

declare dso_local i32 @XLByteToPrevSeg(i32, i32, i64) #1

declare dso_local i64 @XLogFileInit(i32, i32*, i32) #1

declare dso_local i64 @XLogFileOpen(i32) #1

declare dso_local i64 @XLogSegmentOffset(i32, i64) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @pg_pwrite(i64, i8*, i32, i64) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32, i64, i32) #1

declare dso_local i32 @XLogFileNameP(i32, i32) #1

declare dso_local i32 @issue_xlog_fsync(i64, i32) #1

declare dso_local i32 @WalSndWakeupRequest(...) #1

declare dso_local i64 @XLogArchivingActive(...) #1

declare dso_local i32 @XLogArchiveNotifySeg(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @XLogCheckpointNeeded(i32) #1

declare dso_local i32 @GetRedoRecPtr(...) #1

declare dso_local i32 @RequestCheckpoint(i32) #1

declare dso_local i32 @NextBufIdx(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
