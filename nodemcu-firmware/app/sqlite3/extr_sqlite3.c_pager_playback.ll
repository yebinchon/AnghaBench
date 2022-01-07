; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_playback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i64, i64, i64, i32, %struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@PAGER_WRITER_DBMOD = common dso_local global i64 0, align 8
@PAGER_OPEN = common dso_local global i64 0, align 8
@SQLITE_NOTICE_RECOVER_ROLLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"recovered %d pages from %s\00", align 1
@SQLITE_FCNTL_DB_UNCHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @pager_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_playback(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @isOpen(i32 %20)
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sqlite3OsFileSize(i32 %25, i64* %6)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %195

31:                                               ; preds = %2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %12, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 @readMasterJournal(i32 %37, i8* %38, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %31
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %59 = call i32 @sqlite3OsAccess(%struct.TYPE_16__* %56, i8* %57, i32 %58, i32* %11)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %49, %31
  store i8* null, i8** %12, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @SQLITE_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %60
  br label %195

68:                                               ; preds = %64
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %68, %194
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @readJournalHdr(%struct.TYPE_17__* %73, i32 %74, i64 %75, i32* %7, i32* %9)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @SQLITE_DONE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @SQLITE_OK, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %80
  br label %195

87:                                               ; preds = %72
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %94)
  %96 = icmp eq i64 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %100)
  %102 = sub nsw i64 %99, %101
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = call i64 @JOURNAL_PG_SZ(%struct.TYPE_17__* %103)
  %105 = sdiv i64 %102, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %90, %87
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %107
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %117)
  %119 = add nsw i64 %116, %118
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %113
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = call i64 @JOURNAL_PG_SZ(%struct.TYPE_17__* %130)
  %132 = sdiv i64 %129, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %124, %113, %110, %107
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__* %138)
  %140 = icmp eq i64 %137, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %134
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @pager_truncate(%struct.TYPE_17__* %142, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @SQLITE_OK, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %195

149:                                              ; preds = %141
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %134
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %191, %153
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %194

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %163 = call i32 @pager_reset(%struct.TYPE_17__* %162)
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = call i32 @pager_playback_one_page(%struct.TYPE_17__* %165, i64* %167, i32 0, i32 1, i32 0)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @SQLITE_OK, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %190

175:                                              ; preds = %164
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @SQLITE_DONE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i64, i64* %6, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  br label %194

183:                                              ; preds = %175
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @SQLITE_OK, align 4
  store i32 %188, i32* %10, align 4
  br label %195

189:                                              ; preds = %183
  br label %195

190:                                              ; preds = %172
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %154

194:                                              ; preds = %179, %154
  br label %72

195:                                              ; preds = %189, %187, %148, %86, %67, %30
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 8
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @SQLITE_OK, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %195
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %12, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 5
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  %218 = call i32 @readMasterJournal(i32 %210, i8* %211, i64 %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @SQLITE_OK, align 4
  %221 = icmp ne i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @testcase(i32 %222)
  br label %224

224:                                              ; preds = %204, %195
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @SQLITE_OK, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %224
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @PAGER_WRITER_DBMOD, align 8
  %233 = icmp sge i64 %231, %232
  br i1 %233, label %240, label %234

234:                                              ; preds = %228
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @PAGER_OPEN, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234, %228
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %242 = call i32 @sqlite3PagerSync(%struct.TYPE_17__* %241, i32 0)
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %240, %234, %224
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @SQLITE_OK, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %243
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 0
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @pager_end_transaction(%struct.TYPE_17__* %248, i32 %254, i32 0)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @SQLITE_OK, align 4
  %258 = icmp ne i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @testcase(i32 %259)
  br label %261

261:                                              ; preds = %247, %243
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* @SQLITE_OK, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %283

265:                                              ; preds = %261
  %266 = load i8*, i8** %12, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 0
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %265
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %271
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %276 = load i8*, i8** %12, align 8
  %277 = call i32 @pager_delmaster(%struct.TYPE_17__* %275, i8* %276)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* @SQLITE_OK, align 4
  %280 = icmp ne i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @testcase(i32 %281)
  br label %283

283:                                              ; preds = %274, %271, %265, %261
  %284 = load i32, i32* %4, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %296

286:                                              ; preds = %283
  %287 = load i32, i32* %14, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %286
  %290 = load i32, i32* @SQLITE_NOTICE_RECOVER_ROLLBACK, align 4
  %291 = load i32, i32* %14, align 4
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @sqlite3_log(i32 %290, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %291, i32 %294)
  br label %296

296:                                              ; preds = %289, %286, %283
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %298 = call i32 @setSectorSize(%struct.TYPE_17__* %297)
  %299 = load i32, i32* %10, align 4
  ret i32 %299
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i32 @sqlite3OsFileSize(i32, i64*) #1

declare dso_local i32 @readMasterJournal(i32, i8*, i64) #1

declare dso_local i32 @sqlite3OsAccess(%struct.TYPE_16__*, i8*, i32, i32*) #1

declare dso_local i32 @readJournalHdr(%struct.TYPE_17__*, i32, i64, i32*, i32*) #1

declare dso_local i64 @JOURNAL_HDR_SZ(%struct.TYPE_17__*) #1

declare dso_local i64 @JOURNAL_PG_SZ(%struct.TYPE_17__*) #1

declare dso_local i32 @pager_truncate(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pager_reset(%struct.TYPE_17__*) #1

declare dso_local i32 @pager_playback_one_page(%struct.TYPE_17__*, i64*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3PagerSync(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pager_end_transaction(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @pager_delmaster(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #1

declare dso_local i32 @setSectorSize(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
