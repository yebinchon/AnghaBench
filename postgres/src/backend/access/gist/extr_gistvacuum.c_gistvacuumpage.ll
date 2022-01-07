; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuumpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuumpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i8*, i64 (i32*, i8*)*, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@MaxOffsetNumber = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidBuffer = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"index \22%s\22 contains an inner tuple marked as invalid\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"This is caused by an incomplete page split at crash recovery before upgrading to PostgreSQL 9.1.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Please REINDEX it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64, i64)* @gistvacuumpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistvacuumpage(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64 (i32*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %8, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %36, align 8
  store i64 (i32*, i8*)* %37, i64 (i32*, i8*)** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %278, %3
  %45 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %45, i64* %14, align 8
  %46 = call i32 (...) @vacuum_delay_point()
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MAIN_FORKNUM, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @RBM_NORMAL, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ReadBufferExtended(i32 %47, i32 %48, i64 %49, i32 %50, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %57 = call i32 @LockBuffer(i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @BufferGetPage(i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @gistPageRecyclable(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %44
  %64 = load i32, i32* %11, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @RecordFreeIndexPage(i32 %64, i64 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %272

77:                                               ; preds = %44
  %78 = load i64, i64* %13, align 8
  %79 = call i64 @GistPageIsDeleted(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %271

87:                                               ; preds = %77
  %88 = load i64, i64* %13, align 8
  %89 = call i64 @GistPageIsLeaf(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %227

91:                                               ; preds = %87
  %92 = load i32, i32* @MaxOffsetNumber, align 4
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %15, align 8
  %95 = alloca i64, i64 %93, align 16
  store i64 %93, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %96 = load i64, i64* %13, align 8
  %97 = call %struct.TYPE_15__* @GistPageGetOpaque(i64 %96)
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %19, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i64 @PageGetMaxOffsetNumber(i64 %98)
  store i64 %99, i64* %20, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i64 @GistFollowRight(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %91
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @GistPageGetNSN(i64 %107)
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %103, %91
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @InvalidBlockNumber, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %14, align 8
  br label %126

126:                                              ; preds = %122, %116, %110, %103
  %127 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %9, align 8
  %128 = icmp ne i64 (i32*, i8*)* %127, null
  br i1 %128, label %129, label %161

129:                                              ; preds = %126
  %130 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %130, i64* %21, align 8
  br label %131

131:                                              ; preds = %157, %129
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* %20, align 8
  %134 = icmp sle i64 %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %21, align 8
  %138 = call i32 @PageGetItemId(i64 %136, i64 %137)
  store i32 %138, i32* %22, align 4
  %139 = load i64, i64* %13, align 8
  %140 = load i32, i32* %22, align 4
  %141 = call i32 @PageGetItem(i64 %139, i32 %140)
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %23, align 8
  %144 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %9, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i8*, i8** %10, align 8
  %148 = call i64 %144(i32* %146, i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %135
  %151 = load i64, i64* %21, align 8
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i64, i64* %95, i64 %154
  store i64 %151, i64* %155, align 8
  br label %156

156:                                              ; preds = %150, %135
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %21, align 8
  %159 = call i64 @OffsetNumberNext(i64 %158)
  store i64 %159, i64* %21, align 8
  br label %131

160:                                              ; preds = %131
  br label %161

161:                                              ; preds = %160, %126
  %162 = load i32, i32* %17, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %199

164:                                              ; preds = %161
  %165 = call i32 (...) @START_CRIT_SECTION()
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @MarkBufferDirty(i32 %166)
  %168 = load i64, i64* %13, align 8
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @PageIndexMultiDelete(i64 %168, i64* %95, i32 %169)
  %171 = load i64, i64* %13, align 8
  %172 = call i32 @GistMarkTuplesDeleted(i64 %171)
  %173 = load i32, i32* %11, align 4
  %174 = call i64 @RelationNeedsWAL(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %164
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* @InvalidBuffer, align 4
  %180 = call i32 @gistXLogUpdate(i32 %177, i64* %95, i32 %178, i32* null, i32 0, i32 %179)
  store i32 %180, i32* %24, align 4
  %181 = load i64, i64* %13, align 8
  %182 = load i32, i32* %24, align 4
  %183 = call i32 @PageSetLSN(i64 %181, i32 %182)
  br label %189

184:                                              ; preds = %164
  %185 = load i64, i64* %13, align 8
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @gistGetFakeLSN(i32 %186)
  %188 = call i32 @PageSetLSN(i64 %185, i32 %187)
  br label %189

189:                                              ; preds = %184, %176
  %190 = call i32 (...) @END_CRIT_SECTION()
  %191 = load i32, i32* %17, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %191
  store i32 %196, i32* %194, align 4
  %197 = load i64, i64* %13, align 8
  %198 = call i64 @PageGetMaxOffsetNumber(i64 %197)
  store i64 %198, i64* %20, align 8
  br label %199

199:                                              ; preds = %189, %161
  %200 = load i64, i64* %20, align 8
  %201 = load i64, i64* @FirstOffsetNumber, align 8
  %202 = sub nsw i64 %200, %201
  %203 = add nsw i64 %202, 1
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %18, align 4
  %205 = load i32, i32* %18, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %199
  %208 = load i64, i64* %5, align 8
  %209 = load i64, i64* %6, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i64, i64* %5, align 8
  %216 = call i32 @intset_add_member(i32 %214, i64 %215)
  br label %217

217:                                              ; preds = %211, %207
  br label %225

218:                                              ; preds = %199
  %219 = load i32, i32* %18, align 4
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %219
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %218, %217
  %226 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %226)
  br label %270

227:                                              ; preds = %87
  %228 = load i64, i64* %13, align 8
  %229 = call i64 @PageGetMaxOffsetNumber(i64 %228)
  store i64 %229, i64* %25, align 8
  %230 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %230, i64* %26, align 8
  br label %231

231:                                              ; preds = %256, %227
  %232 = load i64, i64* %26, align 8
  %233 = load i64, i64* %25, align 8
  %234 = icmp sle i64 %232, %233
  br i1 %234, label %235, label %259

235:                                              ; preds = %231
  %236 = load i64, i64* %13, align 8
  %237 = load i64, i64* %26, align 8
  %238 = call i32 @PageGetItemId(i64 %236, i64 %237)
  store i32 %238, i32* %27, align 4
  %239 = load i64, i64* %13, align 8
  %240 = load i32, i32* %27, align 4
  %241 = call i32 @PageGetItem(i64 %239, i32 %240)
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %243, %struct.TYPE_12__** %28, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %245 = call i64 @GistTupleIsInvalid(%struct.TYPE_12__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %235
  %248 = load i32, i32* @LOG, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @RelationGetRelationName(i32 %249)
  %251 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %250)
  %252 = call i32 @errdetail(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  %253 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %254 = call i32 @ereport(i32 %248, i32 %253)
  br label %255

255:                                              ; preds = %247, %235
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %26, align 8
  %258 = call i64 @OffsetNumberNext(i64 %257)
  store i64 %258, i64* %26, align 8
  br label %231

259:                                              ; preds = %231
  %260 = load i64, i64* %5, align 8
  %261 = load i64, i64* %6, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i64, i64* %5, align 8
  %268 = call i32 @intset_add_member(i32 %266, i64 %267)
  br label %269

269:                                              ; preds = %263, %259
  br label %270

270:                                              ; preds = %269, %225
  br label %271

271:                                              ; preds = %270, %81
  br label %272

272:                                              ; preds = %271, %63
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @UnlockReleaseBuffer(i32 %273)
  %275 = load i64, i64* %14, align 8
  %276 = load i64, i64* @InvalidBlockNumber, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = load i64, i64* %14, align 8
  store i64 %279, i64* %5, align 8
  br label %44

280:                                              ; preds = %272
  ret void
}

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @gistPageRecyclable(i64) #1

declare dso_local i32 @RecordFreeIndexPage(i32, i64) #1

declare dso_local i64 @GistPageIsDeleted(i64) #1

declare dso_local i64 @GistPageIsLeaf(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_15__* @GistPageGetOpaque(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i64 @GistFollowRight(i64) #1

declare dso_local i64 @GistPageGetNSN(i64) #1

declare dso_local i32 @PageGetItemId(i64, i64) #1

declare dso_local i32 @PageGetItem(i64, i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i64*, i32) #1

declare dso_local i32 @GistMarkTuplesDeleted(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @gistXLogUpdate(i32, i64*, i32, i32*, i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @gistGetFakeLSN(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @intset_add_member(i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @GistTupleIsInvalid(%struct.TYPE_12__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
