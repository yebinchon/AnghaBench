; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_unixShmLock.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_unixShmLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_SHM_NLOCK = common dso_local global i32 0, align 4
@SQLITE_SHM_LOCK = common dso_local global i32 0, align 4
@SQLITE_SHM_SHARED = common dso_local global i32 0, align 4
@SQLITE_SHM_EXCLUSIVE = common dso_local global i32 0, align 4
@SQLITE_SHM_UNLOCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@UNIX_SHM_BASE = common dso_local global i64 0, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SHM-LOCK shmid-%d, pid-%d got %03x,%03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @unixShmLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixShmLock(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %9, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %10, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %12, align 8
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp eq %struct.TYPE_7__* %26, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp eq %struct.TYPE_6__* %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* @SQLITE_SHM_NLOCK, align 4
  %51 = icmp sle i32 %49, %50
  br label %52

52:                                               ; preds = %46, %4
  %53 = phi i1 [ false, %4 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SQLITE_SHM_LOCK, align 4
  %62 = load i32, i32* @SQLITE_SHM_SHARED, align 4
  %63 = or i32 %61, %62
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @SQLITE_SHM_LOCK, align 4
  %68 = load i32, i32* @SQLITE_SHM_EXCLUSIVE, align 4
  %69 = or i32 %67, %68
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SQLITE_SHM_UNLOCK, align 4
  %74 = load i32, i32* @SQLITE_SHM_SHARED, align 4
  %75 = or i32 %73, %74
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SQLITE_SHM_UNLOCK, align 4
  %80 = load i32, i32* @SQLITE_SHM_EXCLUSIVE, align 4
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %78, %81
  br label %83

83:                                               ; preds = %77, %71, %65, %52
  %84 = phi i1 [ true, %71 ], [ true, %65 ], [ true, %52 ], [ %82, %77 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SQLITE_SHM_EXCLUSIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi i1 [ true, %83 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %94
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br label %109

109:                                              ; preds = %102, %94
  %110 = phi i1 [ true, %94 ], [ %108, %102 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %109
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br label %124

124:                                              ; preds = %117, %109
  %125 = phi i1 [ true, %109 ], [ %123, %117 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %128, %129
  %131 = shl i32 1, %130
  %132 = load i32, i32* %6, align 4
  %133 = shl i32 1, %132
  %134 = sub nsw i32 %131, %133
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %142, label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %6, align 4
  %140 = shl i32 1, %139
  %141 = icmp eq i32 %138, %140
  br label %142

142:                                              ; preds = %137, %124
  %143 = phi i1 [ true, %124 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @sqlite3_mutex_enter(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @SQLITE_SHM_UNLOCK, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %224

154:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %11, align 8
  br label %158

158:                                              ; preds = %186, %154
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %160 = icmp ne %struct.TYPE_8__* %159, null
  br i1 %160, label %161, label %190

161:                                              ; preds = %158
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %164 = icmp eq %struct.TYPE_8__* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %186

166:                                              ; preds = %161
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %172, %175
  %177 = and i32 %169, %176
  %178 = icmp eq i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %15, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %166, %165
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  store %struct.TYPE_8__* %189, %struct.TYPE_8__** %11, align 8
  br label %158

190:                                              ; preds = %158
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %15, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %197 = load i32, i32* @F_UNLCK, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* @UNIX_SHM_BASE, align 8
  %201 = add nsw i64 %199, %200
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @unixShmSystemLock(%struct.TYPE_9__* %196, i32 %197, i64 %201, i32 %202)
  store i32 %203, i32* %13, align 4
  br label %206

204:                                              ; preds = %190
  %205 = load i32, i32* @SQLITE_OK, align 4
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %204, %195
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* @SQLITE_OK, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %206
  %211 = load i32, i32* %14, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* %14, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %210, %206
  br label %348

224:                                              ; preds = %142
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @SQLITE_SHM_SHARED, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %287

229:                                              ; preds = %224
  store i32 0, i32* %16, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  store %struct.TYPE_8__* %232, %struct.TYPE_8__** %11, align 8
  br label %233

233:                                              ; preds = %251, %229
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %235 = icmp ne %struct.TYPE_8__* %234, null
  br i1 %235, label %236, label %255

236:                                              ; preds = %233
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %244, i32* %13, align 4
  br label %255

245:                                              ; preds = %236
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %16, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %16, align 4
  br label %251

251:                                              ; preds = %245
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  store %struct.TYPE_8__* %254, %struct.TYPE_8__** %11, align 8
  br label %233

255:                                              ; preds = %243, %233
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* @SQLITE_OK, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %276

259:                                              ; preds = %255
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %14, align 4
  %262 = and i32 %260, %261
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %259
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %266 = load i32, i32* @F_RDLCK, align 4
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* @UNIX_SHM_BASE, align 8
  %270 = add nsw i64 %268, %269
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @unixShmSystemLock(%struct.TYPE_9__* %265, i32 %266, i64 %270, i32 %271)
  store i32 %272, i32* %13, align 4
  br label %275

273:                                              ; preds = %259
  %274 = load i32, i32* @SQLITE_OK, align 4
  store i32 %274, i32* %13, align 4
  br label %275

275:                                              ; preds = %273, %264
  br label %276

276:                                              ; preds = %275, %255
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* @SQLITE_OK, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load i32, i32* %14, align 4
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %280, %276
  br label %347

287:                                              ; preds = %224
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  store %struct.TYPE_8__* %290, %struct.TYPE_8__** %11, align 8
  br label %291

291:                                              ; preds = %311, %287
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %293 = icmp ne %struct.TYPE_8__* %292, null
  br i1 %293, label %294, label %315

294:                                              ; preds = %291
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %14, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %294
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %14, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %301, %294
  %309 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %309, i32* %13, align 4
  br label %315

310:                                              ; preds = %301
  br label %311

311:                                              ; preds = %310
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %313, align 8
  store %struct.TYPE_8__* %314, %struct.TYPE_8__** %11, align 8
  br label %291

315:                                              ; preds = %308, %291
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* @SQLITE_OK, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %346

319:                                              ; preds = %315
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %321 = load i32, i32* @F_WRLCK, align 4
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* @UNIX_SHM_BASE, align 8
  %325 = add nsw i64 %323, %324
  %326 = load i32, i32* %7, align 4
  %327 = call i32 @unixShmSystemLock(%struct.TYPE_9__* %320, i32 %321, i64 %325, i32 %326)
  store i32 %327, i32* %13, align 4
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* @SQLITE_OK, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %345

331:                                              ; preds = %319
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %14, align 4
  %336 = and i32 %334, %335
  %337 = icmp eq i32 %336, 0
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load i32, i32* %14, align 4
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  br label %345

345:                                              ; preds = %331, %319
  br label %346

346:                                              ; preds = %345, %315
  br label %347

347:                                              ; preds = %346, %286
  br label %348

348:                                              ; preds = %347, %223
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @sqlite3_mutex_leave(i32 %351)
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @osGetpid(i32 0)
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = inttoptr i64 %363 to i8*
  %365 = call i32 @OSTRACE(i8* %364)
  %366 = load i32, i32* %13, align 4
  ret i32 %366
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @unixShmSystemLock(%struct.TYPE_9__*, i32, i64, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @OSTRACE(i8*) #1

declare dso_local i32 @osGetpid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
