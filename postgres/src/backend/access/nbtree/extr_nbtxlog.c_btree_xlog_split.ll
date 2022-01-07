; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_split.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@P_NONE = common dso_local global i64 0, align 8
@BTP_LEAF = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@P_HIKEY = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to add high key to left page after split\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to add new item to left page after split\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"failed to add old item to left page after split\00", align 1
@BTP_INCOMPLETE_SPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*)* @btree_xlog_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_xlog_split(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = call i64 @XLogRecGetData(%struct.TYPE_15__* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %6, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = call i32 @XLogRecGetBlockTag(%struct.TYPE_15__* %43, i32 0, i32* null, i32* null, i64* %14)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = call i32 @XLogRecGetBlockTag(%struct.TYPE_15__* %45, i32 1, i32* null, i32* null, i64* %15)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = call i32 @XLogRecGetBlockTag(%struct.TYPE_15__* %47, i32 2, i32* null, i32* null, i64* %16)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %2
  %51 = load i64, i64* @P_NONE, align 8
  store i64 %51, i64* %16, align 8
  br label %52

52:                                               ; preds = %50, %2
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = call i32 @_bt_clear_incomplete_split(%struct.TYPE_15__* %56, i32 3)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = call i32 @XLogInitBufferForRedo(%struct.TYPE_15__* %59, i32 1)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = call i8* @XLogRecGetBlockData(%struct.TYPE_15__* %61, i32 1, i64* %13)
  store i8* %62, i8** %12, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @BufferGetPage(i32 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @BufferGetPageSize(i32 %66)
  %68 = call i32 @_bt_pageinit(i64 %65, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @PageGetSpecialPointer(i64 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %58
  %87 = load i32, i32* @BTP_LEAF, align 4
  br label %89

88:                                               ; preds = %58
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @_bt_restore_page(i64 %95, i8* %96, i64 %97)
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @PageSetLSN(i64 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @MarkBufferDirty(i32 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = call i64 @XLogReadBufferForRedo(%struct.TYPE_15__* %104, i32 0, i32* %8)
  %106 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %272

108:                                              ; preds = %89
  %109 = load i32, i32* %8, align 4
  %110 = call i64 @BufferGetPage(i32 %109)
  store i64 %110, i64* %17, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call i64 @PageGetSpecialPointer(i64 %111)
  %113 = inttoptr i64 %112 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %18, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = call i8* @XLogRecGetBlockData(%struct.TYPE_15__* %114, i32 0, i64* %13)
  store i8* %115, i8** %12, align 8
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %108
  %119 = load i8*, i8** %12, align 8
  %120 = bitcast i8* %119 to i32*
  store i32* %120, i32** %20, align 8
  %121 = load i32*, i32** %20, align 8
  %122 = call i32 @IndexTupleSize(i32* %121)
  %123 = call i64 @MAXALIGN(i32 %122)
  store i64 %123, i64* %22, align 8
  %124 = load i64, i64* %22, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %12, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* %13, align 8
  %129 = sub nsw i64 %128, %127
  store i64 %129, i64* %13, align 8
  br label %130

130:                                              ; preds = %118, %108
  %131 = load i8*, i8** %12, align 8
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %21, align 8
  %133 = load i32*, i32** %21, align 8
  %134 = call i32 @IndexTupleSize(i32* %133)
  %135 = call i64 @MAXALIGN(i32 %134)
  store i64 %135, i64* %23, align 8
  %136 = load i64, i64* %23, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8* %138, i8** %12, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* %13, align 8
  %141 = sub nsw i64 %140, %139
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* %13, align 8
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @Assert(i32 %144)
  %146 = load i64, i64* %17, align 8
  %147 = call i64 @PageGetTempPageCopySpecial(i64 %146)
  store i64 %147, i64* %24, align 8
  %148 = load i64, i64* @P_HIKEY, align 8
  store i64 %148, i64* %25, align 8
  %149 = load i64, i64* %24, align 8
  %150 = load i32*, i32** %21, align 8
  %151 = ptrtoint i32* %150 to i32
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* @P_HIKEY, align 8
  %154 = call i64 @PageAddItem(i64 %149, i32 %151, i64 %152, i64 %153, i32 0, i32 0)
  %155 = load i64, i64* @InvalidOffsetNumber, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %130
  %158 = load i32, i32* @PANIC, align 4
  %159 = call i32 @elog(i32 %158, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %130
  %161 = load i64, i64* %25, align 8
  %162 = call i64 @OffsetNumberNext(i64 %161)
  store i64 %162, i64* %25, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %164 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_16__* %163)
  store i64 %164, i64* %19, align 8
  br label %165

165:                                              ; preds = %219, %160
  %166 = load i64, i64* %19, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %166, %169
  br i1 %170, label %171, label %222

171:                                              ; preds = %165
  %172 = load i32, i32* %3, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %171
  %175 = load i64, i64* %19, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load i64, i64* %24, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = ptrtoint i32* %182 to i32
  %184 = load i64, i64* %22, align 8
  %185 = load i64, i64* %25, align 8
  %186 = call i64 @PageAddItem(i64 %181, i32 %183, i64 %184, i64 %185, i32 0, i32 0)
  %187 = load i64, i64* @InvalidOffsetNumber, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32, i32* @ERROR, align 4
  %191 = call i32 @elog(i32 %190, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %180
  %193 = load i64, i64* %25, align 8
  %194 = call i64 @OffsetNumberNext(i64 %193)
  store i64 %194, i64* %25, align 8
  br label %195

195:                                              ; preds = %192, %174, %171
  %196 = load i64, i64* %17, align 8
  %197 = load i64, i64* %19, align 8
  %198 = call i32 @PageGetItemId(i64 %196, i64 %197)
  store i32 %198, i32* %26, align 4
  %199 = load i32, i32* %26, align 4
  %200 = call i64 @ItemIdGetLength(i32 %199)
  store i64 %200, i64* %27, align 8
  %201 = load i64, i64* %17, align 8
  %202 = load i32, i32* %26, align 4
  %203 = call i64 @PageGetItem(i64 %201, i32 %202)
  %204 = inttoptr i64 %203 to i32*
  store i32* %204, i32** %28, align 8
  %205 = load i64, i64* %24, align 8
  %206 = load i32*, i32** %28, align 8
  %207 = ptrtoint i32* %206 to i32
  %208 = load i64, i64* %27, align 8
  %209 = load i64, i64* %25, align 8
  %210 = call i64 @PageAddItem(i64 %205, i32 %207, i64 %208, i64 %209, i32 0, i32 0)
  %211 = load i64, i64* @InvalidOffsetNumber, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %195
  %214 = load i32, i32* @ERROR, align 4
  %215 = call i32 @elog(i32 %214, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %195
  %217 = load i64, i64* %25, align 8
  %218 = call i64 @OffsetNumberNext(i64 %217)
  store i64 %218, i64* %25, align 8
  br label %219

219:                                              ; preds = %216
  %220 = load i64, i64* %19, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %19, align 8
  br label %165

222:                                              ; preds = %165
  %223 = load i32, i32* %3, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %222
  %226 = load i64, i64* %19, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %226, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %225
  %232 = load i64, i64* %24, align 8
  %233 = load i32*, i32** %20, align 8
  %234 = ptrtoint i32* %233 to i32
  %235 = load i64, i64* %22, align 8
  %236 = load i64, i64* %25, align 8
  %237 = call i64 @PageAddItem(i64 %232, i32 %234, i64 %235, i64 %236, i32 0, i32 0)
  %238 = load i64, i64* @InvalidOffsetNumber, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %231
  %241 = load i32, i32* @ERROR, align 4
  %242 = call i32 @elog(i32 %241, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %231
  %244 = load i64, i64* %25, align 8
  %245 = call i64 @OffsetNumberNext(i64 %244)
  store i64 %245, i64* %25, align 8
  br label %246

246:                                              ; preds = %243, %225, %222
  %247 = load i64, i64* %24, align 8
  %248 = load i64, i64* %17, align 8
  %249 = call i32 @PageRestoreTempPage(i64 %247, i64 %248)
  %250 = load i32, i32* @BTP_INCOMPLETE_SPLIT, align 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %246
  %256 = load i32, i32* @BTP_LEAF, align 4
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %255, %246
  %262 = load i64, i64* %15, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 2
  store i64 %262, i64* %264, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  store i64 0, i64* %266, align 8
  %267 = load i64, i64* %17, align 8
  %268 = load i32, i32* %5, align 4
  %269 = call i32 @PageSetLSN(i64 %267, i32 %268)
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @MarkBufferDirty(i32 %270)
  br label %272

272:                                              ; preds = %261, %89
  %273 = load i32, i32* %8, align 4
  %274 = call i64 @BufferIsValid(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @UnlockReleaseBuffer(i32 %277)
  br label %279

279:                                              ; preds = %276, %272
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @UnlockReleaseBuffer(i32 %280)
  %282 = load i64, i64* %16, align 8
  %283 = load i64, i64* @P_NONE, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %312

285:                                              ; preds = %279
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %287 = call i64 @XLogReadBufferForRedo(%struct.TYPE_15__* %286, i32 2, i32* %29)
  %288 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %285
  %291 = load i32, i32* %29, align 4
  %292 = call i64 @BufferGetPage(i32 %291)
  store i64 %292, i64* %30, align 8
  %293 = load i64, i64* %30, align 8
  %294 = call i64 @PageGetSpecialPointer(i64 %293)
  %295 = inttoptr i64 %294 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %295, %struct.TYPE_16__** %31, align 8
  %296 = load i64, i64* %15, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  %299 = load i64, i64* %30, align 8
  %300 = load i32, i32* %5, align 4
  %301 = call i32 @PageSetLSN(i64 %299, i32 %300)
  %302 = load i32, i32* %29, align 4
  %303 = call i32 @MarkBufferDirty(i32 %302)
  br label %304

304:                                              ; preds = %290, %285
  %305 = load i32, i32* %29, align 4
  %306 = call i64 @BufferIsValid(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load i32, i32* %29, align 4
  %310 = call i32 @UnlockReleaseBuffer(i32 %309)
  br label %311

311:                                              ; preds = %308, %304
  br label %312

312:                                              ; preds = %311, %279
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_15__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_15__*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @_bt_clear_incomplete_split(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_15__*, i32, i64*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @_bt_pageinit(i64, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @_bt_restore_page(i64, i8*, i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @IndexTupleSize(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PageGetTempPageCopySpecial(i64) #1

declare dso_local i64 @PageAddItem(i64, i32, i64, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_16__*) #1

declare dso_local i32 @PageGetItemId(i64, i64) #1

declare dso_local i64 @ItemIdGetLength(i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i32 @PageRestoreTempPage(i64, i64) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
