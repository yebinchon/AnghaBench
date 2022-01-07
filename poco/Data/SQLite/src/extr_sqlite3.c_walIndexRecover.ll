; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_walIndexRecover.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_walIndexRecover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__, i32, i8* }
%struct.TYPE_12__ = type { i64, i32*, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32*, i64 }

@WAL_ALL_BUT_WRITE = common dso_local global i32 0, align 4
@WAL_WRITE_LOCK = common dso_local global i32 0, align 4
@WAL_CKPT_LOCK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@WAL_NREADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WAL%p: recovery begin...\0A\00", align 1
@WAL_HDRSIZE = common dso_local global i64 0, align 8
@WAL_MAGIC = common dso_local global i32 0, align 4
@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_BIGENDIAN = common dso_local global i64 0, align 8
@WAL_MAX_VERSION = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN_BKPT = common dso_local global i32 0, align 4
@WAL_FRAME_HDRSIZE = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@READMARK_NOT_USED = common dso_local global i32 0, align 4
@SQLITE_NOTICE_RECOVER_WAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"recovered %d frames from WAL file %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"WAL%p: recovery %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @walIndexRecover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walIndexRecover(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %24 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %29, %1
  %35 = phi i1 [ true, %1 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @WAL_ALL_BUT_WRITE, align 4
  %39 = load i32, i32* @WAL_WRITE_LOCK, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* @WAL_CKPT_LOCK, align 4
  %45 = load i32, i32* @WAL_ALL_BUT_WRITE, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @WAL_ALL_BUT_WRITE, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %53, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @WAL_READ_LOCK(i32 0)
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @walLockExclusive(%struct.TYPE_14__* %58, i32 %59, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %34
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = call i32 @WAL_READ_LOCK(i32 1)
  %70 = load i32, i32* @WAL_NREADER, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @walLockExclusive(%struct.TYPE_14__* %68, i32 %69, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SQLITE_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @WAL_READ_LOCK(i32 0)
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 @walUnlockExclusive(%struct.TYPE_14__* %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %76, %67
  br label %84

84:                                               ; preds = %83, %34
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %427

89:                                               ; preds = %84
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = bitcast %struct.TYPE_14__* %90 to i8*
  %92 = call i32 @WALTRACE(i8* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 4
  %95 = call i32 @memset(%struct.TYPE_12__* %94, i32 0, i32 4)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @sqlite3OsFileSize(i32 %98, i64* %5)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %408

104:                                              ; preds = %89
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @WAL_HDRSIZE, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %324

108:                                              ; preds = %104
  %109 = load i64, i64* @WAL_HDRSIZE, align 8
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %8, align 8
  %111 = alloca i64, i64 %109, align 16
  store i64 %109, i64* %9, align 8
  store i64* null, i64** %10, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* @WAL_HDRSIZE, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @sqlite3OsRead(i32 %114, i64* %111, i32 %116, i64 0)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @SQLITE_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  store i32 2, i32* %21, align 4
  br label %320

122:                                              ; preds = %108
  %123 = getelementptr inbounds i64, i64* %111, i64 0
  %124 = call i8* @sqlite3Get4byte(i64* %123)
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %16, align 4
  %126 = getelementptr inbounds i64, i64* %111, i64 8
  %127 = call i8* @sqlite3Get4byte(i64* %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = and i32 %129, -2
  %131 = load i32, i32* @WAL_MAGIC, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %146, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = icmp slt i32 %144, 512
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %139, %133, %122
  store i32 3, i32* %21, align 4
  br label %320

147:                                              ; preds = %143
  %148 = load i32, i32* %16, align 4
  %149 = and i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = getelementptr inbounds i64, i64* %111, i64 12
  %158 = call i8* @sqlite3Get4byte(i64* %157)
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 5
  %164 = getelementptr inbounds i64, i64* %111, i64 16
  %165 = call i32 @memcpy(i32* %163, i64* %164, i32 8)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SQLITE_BIGENDIAN, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i64, i64* @WAL_HDRSIZE, align 8
  %174 = sub nsw i64 %173, 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @walChecksumBytes(i32 %172, i64* %111, i64 %174, i32 0, i32* %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = getelementptr inbounds i64, i64* %111, i64 24
  %189 = call i8* @sqlite3Get4byte(i64* %188)
  %190 = icmp ne i8* %187, %189
  br i1 %190, label %203, label %191

191:                                              ; preds = %147
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = getelementptr inbounds i64, i64* %111, i64 28
  %201 = call i8* @sqlite3Get4byte(i64* %200)
  %202 = icmp ne i8* %199, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %191, %147
  store i32 3, i32* %21, align 4
  br label %320

204:                                              ; preds = %191
  %205 = getelementptr inbounds i64, i64* %111, i64 4
  %206 = call i8* @sqlite3Get4byte(i64* %205)
  %207 = ptrtoint i8* %206 to i32
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @WAL_MAX_VERSION, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* @SQLITE_CANTOPEN_BKPT, align 4
  store i32 %212, i32* %4, align 4
  store i32 3, i32* %21, align 4
  br label %320

213:                                              ; preds = %204
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %216 = add nsw i32 %214, %215
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i64 @sqlite3_malloc64(i32 %217)
  %219 = inttoptr i64 %218 to i64*
  store i64* %219, i64** %10, align 8
  %220 = load i64*, i64** %10, align 8
  %221 = icmp ne i64* %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %213
  %223 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %223, i32* %4, align 4
  store i32 2, i32* %21, align 4
  br label %320

224:                                              ; preds = %213
  %225 = load i64*, i64** %10, align 8
  %226 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  store i64* %228, i64** %12, align 8
  store i32 0, i32* %13, align 4
  %229 = load i64, i64* @WAL_HDRSIZE, align 8
  store i64 %229, i64* %14, align 8
  br label %230

230:                                              ; preds = %312, %224
  %231 = load i64, i64* %14, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %231, %233
  %235 = load i64, i64* %5, align 8
  %236 = icmp sle i64 %234, %235
  br i1 %236, label %237, label %317

237:                                              ; preds = %230
  %238 = load i32, i32* %13, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %13, align 4
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = load i64*, i64** %10, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load i64, i64* %14, align 8
  %246 = call i32 @sqlite3OsRead(i32 %242, i64* %243, i32 %244, i64 %245)
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @SQLITE_OK, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %237
  br label %317

251:                                              ; preds = %237
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %253 = load i64*, i64** %12, align 8
  %254 = load i64*, i64** %10, align 8
  %255 = call i32 @walDecodeFrame(%struct.TYPE_14__* %252, i32* %19, i32* %20, i64* %253, i64* %254)
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %251
  br label %317

259:                                              ; preds = %251
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %19, align 4
  %263 = call i32 @walIndexAppend(%struct.TYPE_14__* %260, i32 %261, i32 %262)
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* @SQLITE_OK, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %317

268:                                              ; preds = %259
  %269 = load i32, i32* %20, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %311

271:                                              ; preds = %268
  %272 = load i32, i32* %13, align 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 2
  store i32 %272, i32* %275, align 8
  %276 = load i32, i32* %20, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 3
  store i32 %276, i32* %279, align 4
  %280 = load i32, i32* %15, align 4
  %281 = and i32 %280, 65280
  %282 = load i32, i32* %15, align 4
  %283 = ashr i32 %282, 16
  %284 = or i32 %281, %283
  %285 = sext i32 %284 to i64
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 4
  store i64 %285, i64* %288, align 8
  %289 = load i32, i32* %15, align 4
  %290 = icmp sle i32 %289, 32768
  %291 = zext i1 %290 to i32
  %292 = call i32 @testcase(i32 %291)
  %293 = load i32, i32* %15, align 4
  %294 = icmp sge i32 %293, 65536
  %295 = zext i1 %294 to i32
  %296 = call i32 @testcase(i32 %295)
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %302, i32* %303, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %309, i32* %310, align 4
  br label %311

311:                                              ; preds = %271, %268
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %11, align 4
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* %14, align 8
  %316 = add nsw i64 %315, %314
  store i64 %316, i64* %14, align 8
  br label %230

317:                                              ; preds = %267, %258, %250, %230
  %318 = load i64*, i64** %10, align 8
  %319 = call i32 @sqlite3_free(i64* %318)
  store i32 0, i32* %21, align 4
  br label %320

320:                                              ; preds = %222, %211, %203, %146, %121, %317
  %321 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %321)
  %322 = load i32, i32* %21, align 4
  switch i32 %322, label %429 [
    i32 0, label %323
    i32 2, label %408
    i32 3, label %325
  ]

323:                                              ; preds = %320
  br label %324

324:                                              ; preds = %323, %104
  br label %325

325:                                              ; preds = %324, %320
  %326 = load i32, i32* %4, align 4
  %327 = load i32, i32* @SQLITE_OK, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %407

329:                                              ; preds = %325
  %330 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  store i32 %331, i32* %336, align 4
  %337 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  store i32 %338, i32* %343, align 4
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %345 = call i32 @walIndexWriteHdr(%struct.TYPE_14__* %344)
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %347 = call %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__* %346)
  store %struct.TYPE_13__* %347, %struct.TYPE_13__** %22, align 8
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 2
  store volatile i64 0, i64* %349, align 8
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  store volatile i32 %353, i32* %355, align 8
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 1
  %358 = load volatile i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  store i32 0, i32* %359, align 4
  store i32 1, i32* %23, align 4
  br label %360

360:                                              ; preds = %372, %329
  %361 = load i32, i32* %23, align 4
  %362 = load i32, i32* @WAL_NREADER, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %375

364:                                              ; preds = %360
  %365 = load i32, i32* @READMARK_NOT_USED, align 4
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 1
  %368 = load volatile i32*, i32** %367, align 8
  %369 = load i32, i32* %23, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %365, i32* %371, align 4
  br label %372

372:                                              ; preds = %364
  %373 = load i32, i32* %23, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %23, align 4
  br label %360

375:                                              ; preds = %360
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %375
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 1
  %388 = load volatile i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  store i32 %385, i32* %389, align 4
  br label %390

390:                                              ; preds = %381, %375
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 4
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %390
  %397 = load i32, i32* @SQLITE_NOTICE_RECOVER_WAL, align 4
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 4
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @sqlite3_log(i32 %397, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %401, i32 %404)
  br label %406

406:                                              ; preds = %396, %390
  br label %407

407:                                              ; preds = %406, %325
  br label %408

408:                                              ; preds = %407, %320, %103
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %410 = load i32, i32* %4, align 4
  %411 = icmp ne i32 %410, 0
  %412 = zext i1 %411 to i64
  %413 = select i1 %411, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %414 = call i32 @WALTRACE(i8* %413)
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %416 = load i32, i32* %7, align 4
  %417 = call i32 @WAL_READ_LOCK(i32 0)
  %418 = load i32, i32* %7, align 4
  %419 = sub nsw i32 %417, %418
  %420 = call i32 @walUnlockExclusive(%struct.TYPE_14__* %415, i32 %416, i32 %419)
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %422 = call i32 @WAL_READ_LOCK(i32 1)
  %423 = load i32, i32* @WAL_NREADER, align 4
  %424 = sub nsw i32 %423, 1
  %425 = call i32 @walUnlockExclusive(%struct.TYPE_14__* %421, i32 %422, i32 %424)
  %426 = load i32, i32* %4, align 4
  store i32 %426, i32* %2, align 4
  br label %427

427:                                              ; preds = %408, %87
  %428 = load i32, i32* %2, align 4
  ret i32 %428

429:                                              ; preds = %320
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @walLockExclusive(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @WAL_READ_LOCK(i32) #2

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @WALTRACE(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @sqlite3OsFileSize(i32, i64*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @sqlite3OsRead(i32, i64*, i32, i64) #2

declare dso_local i8* @sqlite3Get4byte(i64*) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @walChecksumBytes(i32, i64*, i64, i32, i32*) #2

declare dso_local i64 @sqlite3_malloc64(i32) #2

declare dso_local i32 @walDecodeFrame(%struct.TYPE_14__*, i32*, i32*, i64*, i64*) #2

declare dso_local i32 @walIndexAppend(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @testcase(i32) #2

declare dso_local i32 @sqlite3_free(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @walIndexWriteHdr(%struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__*) #2

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
