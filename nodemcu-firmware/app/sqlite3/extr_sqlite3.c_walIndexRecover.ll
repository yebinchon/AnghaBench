; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_walIndexRecover.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_walIndexRecover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__, i32, i8* }
%struct.TYPE_12__ = type { i64, i32*, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32*, i64 }

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
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
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
  br label %401

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
  br label %389

85:                                               ; preds = %70
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @WAL_HDRSIZE, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %305

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
  br label %301

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
  br label %301

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
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @walChecksumBytes(i32 %153, i64* %92, i64 %155, i32 0, i32* %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = getelementptr inbounds i64, i64* %92, i64 24
  %170 = call i8* @sqlite3Get4byte(i64* %169)
  %171 = icmp ne i8* %168, %170
  br i1 %171, label %184, label %172

172:                                              ; preds = %128
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = getelementptr inbounds i64, i64* %92, i64 28
  %182 = call i8* @sqlite3Get4byte(i64* %181)
  %183 = icmp ne i8* %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %172, %128
  store i32 3, i32* %22, align 4
  br label %301

185:                                              ; preds = %172
  %186 = getelementptr inbounds i64, i64* %92, i64 4
  %187 = call i8* @sqlite3Get4byte(i64* %186)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* @WAL_MAX_VERSION, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* @SQLITE_CANTOPEN_BKPT, align 4
  store i32 %193, i32* %4, align 4
  store i32 3, i32* %22, align 4
  br label %301

194:                                              ; preds = %185
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %197 = add nsw i32 %195, %196
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i64 @sqlite3_malloc64(i32 %198)
  %200 = inttoptr i64 %199 to i64*
  store i64* %200, i64** %11, align 8
  %201 = load i64*, i64** %11, align 8
  %202 = icmp ne i64* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %194
  %204 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %204, i32* %4, align 4
  store i32 2, i32* %22, align 4
  br label %301

205:                                              ; preds = %194
  %206 = load i64*, i64** %11, align 8
  %207 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  store i64* %209, i64** %13, align 8
  store i32 0, i32* %14, align 4
  %210 = load i64, i64* @WAL_HDRSIZE, align 8
  store i64 %210, i64* %15, align 8
  br label %211

211:                                              ; preds = %293, %205
  %212 = load i64, i64* %15, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %212, %214
  %216 = load i64, i64* %5, align 8
  %217 = icmp sle i64 %215, %216
  br i1 %217, label %218, label %298

218:                                              ; preds = %211
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %14, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = load i64*, i64** %11, align 8
  %225 = load i32, i32* %12, align 4
  %226 = load i64, i64* %15, align 8
  %227 = call i32 @sqlite3OsRead(i32 %223, i64* %224, i32 %225, i64 %226)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @SQLITE_OK, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %218
  br label %298

232:                                              ; preds = %218
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %234 = load i64*, i64** %13, align 8
  %235 = load i64*, i64** %11, align 8
  %236 = call i32 @walDecodeFrame(%struct.TYPE_14__* %233, i32* %20, i32* %21, i64* %234, i64* %235)
  store i32 %236, i32* %19, align 4
  %237 = load i32, i32* %19, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %232
  br label %298

240:                                              ; preds = %232
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %20, align 4
  %244 = call i32 @walIndexAppend(%struct.TYPE_14__* %241, i32 %242, i32 %243)
  store i32 %244, i32* %4, align 4
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @SQLITE_OK, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  br label %298

249:                                              ; preds = %240
  %250 = load i32, i32* %21, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %292

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  store i32 %253, i32* %256, align 8
  %257 = load i32, i32* %21, align 4
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 3
  store i32 %257, i32* %260, align 4
  %261 = load i32, i32* %16, align 4
  %262 = and i32 %261, 65280
  %263 = load i32, i32* %16, align 4
  %264 = ashr i32 %263, 16
  %265 = or i32 %262, %264
  %266 = sext i32 %265 to i64
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 4
  store i64 %266, i64* %269, align 8
  %270 = load i32, i32* %16, align 4
  %271 = icmp sle i32 %270, 32768
  %272 = zext i1 %271 to i32
  %273 = call i32 @testcase(i32 %272)
  %274 = load i32, i32* %16, align 4
  %275 = icmp sge i32 %274, 65536
  %276 = zext i1 %275 to i32
  %277 = call i32 @testcase(i32 %276)
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %283, i32* %284, align 4
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %290, i32* %291, align 4
  br label %292

292:                                              ; preds = %252, %249
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* %15, align 8
  %297 = add nsw i64 %296, %295
  store i64 %297, i64* %15, align 8
  br label %211

298:                                              ; preds = %248, %239, %231, %211
  %299 = load i64*, i64** %11, align 8
  %300 = call i32 @sqlite3_free(i64* %299)
  store i32 0, i32* %22, align 4
  br label %301

301:                                              ; preds = %203, %192, %184, %127, %102, %298
  %302 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %302)
  %303 = load i32, i32* %22, align 4
  switch i32 %303, label %403 [
    i32 0, label %304
    i32 2, label %389
    i32 3, label %306
  ]

304:                                              ; preds = %301
  br label %305

305:                                              ; preds = %304, %85
  br label %306

306:                                              ; preds = %305, %301
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* @SQLITE_OK, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %388

310:                                              ; preds = %306
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  store i32 %312, i32* %317, align 4
  %318 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  store i32 %319, i32* %324, align 4
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %326 = call i32 @walIndexWriteHdr(%struct.TYPE_14__* %325)
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %328 = call %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__* %327)
  store %struct.TYPE_13__* %328, %struct.TYPE_13__** %23, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 2
  store volatile i64 0, i64* %330, align 8
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 0
  store volatile i32 %334, i32* %336, align 8
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 1
  %339 = load volatile i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  store i32 0, i32* %340, align 4
  store i32 1, i32* %24, align 4
  br label %341

341:                                              ; preds = %353, %310
  %342 = load i32, i32* %24, align 4
  %343 = load i32, i32* @WAL_NREADER, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %356

345:                                              ; preds = %341
  %346 = load i32, i32* @READMARK_NOT_USED, align 4
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 1
  %349 = load volatile i32*, i32** %348, align 8
  %350 = load i32, i32* %24, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  store i32 %346, i32* %352, align 4
  br label %353

353:                                              ; preds = %345
  %354 = load i32, i32* %24, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %24, align 4
  br label %341

356:                                              ; preds = %341
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %356
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load volatile i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  store i32 %366, i32* %370, align 4
  br label %371

371:                                              ; preds = %362, %356
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %387

377:                                              ; preds = %371
  %378 = load i32, i32* @SQLITE_NOTICE_RECOVER_WAL, align 4
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 4
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @sqlite3_log(i32 %378, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %382, i32 %385)
  br label %387

387:                                              ; preds = %377, %371
  br label %388

388:                                              ; preds = %387, %306
  br label %389

389:                                              ; preds = %388, %301, %84
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %391 = load i32, i32* %4, align 4
  %392 = icmp ne i32 %391, 0
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %395 = call i32 @WALTRACE(i8* %394)
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %397 = load i32, i32* %7, align 4
  %398 = load i32, i32* %8, align 4
  %399 = call i32 @walUnlockExclusive(%struct.TYPE_14__* %396, i32 %397, i32 %398)
  %400 = load i32, i32* %4, align 4
  store i32 %400, i32* %2, align 4
  br label %401

401:                                              ; preds = %389, %68
  %402 = load i32, i32* %2, align 4
  ret i32 %402

403:                                              ; preds = %301
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

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_14__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
