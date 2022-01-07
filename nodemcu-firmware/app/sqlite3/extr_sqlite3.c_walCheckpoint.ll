; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_walCheckpoint.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_walCheckpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64*, i64 }
%struct.TYPE_18__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_PASSIVE = common dso_local global i32 0, align 4
@WAL_NREADER = common dso_local global i32 0, align 4
@READMARK_NOT_USED = common dso_local global i64 0, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_FCNTL_SIZE_HINT = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_INTERRUPT = common dso_local global i32 0, align 4
@WAL_FRAME_HDRSIZE = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_RESTART = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_21__*, i32, i32 (i8*)*, i8*, i32, i32*)* @walCheckpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walCheckpoint(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, i32 %2, i32 (i8*)* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 (i8*)* %3, i32 (i8*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %32 = load i32, i32* @SQLITE_OK, align 4
  store i32 %32, i32* %16, align 4
  store i32* null, i32** %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %34 = call i32 @walPagesize(%struct.TYPE_23__* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp sle i32 %35, 32768
  %37 = zext i1 %36 to i32
  %38 = call i32 @testcase(i32 %37)
  %39 = load i32, i32* %17, align 4
  %40 = icmp sge i32 %39, 65536
  %41 = zext i1 %40 to i32
  %42 = call i32 @testcase(i32 %41)
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %44 = call %struct.TYPE_22__* @walCkptInfo(%struct.TYPE_23__* %43)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %24, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load volatile i64, i64* %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %352

53:                                               ; preds = %7
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %55 = call i32 @walIteratorInit(%struct.TYPE_23__* %54, i32** %18)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %8, align 4
  br label %427

61:                                               ; preds = %53
  %62 = load i32*, i32** %18, align 8
  %63 = ptrtoint i32* %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %70 = icmp eq i32 (i8*)* %69, null
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i1 [ true, %61 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %21, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %22, align 8
  store i32 1, i32* %23, align 4
  br label %83

83:                                               ; preds = %145, %71
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* @WAL_NREADER, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %148

87:                                               ; preds = %83
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load volatile i64*, i64** %89, align 8
  %91 = load i32, i32* %23, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %25, align 8
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %25, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %144

98:                                               ; preds = %87
  %99 = load i64, i64* %25, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sle i64 %99, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %108 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i32, i32* %23, align 4
  %111 = call i32 @WAL_READ_LOCK(i32 %110)
  %112 = call i32 @walBusyLock(%struct.TYPE_23__* %107, i32 (i8*)* %108, i8* %109, i32 %111, i32 1)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %98
  %117 = load i32, i32* %23, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i64, i64* %21, align 8
  br label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @READMARK_NOT_USED, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i64 [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load volatile i64*, i64** %126, align 8
  %128 = load i32, i32* %23, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %124, i64* %130, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %132 = load i32, i32* %23, align 4
  %133 = call i32 @WAL_READ_LOCK(i32 %132)
  %134 = call i32 @walUnlockExclusive(%struct.TYPE_23__* %131, i32 %133, i32 1)
  br label %143

135:                                              ; preds = %98
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @SQLITE_BUSY, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i64, i64* %25, align 8
  store i64 %140, i64* %21, align 8
  store i32 (i8*)* null, i32 (i8*)** %12, align 8
  br label %142

141:                                              ; preds = %135
  br label %423

142:                                              ; preds = %139
  br label %143

143:                                              ; preds = %142, %123
  br label %144

144:                                              ; preds = %143, %87
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %23, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %23, align 4
  br label %83

148:                                              ; preds = %83
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load volatile i64, i64* %150, align 8
  %152 = load i64, i64* %21, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %345

154:                                              ; preds = %148
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %156 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 @WAL_READ_LOCK(i32 0)
  %159 = call i32 @walBusyLock(%struct.TYPE_23__* %155, i32 (i8*)* %156, i8* %157, i32 %158, i32 1)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* @SQLITE_OK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %345

162:                                              ; preds = %154
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load volatile i64, i64* %164, align 8
  store i64 %165, i64* %27, align 8
  %166 = load i64, i64* %21, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 2
  store volatile i64 %166, i64* %168, align 8
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %162
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @sqlite3OsSync(i32 %174, i32 %175)
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %171, %162
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @SQLITE_OK, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = load i64, i64* %22, align 8
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* %17, align 4
  %185 = mul nsw i32 %183, %184
  store i32 %185, i32* %28, align 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @sqlite3OsFileSize(i32 %188, i32* %26)
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @SQLITE_OK, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %181
  %194 = load i32, i32* %26, align 4
  %195 = load i32, i32* %28, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SQLITE_FCNTL_SIZE_HINT, align 4
  %202 = call i32 @sqlite3OsFileControlHint(i32 %200, i32 %201, i32* %28)
  br label %203

203:                                              ; preds = %197, %193, %181
  br label %204

204:                                              ; preds = %203, %177
  br label %205

205:                                              ; preds = %290, %251, %204
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* @SQLITE_OK, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i32*, i32** %18, align 8
  %211 = call i64 @walIteratorNext(i32* %210, i64* %19, i64* %20)
  %212 = icmp eq i64 0, %211
  br label %213

213:                                              ; preds = %209, %205
  %214 = phi i1 [ false, %205 ], [ %212, %209 ]
  br i1 %214, label %215, label %291

215:                                              ; preds = %213
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %217 = load i64, i64* %20, align 8
  %218 = call i64 @walFramePgno(%struct.TYPE_23__* %216, i64 %217)
  %219 = load i64, i64* %19, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %215
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  br label %237

235:                                              ; preds = %228
  %236 = load i32, i32* @SQLITE_INTERRUPT, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  store i32 %238, i32* %16, align 4
  br label %291

239:                                              ; preds = %215
  %240 = load i64, i64* %20, align 8
  %241 = load i64, i64* %27, align 8
  %242 = icmp sle i64 %240, %241
  br i1 %242, label %251, label %243

243:                                              ; preds = %239
  %244 = load i64, i64* %20, align 8
  %245 = load i64, i64* %21, align 8
  %246 = icmp sgt i64 %244, %245
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = load i64, i64* %19, align 8
  %249 = load i64, i64* %22, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %243, %239
  br label %205

252:                                              ; preds = %247
  %253 = load i64, i64* %20, align 8
  %254 = load i32, i32* %17, align 4
  %255 = call i32 @walFrameOffset(i64 %253, i32 %254)
  %256 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %257 = add nsw i32 %255, %256
  store i32 %257, i32* %29, align 4
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %15, align 8
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %29, align 4
  %264 = call i32 @sqlite3OsRead(i32 %260, i32* %261, i32 %262, i32 %263)
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* %16, align 4
  %266 = load i32, i32* @SQLITE_OK, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %252
  br label %291

269:                                              ; preds = %252
  %270 = load i64, i64* %19, align 8
  %271 = sub nsw i64 %270, 1
  %272 = load i32, i32* %17, align 4
  %273 = sext i32 %272 to i64
  %274 = mul nsw i64 %271, %273
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %29, align 4
  %276 = load i32, i32* %29, align 4
  %277 = call i32 @IS_BIG_INT(i32 %276)
  %278 = call i32 @testcase(i32 %277)
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = load i32*, i32** %15, align 8
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %29, align 4
  %285 = call i32 @sqlite3OsWrite(i32 %281, i32* %282, i32 %283, i32 %284)
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = load i32, i32* @SQLITE_OK, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %269
  br label %291

290:                                              ; preds = %269
  br label %205

291:                                              ; preds = %289, %268, %237, %213
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* @SQLITE_OK, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %341

295:                                              ; preds = %291
  %296 = load i64, i64* %21, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %298 = call %struct.TYPE_18__* @walIndexHdr(%struct.TYPE_23__* %297)
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %296, %300
  br i1 %301, label %302, label %332

302:                                              ; preds = %295
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* %17, align 4
  %308 = sext i32 %307 to i64
  %309 = mul nsw i64 %306, %308
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %30, align 4
  %311 = load i32, i32* %30, align 4
  %312 = call i32 @IS_BIG_INT(i32 %311)
  %313 = call i32 @testcase(i32 %312)
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %30, align 4
  %318 = call i32 @sqlite3OsTruncate(i32 %316, i32 %317)
  store i32 %318, i32* %16, align 4
  %319 = load i32, i32* %16, align 4
  %320 = load i32, i32* @SQLITE_OK, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %331

322:                                              ; preds = %302
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @sqlite3OsSync(i32 %328, i32 %329)
  store i32 %330, i32* %16, align 4
  br label %331

331:                                              ; preds = %325, %322, %302
  br label %332

332:                                              ; preds = %331, %295
  %333 = load i32, i32* %16, align 4
  %334 = load i32, i32* @SQLITE_OK, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = load i64, i64* %21, align 8
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 0
  store volatile i64 %337, i64* %339, align 8
  br label %340

340:                                              ; preds = %336, %332
  br label %341

341:                                              ; preds = %340, %291
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %343 = call i32 @WAL_READ_LOCK(i32 0)
  %344 = call i32 @walUnlockExclusive(%struct.TYPE_23__* %342, i32 %343, i32 1)
  br label %345

345:                                              ; preds = %341, %154, %148
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* @SQLITE_BUSY, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  %350 = load i32, i32* @SQLITE_OK, align 4
  store i32 %350, i32* %16, align 4
  br label %351

351:                                              ; preds = %349, %345
  br label %352

352:                                              ; preds = %351, %7
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* @SQLITE_OK, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %422

356:                                              ; preds = %352
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %359 = icmp ne i32 %357, %358
  br i1 %359, label %360, label %422

360:                                              ; preds = %356
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @assert(i32 %363)
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 0
  %367 = load volatile i64, i64* %366, align 8
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp slt i64 %367, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %360
  %374 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %374, i32* %16, align 4
  br label %421

375:                                              ; preds = %360
  %376 = load i32, i32* %11, align 4
  %377 = load i32, i32* @SQLITE_CHECKPOINT_RESTART, align 4
  %378 = icmp sge i32 %376, %377
  br i1 %378, label %379, label %420

379:                                              ; preds = %375
  %380 = call i32 @sqlite3_randomness(i32 4, i64* %31)
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 0
  %383 = load volatile i64, i64* %382, align 8
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp eq i64 %383, %387
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %392 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %393 = load i8*, i8** %13, align 8
  %394 = call i32 @WAL_READ_LOCK(i32 1)
  %395 = load i32, i32* @WAL_NREADER, align 4
  %396 = sub nsw i32 %395, 1
  %397 = call i32 @walBusyLock(%struct.TYPE_23__* %391, i32 (i8*)* %392, i8* %393, i32 %394, i32 %396)
  store i32 %397, i32* %16, align 4
  %398 = load i32, i32* %16, align 4
  %399 = load i32, i32* @SQLITE_OK, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %419

401:                                              ; preds = %379
  %402 = load i32, i32* %11, align 4
  %403 = load i32, i32* @SQLITE_CHECKPOINT_TRUNCATE, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %413

405:                                              ; preds = %401
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %407 = load i64, i64* %31, align 8
  %408 = call i32 @walRestartHdr(%struct.TYPE_23__* %406, i64 %407)
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @sqlite3OsTruncate(i32 %411, i32 0)
  store i32 %412, i32* %16, align 4
  br label %413

413:                                              ; preds = %405, %401
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %415 = call i32 @WAL_READ_LOCK(i32 1)
  %416 = load i32, i32* @WAL_NREADER, align 4
  %417 = sub nsw i32 %416, 1
  %418 = call i32 @walUnlockExclusive(%struct.TYPE_23__* %414, i32 %415, i32 %417)
  br label %419

419:                                              ; preds = %413, %379
  br label %420

420:                                              ; preds = %419, %375
  br label %421

421:                                              ; preds = %420, %373
  br label %422

422:                                              ; preds = %421, %356, %352
  br label %423

423:                                              ; preds = %422, %141
  %424 = load i32*, i32** %18, align 8
  %425 = call i32 @walIteratorFree(i32* %424)
  %426 = load i32, i32* %16, align 4
  store i32 %426, i32* %8, align 4
  br label %427

427:                                              ; preds = %423, %59
  %428 = load i32, i32* %8, align 4
  ret i32 %428
}

declare dso_local i32 @walPagesize(%struct.TYPE_23__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_22__* @walCkptInfo(%struct.TYPE_23__*) #1

declare dso_local i32 @walIteratorInit(%struct.TYPE_23__*, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walBusyLock(%struct.TYPE_23__*, i32 (i8*)*, i8*, i32, i32) #1

declare dso_local i32 @WAL_READ_LOCK(i32) #1

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sqlite3OsSync(i32, i32) #1

declare dso_local i32 @sqlite3OsFileSize(i32, i32*) #1

declare dso_local i32 @sqlite3OsFileControlHint(i32, i32, i32*) #1

declare dso_local i64 @walIteratorNext(i32*, i64*, i64*) #1

declare dso_local i64 @walFramePgno(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @walFrameOffset(i64, i32) #1

declare dso_local i32 @sqlite3OsRead(i32, i32*, i32, i32) #1

declare dso_local i32 @IS_BIG_INT(i32) #1

declare dso_local i32 @sqlite3OsWrite(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @walIndexHdr(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i64*) #1

declare dso_local i32 @walRestartHdr(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @walIteratorFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
