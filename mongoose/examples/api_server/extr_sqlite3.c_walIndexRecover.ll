; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walIndexRecover.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walIndexRecover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__, i32, i8* }
%struct.TYPE_12__ = type { i64, i8**, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32*, i64 }

@WAL_ALL_BUT_WRITE = common dso_local global i32 0, align 4
@WAL_WRITE_LOCK = common dso_local global i32 0, align 4
@WAL_CKPT_LOCK = common dso_local global i32 0, align 4
@SQLITE_SHM_NLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WAL%p: recovery begin...\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@WAL_HDRSIZE = common dso_local global i64 0, align 8
@WAL_MAGIC = common dso_local global i32 0, align 4
@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_BIGENDIAN = common dso_local global i64 0, align 8
@WAL_MAX_VERSION = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN_BKPT = common dso_local global i32 0, align 4
@WAL_FRAME_HDRSIZE = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@WAL_NREADER = common dso_local global i32 0, align 4
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
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %25 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %30, %1
  %36 = phi i1 [ true, %1 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @WAL_ALL_BUT_WRITE, align 4
  %40 = load i32, i32* @WAL_WRITE_LOCK, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* @WAL_CKPT_LOCK, align 4
  %46 = load i32, i32* @WAL_ALL_BUT_WRITE, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* @WAL_ALL_BUT_WRITE, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %54, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @SQLITE_SHM_NLOCK, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @walLockExclusive(%struct.TYPE_14__* %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %35
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %397

70:                                               ; preds = %35
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = bitcast %struct.TYPE_14__* %71 to i8*
  %73 = call i32 @WALTRACE(i8* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 4
  %76 = call i32 @memset(%struct.TYPE_12__* %75, i32 0, i32 4)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sqlite3OsFileSize(i32 %79, i64* %5)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %385

85:                                               ; preds = %70
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @WAL_HDRSIZE, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %303

89:                                               ; preds = %85
  %90 = load i64, i64* @WAL_HDRSIZE, align 8
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %9, align 8
  %92 = alloca i64, i64 %90, align 16
  store i64 %90, i64* %10, align 8
  store i64* null, i64** %11, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* @WAL_HDRSIZE, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @sqlite3OsRead(i32 %95, i64* %92, i32 %97, i64 0)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @SQLITE_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  store i32 2, i32* %22, align 4
  br label %299

103:                                              ; preds = %89
  %104 = getelementptr inbounds i64, i64* %92, i64 0
  %105 = call i8* @sqlite3Get4byte(i64* %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %17, align 4
  %107 = getelementptr inbounds i64, i64* %92, i64 8
  %108 = call i8* @sqlite3Get4byte(i64* %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = and i32 %110, -2
  %112 = load i32, i32* @WAL_MAGIC, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %127, label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = sub nsw i32 %116, 1
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %125, 512
  br i1 %126, label %127, label %128

127:                                              ; preds = %124, %120, %114, %103
  store i32 3, i32* %22, align 4
  br label %299

128:                                              ; preds = %124
  %129 = load i32, i32* %17, align 4
  %130 = and i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i64 %131, i64* %134, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = getelementptr inbounds i64, i64* %92, i64 12
  %139 = call i8* @sqlite3Get4byte(i64* %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 6
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 5
  %145 = getelementptr inbounds i64, i64* %92, i64 16
  %146 = call i32 @memcpy(i32* %144, i64* %145, i32 8)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SQLITE_BIGENDIAN, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* @WAL_HDRSIZE, align 8
  %155 = sub nsw i64 %154, 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i8**, i8*** %158, align 8
  %160 = call i32 @walChecksumBytes(i32 %153, i64* %92, i64 %155, i32 0, i8** %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i64, i64* %92, i64 24
  %168 = call i8* @sqlite3Get4byte(i64* %167)
  %169 = icmp ne i8* %166, %168
  br i1 %169, label %180, label %170

170:                                              ; preds = %128
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 1
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i64, i64* %92, i64 28
  %178 = call i8* @sqlite3Get4byte(i64* %177)
  %179 = icmp ne i8* %176, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %170, %128
  store i32 3, i32* %22, align 4
  br label %299

181:                                              ; preds = %170
  %182 = getelementptr inbounds i64, i64* %92, i64 4
  %183 = call i8* @sqlite3Get4byte(i64* %182)
  %184 = ptrtoint i8* %183 to i32
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @WAL_MAX_VERSION, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @SQLITE_CANTOPEN_BKPT, align 4
  store i32 %189, i32* %4, align 4
  store i32 3, i32* %22, align 4
  br label %299

190:                                              ; preds = %181
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %193 = add nsw i32 %191, %192
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i64 @sqlite3_malloc(i32 %194)
  %196 = inttoptr i64 %195 to i64*
  store i64* %196, i64** %11, align 8
  %197 = load i64*, i64** %11, align 8
  %198 = icmp ne i64* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %190
  %200 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %200, i32* %4, align 4
  store i32 2, i32* %22, align 4
  br label %299

201:                                              ; preds = %190
  %202 = load i64*, i64** %11, align 8
  %203 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  store i64* %205, i64** %13, align 8
  store i32 0, i32* %14, align 4
  %206 = load i64, i64* @WAL_HDRSIZE, align 8
  store i64 %206, i64* %15, align 8
  br label %207

207:                                              ; preds = %291, %201
  %208 = load i64, i64* %15, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %208, %210
  %212 = load i64, i64* %5, align 8
  %213 = icmp sle i64 %211, %212
  br i1 %213, label %214, label %296

214:                                              ; preds = %207
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = load i64*, i64** %11, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i64, i64* %15, align 8
  %223 = call i32 @sqlite3OsRead(i32 %219, i64* %220, i32 %221, i64 %222)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @SQLITE_OK, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %214
  br label %296

228:                                              ; preds = %214
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %230 = load i64*, i64** %13, align 8
  %231 = load i64*, i64** %11, align 8
  %232 = call i32 @walDecodeFrame(%struct.TYPE_14__* %229, i32* %20, i32* %21, i64* %230, i64* %231)
  store i32 %232, i32* %19, align 4
  %233 = load i32, i32* %19, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %228
  br label %296

236:                                              ; preds = %228
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %20, align 4
  %240 = call i32 @walIndexAppend(%struct.TYPE_14__* %237, i32 %238, i32 %239)
  store i32 %240, i32* %4, align 4
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @SQLITE_OK, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  br label %296

245:                                              ; preds = %236
  %246 = load i32, i32* %21, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %290

248:                                              ; preds = %245
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  store i32 %249, i32* %252, align 8
  %253 = load i32, i32* %21, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 3
  store i32 %253, i32* %256, align 4
  %257 = load i32, i32* %16, align 4
  %258 = and i32 %257, 65280
  %259 = load i32, i32* %16, align 4
  %260 = ashr i32 %259, 16
  %261 = or i32 %258, %260
  %262 = sext i32 %261 to i64
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 4
  store i64 %262, i64* %265, align 8
  %266 = load i32, i32* %16, align 4
  %267 = icmp sle i32 %266, 32768
  %268 = zext i1 %267 to i32
  %269 = call i32 @testcase(i32 %268)
  %270 = load i32, i32* %16, align 4
  %271 = icmp sge i32 %270, 65536
  %272 = zext i1 %271 to i32
  %273 = call i32 @testcase(i32 %272)
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i8**, i8*** %276, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 0
  %279 = load i8*, i8** %278, align 8
  %280 = ptrtoint i8* %279 to i32
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %280, i32* %281, align 4
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = load i8**, i8*** %284, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = ptrtoint i8* %287 to i32
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %288, i32* %289, align 4
  br label %290

290:                                              ; preds = %248, %245
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %15, align 8
  %295 = add nsw i64 %294, %293
  store i64 %295, i64* %15, align 8
  br label %207

296:                                              ; preds = %244, %235, %227, %207
  %297 = load i64*, i64** %11, align 8
  %298 = call i32 @sqlite3_free(i64* %297)
  store i32 0, i32* %22, align 4
  br label %299

299:                                              ; preds = %199, %188, %180, %127, %102, %296
  %300 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %300)
  %301 = load i32, i32* %22, align 4
  switch i32 %301, label %399 [
    i32 0, label %302
    i32 2, label %385
    i32 3, label %304
  ]

302:                                              ; preds = %299
  br label %303

303:                                              ; preds = %302, %85
  br label %304

304:                                              ; preds = %303, %299
  %305 = load i32, i32* %4, align 4
  %306 = load i32, i32* @SQLITE_OK, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %384

308:                                              ; preds = %304
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load i8**, i8*** %315, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 0
  store i8* %312, i8** %317, align 8
  %318 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = inttoptr i64 %320 to i8*
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 1
  %325 = load i8**, i8*** %324, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i64 1
  store i8* %321, i8** %326, align 8
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %328 = call i32 @walIndexWriteHdr(%struct.TYPE_14__* %327)
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %330 = call %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__* %329)
  store %struct.TYPE_13__* %330, %struct.TYPE_13__** %23, align 8
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 1
  store volatile i64 0, i64* %332, align 8
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 0
  %335 = load volatile i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  store i32 0, i32* %336, align 4
  store i32 1, i32* %24, align 4
  br label %337

337:                                              ; preds = %349, %308
  %338 = load i32, i32* %24, align 4
  %339 = load i32, i32* @WAL_NREADER, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %352

341:                                              ; preds = %337
  %342 = load i32, i32* @READMARK_NOT_USED, align 4
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = load volatile i32*, i32** %344, align 8
  %346 = load i32, i32* %24, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  store i32 %342, i32* %348, align 4
  br label %349

349:                                              ; preds = %341
  %350 = load i32, i32* %24, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %24, align 4
  br label %337

352:                                              ; preds = %337
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %352
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 4
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = load volatile i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  store i32 %362, i32* %366, align 4
  br label %367

367:                                              ; preds = %358, %352
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %367
  %374 = load i32, i32* @SQLITE_NOTICE_RECOVER_WAL, align 4
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @sqlite3_log(i32 %374, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %378, i32 %381)
  br label %383

383:                                              ; preds = %373, %367
  br label %384

384:                                              ; preds = %383, %304
  br label %385

385:                                              ; preds = %384, %299, %84
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %387 = load i32, i32* %4, align 4
  %388 = icmp ne i32 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %391 = call i32 @WALTRACE(i8* %390)
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* %8, align 4
  %395 = call i32 @walUnlockExclusive(%struct.TYPE_14__* %392, i32 %393, i32 %394)
  %396 = load i32, i32* %4, align 4
  store i32 %396, i32* %2, align 4
  br label %397

397:                                              ; preds = %385, %68
  %398 = load i32, i32* %2, align 4
  ret i32 %398

399:                                              ; preds = %299
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @walLockExclusive(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @WALTRACE(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @sqlite3OsFileSize(i32, i64*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @sqlite3OsRead(i32, i64*, i32, i64) #2

declare dso_local i8* @sqlite3Get4byte(i64*) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @walChecksumBytes(i32, i64*, i64, i32, i8**) #2

declare dso_local i64 @sqlite3_malloc(i32) #2

declare dso_local i32 @walDecodeFrame(%struct.TYPE_14__*, i32*, i32*, i64*, i64*) #2

declare dso_local i32 @walIndexAppend(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @testcase(i32) #2

declare dso_local i32 @sqlite3_free(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @walIndexWriteHdr(%struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__*) #2

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #2

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_14__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
