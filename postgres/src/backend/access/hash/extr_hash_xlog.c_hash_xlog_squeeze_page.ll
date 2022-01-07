; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_squeeze_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_squeeze_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i64, i64 }
%struct.TYPE_14__ = type { i32, i8*, i8*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"hash_xlog_squeeze_page: failed to add item to hash index page, size %d bytes\00", align 1
@InvalidBlockNumber = common dso_local global i8* null, align 8
@LH_UNUSED_PAGE = common dso_local global i32 0, align 4
@HASHO_PAGE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @hash_xlog_squeeze_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_xlog_squeeze_page(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_14__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_15__*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i64 @XLogRecGetData(%struct.TYPE_13__* %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %4, align 8
  %45 = load i32, i32* @InvalidBuffer, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @InvalidBuffer, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = load i32, i32* @RBM_NORMAL, align 4
  %54 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_13__* %52, i32 1, i32 %53, i32 1, i32* %6)
  store i64 %54, i64* %10, align 8
  br label %61

55:                                               ; preds = %1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = load i32, i32* @RBM_NORMAL, align 4
  %58 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_13__* %56, i32 0, i32 %57, i32 1, i32* %5)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = call i64 @XLogReadBufferForRedo(%struct.TYPE_13__* %59, i32 1, i32* %6)
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %152

65:                                               ; preds = %61
  store i64 0, i64* %15, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = call i8* @XLogRecGetBlockData(%struct.TYPE_13__* %66, i32 1, i32* %14)
  store i8* %67, i8** %12, align 8
  store i8* %67, i8** %13, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @BufferGetPage(i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %124

74:                                               ; preds = %65
  %75 = load i8*, i8** %13, align 8
  %76 = bitcast i8* %75 to i64*
  store i64* %76, i64** %16, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 8, %80
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %120, %74
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %84
  %94 = load i8*, i8** %13, align 8
  %95 = ptrtoint i8* %94 to i64
  store i64 %95, i64* %17, align 8
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @IndexTupleSize(i64 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @MAXALIGN(i32 %98)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %13, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %17, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %18, align 4
  %108 = load i64*, i64** %16, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @PageAddItem(i64 %104, i32 %106, i32 %107, i64 %111, i32 0, i32 0)
  store i64 %112, i64* %19, align 8
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* @InvalidOffsetNumber, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %93
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @elog(i32 %117, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %93
  %121 = load i64, i64* %15, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %15, align 8
  br label %84

123:                                              ; preds = %84
  br label %124

124:                                              ; preds = %123, %65
  %125 = load i64, i64* %15, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = icmp eq i64 %125, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @Assert(i32 %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %124
  %138 = load i64, i64* %11, align 8
  %139 = call i64 @PageGetSpecialPointer(i64 %138)
  %140 = inttoptr i64 %139 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %140, %struct.TYPE_14__** %20, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %137, %124
  %147 = load i64, i64* %11, align 8
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @PageSetLSN(i64 %147, i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @MarkBufferDirty(i32 %150)
  br label %152

152:                                              ; preds = %146, %61
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %154 = call i64 @XLogReadBufferForRedo(%struct.TYPE_13__* %153, i32 2, i32* %7)
  %155 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %152
  %158 = load i32, i32* %7, align 4
  %159 = call i64 @BufferGetPage(i32 %158)
  store i64 %159, i64* %21, align 8
  %160 = load i64, i64* %21, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @BufferGetPageSize(i32 %161)
  %163 = call i32 @_hash_pageinit(i64 %160, i32 %162)
  %164 = load i64, i64* %21, align 8
  %165 = call i64 @PageGetSpecialPointer(i64 %164)
  %166 = inttoptr i64 %165 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %22, align 8
  %167 = load i8*, i8** @InvalidBlockNumber, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load i8*, i8** @InvalidBlockNumber, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  store i32 -1, i32* %174, align 8
  %175 = load i32, i32* @LH_UNUSED_PAGE, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @HASHO_PAGE_ID, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load i64, i64* %21, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @PageSetLSN(i64 %181, i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @MarkBufferDirty(i32 %184)
  br label %186

186:                                              ; preds = %157, %152
  %187 = load i32, i32* %7, align 4
  %188 = call i64 @BufferIsValid(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @UnlockReleaseBuffer(i32 %191)
  br label %193

193:                                              ; preds = %190, %186
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %219, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %200 = call i64 @XLogReadBufferForRedo(%struct.TYPE_13__* %199, i32 3, i32* %8)
  %201 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %219

203:                                              ; preds = %198
  %204 = load i32, i32* %8, align 4
  %205 = call i64 @BufferGetPage(i32 %204)
  store i64 %205, i64* %23, align 8
  %206 = load i64, i64* %23, align 8
  %207 = call i64 @PageGetSpecialPointer(i64 %206)
  %208 = inttoptr i64 %207 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %208, %struct.TYPE_14__** %24, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @PageSetLSN(i64 %214, i32 %215)
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @MarkBufferDirty(i32 %217)
  br label %219

219:                                              ; preds = %203, %198, %193
  %220 = load i32, i32* %8, align 4
  %221 = call i64 @BufferIsValid(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @UnlockReleaseBuffer(i32 %224)
  br label %226

226:                                              ; preds = %223, %219
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %228 = call i64 @XLogRecHasBlockRef(%struct.TYPE_13__* %227, i32 4)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %226
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %232 = call i64 @XLogReadBufferForRedo(%struct.TYPE_13__* %231, i32 4, i32* %25)
  %233 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %251

235:                                              ; preds = %230
  %236 = load i32, i32* %25, align 4
  %237 = call i64 @BufferGetPage(i32 %236)
  store i64 %237, i64* %26, align 8
  %238 = load i64, i64* %26, align 8
  %239 = call i64 @PageGetSpecialPointer(i64 %238)
  %240 = inttoptr i64 %239 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %240, %struct.TYPE_14__** %27, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  %246 = load i64, i64* %26, align 8
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @PageSetLSN(i64 %246, i32 %247)
  %249 = load i32, i32* %25, align 4
  %250 = call i32 @MarkBufferDirty(i32 %249)
  br label %251

251:                                              ; preds = %235, %230
  %252 = load i32, i32* %25, align 4
  %253 = call i64 @BufferIsValid(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load i32, i32* %25, align 4
  %257 = call i32 @UnlockReleaseBuffer(i32 %256)
  br label %258

258:                                              ; preds = %255, %251
  br label %259

259:                                              ; preds = %258, %226
  %260 = load i32, i32* %6, align 4
  %261 = call i64 @BufferIsValid(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i32, i32* %6, align 4
  %265 = call i32 @UnlockReleaseBuffer(i32 %264)
  br label %266

266:                                              ; preds = %263, %259
  %267 = load i32, i32* %5, align 4
  %268 = call i64 @BufferIsValid(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @UnlockReleaseBuffer(i32 %271)
  br label %273

273:                                              ; preds = %270, %266
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %275 = call i64 @XLogReadBufferForRedo(%struct.TYPE_13__* %274, i32 5, i32* %9)
  %276 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %273
  %279 = load i32, i32* %9, align 4
  %280 = call i64 @BufferGetPage(i32 %279)
  store i64 %280, i64* %28, align 8
  store i32* null, i32** %29, align 8
  %281 = load i64, i64* %28, align 8
  %282 = call i32* @HashPageGetBitmap(i64 %281)
  store i32* %282, i32** %29, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %284 = call i8* @XLogRecGetBlockData(%struct.TYPE_13__* %283, i32 5, i32* %32)
  store i8* %284, i8** %30, align 8
  %285 = load i8*, i8** %30, align 8
  %286 = bitcast i8* %285 to i32*
  store i32* %286, i32** %31, align 8
  %287 = load i32*, i32** %29, align 8
  %288 = load i32*, i32** %31, align 8
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @CLRBIT(i32* %287, i32 %289)
  %291 = load i64, i64* %28, align 8
  %292 = load i32, i32* %3, align 4
  %293 = call i32 @PageSetLSN(i64 %291, i32 %292)
  %294 = load i32, i32* %9, align 4
  %295 = call i32 @MarkBufferDirty(i32 %294)
  br label %296

296:                                              ; preds = %278, %273
  %297 = load i32, i32* %9, align 4
  %298 = call i64 @BufferIsValid(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load i32, i32* %9, align 4
  %302 = call i32 @UnlockReleaseBuffer(i32 %301)
  br label %303

303:                                              ; preds = %300, %296
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %305 = call i64 @XLogRecHasBlockRef(%struct.TYPE_13__* %304, i32 6)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %338

307:                                              ; preds = %303
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %309 = call i64 @XLogReadBufferForRedo(%struct.TYPE_13__* %308, i32 6, i32* %33)
  %310 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %330

312:                                              ; preds = %307
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %314 = call i8* @XLogRecGetBlockData(%struct.TYPE_13__* %313, i32 6, i32* %38)
  store i8* %314, i8** %36, align 8
  %315 = load i8*, i8** %36, align 8
  %316 = bitcast i8* %315 to i32*
  store i32* %316, i32** %37, align 8
  %317 = load i32, i32* %33, align 4
  %318 = call i64 @BufferGetPage(i32 %317)
  store i64 %318, i64* %35, align 8
  %319 = load i64, i64* %35, align 8
  %320 = call %struct.TYPE_15__* @HashPageGetMeta(i64 %319)
  store %struct.TYPE_15__* %320, %struct.TYPE_15__** %34, align 8
  %321 = load i32*, i32** %37, align 8
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 4
  %325 = load i64, i64* %35, align 8
  %326 = load i32, i32* %3, align 4
  %327 = call i32 @PageSetLSN(i64 %325, i32 %326)
  %328 = load i32, i32* %33, align 4
  %329 = call i32 @MarkBufferDirty(i32 %328)
  br label %330

330:                                              ; preds = %312, %307
  %331 = load i32, i32* %33, align 4
  %332 = call i64 @BufferIsValid(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = load i32, i32* %33, align 4
  %336 = call i32 @UnlockReleaseBuffer(i32 %335)
  br label %337

337:                                              ; preds = %334, %330
  br label %338

338:                                              ; preds = %337, %303
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_13__*) #1

declare dso_local i64 @XLogReadBufferForRedoExtended(%struct.TYPE_13__*, i32, i32, i32, i32*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i64 @PageAddItem(i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @_hash_pageinit(i64, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @XLogRecHasBlockRef(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @HashPageGetBitmap(i64) #1

declare dso_local i32 @CLRBIT(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @HashPageGetMeta(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
