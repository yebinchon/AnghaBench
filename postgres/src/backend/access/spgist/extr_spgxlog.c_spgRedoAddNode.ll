; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoAddNode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoAddNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to add item of size %u to SPGiST index page\00", align 1
@SPGIST_PLACEHOLDER = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@SPGIST_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @spgRedoAddNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgRedoAddNode(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__, align 4
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = call i8* @XLogRecGetData(%struct.TYPE_19__* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 48
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @memcpy(%struct.TYPE_21__* %7, i8* %28, i32 4)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fillFakeState(%struct.TYPE_20__* %8, i32 %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = call i32 @XLogRecHasBlockRef(%struct.TYPE_19__* %34, i32 1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %88, label %37

37:                                               ; preds = %1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, -1
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = call i64 @XLogReadBufferForRedo(%struct.TYPE_19__* %44, i32 0, i32* %9)
  %46 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @BufferGetPage(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @PageIndexTupleDelete(i32 %51, i64 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @PageAddItem(i32 %56, i32 %58, i32 %60, i64 %63, i32 0, i32 0)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %48
  %70 = load i32, i32* @ERROR, align 4
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @elog(i32 %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %48
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @PageSetLSN(i32 %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @MarkBufferDirty(i32 %78)
  br label %80

80:                                               ; preds = %74, %37
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @BufferIsValid(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @UnlockReleaseBuffer(i32 %85)
  br label %87

87:                                               ; preds = %84, %80
  br label %299

88:                                               ; preds = %1
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %90 = call i32 @XLogRecGetBlockTag(%struct.TYPE_19__* %89, i32 0, i32* null, i32* null, i32* %12)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %92 = call i32 @XLogRecGetBlockTag(%struct.TYPE_19__* %91, i32 1, i32* null, i32* null, i32* %13)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = call i32 @XLogInitBufferForRedo(%struct.TYPE_19__* %98, i32 1)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @SpGistInitBuffer(i32 %100, i32 0)
  %102 = load i64, i64* @BLK_NEEDS_REDO, align 8
  store i64 %102, i64* %11, align 8
  br label %106

103:                                              ; preds = %88
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = call i64 @XLogReadBufferForRedo(%struct.TYPE_19__* %104, i32 1, i32* %9)
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %149

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @BufferGetPage(i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @addOrReplaceTuple(i32 %113, i32 %115, i32 %117, i32 %120)
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %143

126:                                              ; preds = %110
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @PageGetItemId(i32 %128, i32 %131)
  %133 = call i64 @PageGetItem(i32 %127, i32 %132)
  store i64 %133, i64* %14, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @spgUpdateNodeLink(i64 %134, i32 %137, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %126, %110
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @PageSetLSN(i32 %144, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @MarkBufferDirty(i32 %147)
  br label %149

149:                                              ; preds = %143, %106
  %150 = load i32, i32* %9, align 4
  %151 = call i64 @BufferIsValid(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @UnlockReleaseBuffer(i32 %154)
  br label %156

156:                                              ; preds = %153, %149
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %158 = call i64 @XLogReadBufferForRedo(%struct.TYPE_19__* %157, i32 0, i32* %9)
  %159 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %249

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @BufferGetPage(i32 %162)
  store i32 %163, i32* %10, align 4
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %169 = load i32, i32* @InvalidBlockNumber, align 4
  %170 = load i32, i32* @InvalidOffsetNumber, align 4
  %171 = call %struct.TYPE_22__* @spgFormDeadTuple(%struct.TYPE_20__* %8, i32 %168, i32 %169, i32 %170)
  store %struct.TYPE_22__* %171, %struct.TYPE_22__** %15, align 8
  br label %179

172:                                              ; preds = %161
  %173 = load i32, i32* @SPGIST_REDIRECT, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call %struct.TYPE_22__* @spgFormDeadTuple(%struct.TYPE_20__* %8, i32 %173, i32 %174, i32 %177)
  store %struct.TYPE_22__* %178, %struct.TYPE_22__** %15, align 8
  br label %179

179:                                              ; preds = %172, %167
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @PageIndexTupleDelete(i32 %180, i64 %183)
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %187 = ptrtoint %struct.TYPE_22__* %186 to i32
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @PageAddItem(i32 %185, i32 %187, i32 %190, i64 %193, i32 0, i32 0)
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %179
  %200 = load i32, i32* @ERROR, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @elog(i32 %200, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %199, %179
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32, i32* %10, align 4
  %211 = call %struct.TYPE_17__* @SpGistPageGetOpaque(i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  br label %221

215:                                              ; preds = %205
  %216 = load i32, i32* %10, align 4
  %217 = call %struct.TYPE_17__* @SpGistPageGetOpaque(i32 %216)
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %215, %209
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %221
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @PageGetItemId(i32 %228, i32 %231)
  %233 = call i64 @PageGetItem(i32 %227, i32 %232)
  store i64 %233, i64* %16, align 8
  %234 = load i64, i64* %16, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @spgUpdateNodeLink(i64 %234, i32 %237, i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %226, %221
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %3, align 4
  %246 = call i32 @PageSetLSN(i32 %244, i32 %245)
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @MarkBufferDirty(i32 %247)
  br label %249

249:                                              ; preds = %243, %156
  %250 = load i32, i32* %9, align 4
  %251 = call i64 @BufferIsValid(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @UnlockReleaseBuffer(i32 %254)
  br label %256

256:                                              ; preds = %253, %249
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %298

261:                                              ; preds = %256
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %263 = call i64 @XLogReadBufferForRedo(%struct.TYPE_19__* %262, i32 2, i32* %9)
  %264 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %261
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @BufferGetPage(i32 %267)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @PageGetItemId(i32 %270, i32 %273)
  %275 = call i64 @PageGetItem(i32 %269, i32 %274)
  store i64 %275, i64* %17, align 8
  %276 = load i64, i64* %17, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %13, align 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @spgUpdateNodeLink(i64 %276, i32 %279, i32 %280, i32 %283)
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* %3, align 4
  %287 = call i32 @PageSetLSN(i32 %285, i32 %286)
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @MarkBufferDirty(i32 %288)
  br label %290

290:                                              ; preds = %266, %261
  %291 = load i32, i32* %9, align 4
  %292 = call i64 @BufferIsValid(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %290
  %295 = load i32, i32* %9, align 4
  %296 = call i32 @UnlockReleaseBuffer(i32 %295)
  br label %297

297:                                              ; preds = %294, %290
  br label %298

298:                                              ; preds = %297, %256
  br label %299

299:                                              ; preds = %298, %87
  ret void
}

declare dso_local i8* @XLogRecGetData(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @fillFakeState(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @XLogRecHasBlockRef(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_19__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SpGistInitBuffer(i32, i32) #1

declare dso_local i32 @addOrReplaceTuple(i32, i32, i32, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @spgUpdateNodeLink(i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @spgFormDeadTuple(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @SpGistPageGetOpaque(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
