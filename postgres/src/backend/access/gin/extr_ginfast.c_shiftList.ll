; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_shiftList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_shiftList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@GIN_NDELETE_AT_ONCE = common dso_local global i32 0, align 4
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIN_DELETED = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_GIN_ID = common dso_local global i32 0, align 4
@XLOG_GIN_DELETE_LISTPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32, %struct.TYPE_11__*)* @shiftList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shiftList(i32 %0, i32 %1, i64 %2, i32 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @BufferGetPage(i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.TYPE_12__* @GinPageGetMeta(i64 %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %12, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %295, %5
  store i64 0, i64* %16, align 8
  %30 = load i32, i32* @GIN_NDELETE_AT_ONCE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %18, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %34 = load i32, i32* @GIN_NDELETE_AT_ONCE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i64, i64 %35, align 16
  store i64 %35, i64* %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %49, %29
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GIN_NDELETE_AT_ONCE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %44, %45
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %94

49:                                               ; preds = %47
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %36, i64 %53
  store i64 %50, i64* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @ReadBuffer(i32 %55, i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %33, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %33, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %68 = call i32 @LockBuffer(i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %33, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @BufferGetPage(i32 %73)
  store i64 %74, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @GinPageIsDeleted(i64 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load i64, i64* %14, align 8
  %85 = call %struct.TYPE_13__* @GinPageGetOpaque(i64 %84)
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %16, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call %struct.TYPE_13__* @GinPageGetOpaque(i64 %90)
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  br label %38

94:                                               ; preds = %47
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %97, %94
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @RelationNeedsWAL(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = call i32 @XLogEnsureRecordSpace(i64 %112, i32 0)
  br label %114

114:                                              ; preds = %109, %105
  %115 = call i32 (...) @START_CRIT_SECTION()
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp uge i64 %121, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @Assert(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %16, align 8
  %139 = icmp sge i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @Assert(i32 %140)
  %142 = load i64, i64* %16, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* @InvalidBlockNumber, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %114
  %151 = load i64, i64* @InvalidBlockNumber, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %150, %114
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %162 = bitcast %struct.TYPE_12__* %161 to i8*
  %163 = getelementptr inbounds i8, i8* %162, i64 40
  %164 = load i64, i64* %11, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = ptrtoint i8* %163 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = load i64, i64* %11, align 8
  %171 = inttoptr i64 %170 to %struct.TYPE_10__*
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @MarkBufferDirty(i32 %173)
  store i32 0, i32* %15, align 4
  br label %175

175:                                              ; preds = %195, %160
  %176 = load i32, i32* %15, align 4
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %175
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %33, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @BufferGetPage(i32 %184)
  store i64 %185, i64* %14, align 8
  %186 = load i32, i32* @GIN_DELETED, align 4
  %187 = load i64, i64* %14, align 8
  %188 = call %struct.TYPE_13__* @GinPageGetOpaque(i64 %187)
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %33, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @MarkBufferDirty(i32 %193)
  br label %195

195:                                              ; preds = %180
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %175

198:                                              ; preds = %175
  %199 = load i32, i32* %6, align 4
  %200 = call i64 @RelationNeedsWAL(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %256

202:                                              ; preds = %198
  %203 = call i32 (...) @XLogBeginInsert()
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %206 = load i32, i32* @REGBUF_STANDARD, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @XLogRegisterBuffer(i32 0, i32 %204, i32 %207)
  store i32 0, i32* %15, align 4
  br label %209

209:                                              ; preds = %223, %202
  %210 = load i32, i32* %15, align 4
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %209
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %33, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %222 = call i32 @XLogRegisterBuffer(i32 %216, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %214
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %15, align 4
  br label %209

226:                                              ; preds = %209
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %229 = call i32 @memcpy(i32* %227, %struct.TYPE_12__* %228, i32 40)
  %230 = bitcast %struct.TYPE_9__* %17 to i8*
  %231 = call i32 @XLogRegisterData(i8* %230, i32 8)
  %232 = load i32, i32* @RM_GIN_ID, align 4
  %233 = load i32, i32* @XLOG_GIN_DELETE_LISTPAGE, align 4
  %234 = call i32 @XLogInsert(i32 %232, i32 %233)
  store i32 %234, i32* %21, align 4
  %235 = load i64, i64* %11, align 8
  %236 = load i32, i32* %21, align 4
  %237 = call i32 @PageSetLSN(i64 %235, i32 %236)
  store i32 0, i32* %15, align 4
  br label %238

238:                                              ; preds = %252, %226
  %239 = load i32, i32* %15, align 4
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %238
  %244 = load i32, i32* %15, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %33, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @BufferGetPage(i32 %247)
  store i64 %248, i64* %14, align 8
  %249 = load i64, i64* %14, align 8
  %250 = load i32, i32* %21, align 4
  %251 = call i32 @PageSetLSN(i64 %249, i32 %250)
  br label %252

252:                                              ; preds = %243
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %238

255:                                              ; preds = %238
  br label %256

256:                                              ; preds = %255, %198
  store i32 0, i32* %15, align 4
  br label %257

257:                                              ; preds = %268, %256
  %258 = load i32, i32* %15, align 4
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %257
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %33, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @UnlockReleaseBuffer(i32 %266)
  br label %268

268:                                              ; preds = %262
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %15, align 4
  br label %257

271:                                              ; preds = %257
  %272 = call i32 (...) @END_CRIT_SECTION()
  store i32 0, i32* %15, align 4
  br label %273

273:                                              ; preds = %290, %271
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i32, i32* %15, align 4
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %277, %279
  br label %281

281:                                              ; preds = %276, %273
  %282 = phi i1 [ false, %273 ], [ %280, %276 ]
  br i1 %282, label %283, label %293

283:                                              ; preds = %281
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %36, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @RecordFreeIndexPage(i32 %284, i64 %288)
  br label %290

290:                                              ; preds = %283
  %291 = load i32, i32* %15, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %15, align 4
  br label %273

293:                                              ; preds = %281
  %294 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %294)
  br label %295

295:                                              ; preds = %293
  %296 = load i64, i64* %13, align 8
  %297 = load i64, i64* %8, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %29, label %299

299:                                              ; preds = %295
  ret void
}

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_12__* @GinPageGetMeta(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsDeleted(i64) #1

declare dso_local %struct.TYPE_13__* @GinPageGetOpaque(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogEnsureRecordSpace(i64, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @RecordFreeIndexPage(i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
