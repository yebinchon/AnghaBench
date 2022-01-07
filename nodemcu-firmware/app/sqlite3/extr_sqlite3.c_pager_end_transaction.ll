; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_end_transaction.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@RESERVED_LOCK = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_TRUNCATE = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_PERSIST = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_WAL = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_DELETE = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_MEMORY = common dso_local global i64 0, align 8
@MEMDB = common dso_local global i64 0, align 8
@EXCLUSIVE_LOCK = common dso_local global i64 0, align 8
@SQLITE_FCNTL_COMMIT_PHASETWO = common dso_local global i32 0, align 4
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@SHARED_LOCK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@pager_set_pagehash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32)* @pager_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_end_transaction(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = call i32 @assert_pager_state(%struct.TYPE_15__* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGER_ERROR, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RESERVED_LOCK, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @SQLITE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %343

36:                                               ; preds = %28, %3
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = call i32 @releaseAllSavepoints(%struct.TYPE_15__* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @isOpen(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i1 [ true, %36 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @isOpen(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %201

58:                                               ; preds = %49
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = call i64 @pagerUseWal(%struct.TYPE_15__* %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @sqlite3JournalIsInMemory(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 17
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sqlite3OsClose(i32 %73)
  br label %200

75:                                               ; preds = %58
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PAGER_JOURNALMODE_TRUNCATE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %75
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @SQLITE_OK, align 4
  store i32 %87, i32* %8, align 4
  br label %110

88:                                               ; preds = %81
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 17
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sqlite3OsTruncate(i32 %91, i32 0)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @SQLITE_OK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 20
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 17
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 19
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sqlite3OsSync(i32 %104, i32 %107)
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %101, %96, %88
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  br label %199

113:                                              ; preds = %75
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PAGER_JOURNALMODE_PERSIST, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %130, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 10
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %119
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PAGER_JOURNALMODE_WAL, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %124, %113
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 18
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %134, %130
  %140 = phi i1 [ true, %130 ], [ %138, %134 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @zeroJournalHdr(%struct.TYPE_15__* %131, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  br label %198

145:                                              ; preds = %124, %119
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 18
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %10, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 17
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @sqlite3JournalIsInMemory(i32 %154)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @PAGER_JOURNALMODE_DELETE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %176, label %164

164:                                              ; preds = %145
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @PAGER_JOURNALMODE_MEMORY, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @PAGER_JOURNALMODE_WAL, align 8
  %175 = icmp eq i64 %173, %174
  br label %176

176:                                              ; preds = %170, %164, %145
  %177 = phi i1 [ true, %164 ], [ true, %145 ], [ %175, %170 ]
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 17
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @sqlite3OsClose(i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %176
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 16
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 14
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @sqlite3OsDelete(i32 %189, i32 %192, i32 %195)
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %186, %176
  br label %198

198:                                              ; preds = %197, %139
  br label %199

199:                                              ; preds = %198, %110
  br label %200

200:                                              ; preds = %199, %70
  br label %201

201:                                              ; preds = %200, %49
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @sqlite3BitvecDestroy(i64 %204)
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 13
  store i64 0, i64* %209, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @SQLITE_OK, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %201
  %214 = load i64, i64* @MEMDB, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %213
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %218 = load i32, i32* %7, align 4
  %219 = call i64 @pagerFlushOnCommit(%struct.TYPE_15__* %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216, %213
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @sqlite3PcacheCleanAll(i32 %224)
  br label %231

226:                                              ; preds = %216
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 12
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @sqlite3PcacheClearWritable(i32 %229)
  br label %231

231:                                              ; preds = %226, %221
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 12
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @sqlite3PcacheTruncate(i32 %234, i64 %237)
  br label %239

239:                                              ; preds = %231, %201
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %241 = call i64 @pagerUseWal(%struct.TYPE_15__* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %239
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @sqlite3WalEndWriteTransaction(i32 %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @SQLITE_OK, align 4
  %250 = icmp eq i32 %248, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  br label %282

253:                                              ; preds = %239
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @SQLITE_OK, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %281

257:                                              ; preds = %253
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %257
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %263, %266
  br i1 %267, label %268, label %281

268:                                              ; preds = %260
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @EXCLUSIVE_LOCK, align 8
  %273 = icmp eq i64 %271, %272
  %274 = zext i1 %273 to i32
  %275 = call i32 @assert(i32 %274)
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @pager_truncate(%struct.TYPE_15__* %276, i64 %279)
  store i32 %280, i32* %8, align 4
  br label %281

281:                                              ; preds = %268, %260, %257, %253
  br label %282

282:                                              ; preds = %281, %243
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @SQLITE_OK, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %307

286:                                              ; preds = %282
  %287 = load i32, i32* %7, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %286
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 11
  %292 = load i32, i32* %291, align 8
  %293 = call i64 @isOpen(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %289
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 11
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @SQLITE_FCNTL_COMMIT_PHASETWO, align 4
  %300 = call i32 @sqlite3OsFileControl(i32 %298, i32 %299, i32 0)
  store i32 %300, i32* %8, align 4
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* @SQLITE_NOTFOUND, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %295
  %305 = load i32, i32* @SQLITE_OK, align 4
  store i32 %305, i32* %8, align 4
  br label %306

306:                                              ; preds = %304, %295
  br label %307

307:                                              ; preds = %306, %289, %286, %282
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 10
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %328, label %312

312:                                              ; preds = %307
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %314 = call i64 @pagerUseWal(%struct.TYPE_15__* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 8
  %320 = call i64 @sqlite3WalExclusiveMode(i32 %319, i32 0)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %316, %312
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %324 = load i32, i32* @SHARED_LOCK, align 4
  %325 = call i32 @pagerUnlockDb(%struct.TYPE_15__* %323, i32 %324)
  store i32 %325, i32* %9, align 4
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 8
  store i64 0, i64* %327, align 8
  br label %328

328:                                              ; preds = %322, %316, %307
  %329 = load i64, i64* @PAGER_READER, align 8
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 0
  store i64 %329, i64* %331, align 8
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 7
  store i64 0, i64* %333, align 8
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* @SQLITE_OK, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %328
  %338 = load i32, i32* %9, align 4
  br label %341

339:                                              ; preds = %328
  %340 = load i32, i32* %8, align 4
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32 [ %338, %337 ], [ %340, %339 ]
  store i32 %342, i32* %4, align 4
  br label %343

343:                                              ; preds = %341, %34
  %344 = load i32, i32* %4, align 4
  ret i32 %344
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_15__*) #1

declare dso_local i32 @releaseAllSavepoints(%struct.TYPE_15__*) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_15__*) #1

declare dso_local i64 @sqlite3JournalIsInMemory(i32) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i32 @sqlite3OsSync(i32, i32) #1

declare dso_local i32 @zeroJournalHdr(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3OsDelete(i32, i32, i32) #1

declare dso_local i32 @sqlite3BitvecDestroy(i64) #1

declare dso_local i64 @pagerFlushOnCommit(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3PcacheCleanAll(i32) #1

declare dso_local i32 @sqlite3PcacheClearWritable(i32) #1

declare dso_local i32 @sqlite3PcacheTruncate(i32, i64) #1

declare dso_local i32 @sqlite3WalEndWriteTransaction(i32) #1

declare dso_local i32 @pager_truncate(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @sqlite3OsFileControl(i32, i32, i32) #1

declare dso_local i64 @sqlite3WalExclusiveMode(i32, i32) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
