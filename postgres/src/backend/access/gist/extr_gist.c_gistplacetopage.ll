; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistplacetopage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistplacetopage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_25__*, i8*, %struct.TYPE_23__, i64, %struct.TYPE_26__*, i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_27__ = type { i8*, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"concurrent GiST page split was incomplete\00", align 1
@NIL = common dso_local global i32* null, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIST_ROOT_BLKNO = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i32 0, align 4
@GIST_MAX_SPLIT_PAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"GiST page split into too many halves (%d, maximum %d)\00", align 1
@F_LEAF = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to add item to index page in \22%s\22\00", align 1
@GistBuildLSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistplacetopage(i32 %0, i32 %1, i32* %2, i8* %3, %struct.TYPE_26__** %4, i32 %5, i32 %6, i64* %7, i8* %8, i32** %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_26__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_26__**, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_25__*, align 8
  %36 = alloca %struct.TYPE_25__*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_25__, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.TYPE_26__**, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.TYPE_27__*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca %struct.TYPE_26__*, align 8
  %49 = alloca i32, align 4
  %50 = alloca [1 x i32], align 4
  %51 = alloca i8*, align 8
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i8* %3, i8** %17, align 8
  store %struct.TYPE_26__** %4, %struct.TYPE_26__*** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i64* %7, i64** %21, align 8
  store i8* %8, i8** %22, align 8
  store i32** %9, i32*** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %52 = load i8*, i8** %17, align 8
  %53 = call i8* @BufferGetBlockNumber(i8* %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %27, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = call i8* @BufferGetPage(i8* %55)
  store i8* %56, i8** %28, align 8
  %57 = load i8*, i8** %28, align 8
  %58 = call i64 @GistPageIsLeaf(i8* %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %29, align 4
  %62 = load i8*, i8** %28, align 8
  %63 = call i64 @GistFollowRight(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %13
  %66 = load i32, i32* @ERROR, align 4
  %67 = call i32 (i32, i8*, ...) @elog(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %13
  %69 = load i32*, i32** @NIL, align 8
  %70 = load i32**, i32*** %23, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i8*, i8** %28, align 8
  %72 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @gistnospace(i8* %71, %struct.TYPE_26__** %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %32, align 4
  %77 = load i32, i32* %32, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %68
  %80 = load i8*, i8** %28, align 8
  %81 = call i64 @GistPageIsLeaf(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i8*, i8** %28, align 8
  %85 = call i64 @GistPageHasGarbage(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32, i32* %14, align 4
  %89 = load i8*, i8** %28, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %25, align 4
  %92 = call i32 @gistprunepage(i32 %88, i8* %89, i8* %90, i32 %91)
  %93 = load i8*, i8** %28, align 8
  %94 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @gistnospace(i8* %93, %struct.TYPE_26__** %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %32, align 4
  br label %99

99:                                               ; preds = %87, %83, %79, %68
  %100 = load i32, i32* %32, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %611

102:                                              ; preds = %99
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %35, align 8
  %103 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %103, i64* %37, align 8
  store i32 0, i32* %38, align 4
  %104 = load i64, i64* %27, align 8
  %105 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %40, align 4
  %108 = load i8*, i8** %28, align 8
  %109 = call %struct.TYPE_26__** @gistextractpage(i8* %108, i32* %34)
  store %struct.TYPE_26__** %109, %struct.TYPE_26__*** %33, align 8
  %110 = load i32, i32* %20, align 4
  %111 = call i64 @OffsetNumberIsValid(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %102
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* @FirstOffsetNumber, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %42, align 4
  %117 = load i32, i32* %34, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %34, align 4
  %119 = load i32, i32* %42, align 4
  %120 = load i32, i32* %34, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %113
  %123 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %33, align 8
  %124 = load i32, i32* %42, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %123, i64 %125
  %127 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %33, align 8
  %128 = load i32, i32* %42, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %130, i64 1
  %132 = load i32, i32* %34, align 4
  %133 = load i32, i32* %42, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = mul i64 8, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memmove(%struct.TYPE_26__** %126, %struct.TYPE_26__** %131, i32 %137)
  br label %139

139:                                              ; preds = %122, %113
  br label %140

140:                                              ; preds = %139, %102
  %141 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %33, align 8
  %142 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %143 = load i32, i32* %19, align 4
  %144 = call %struct.TYPE_26__** @gistjoinvector(%struct.TYPE_26__** %141, i32* %34, %struct.TYPE_26__** %142, i32 %143)
  store %struct.TYPE_26__** %144, %struct.TYPE_26__*** %33, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i8*, i8** %28, align 8
  %147 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %33, align 8
  %148 = load i32, i32* %34, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = call %struct.TYPE_25__* @gistSplit(i32 %145, i8* %146, %struct.TYPE_26__** %147, i32 %148, i32* %149)
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %35, align 8
  store i32 0, i32* %41, align 4
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %151, %struct.TYPE_25__** %36, align 8
  br label %152

152:                                              ; preds = %158, %140
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %154 = icmp ne %struct.TYPE_25__* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i32, i32* %41, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %41, align 4
  br label %158

158:                                              ; preds = %155
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %160, align 8
  store %struct.TYPE_25__* %161, %struct.TYPE_25__** %36, align 8
  br label %152

162:                                              ; preds = %152
  %163 = load i32, i32* %40, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* %41, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %41, align 4
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %41, align 4
  %170 = load i32, i32* @GIST_MAX_SPLIT_PAGES, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i32, i32* @ERROR, align 4
  %174 = load i32, i32* %41, align 4
  %175 = load i32, i32* @GIST_MAX_SPLIT_PAGES, align 4
  %176 = call i32 (i32, i8*, ...) @elog(i32 %173, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %168
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %178, %struct.TYPE_25__** %36, align 8
  %179 = load i32, i32* %40, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %217, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %28, align 8
  %183 = call %struct.TYPE_24__* @GistPageGetOpaque(i8* %182)
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %37, align 8
  %186 = load i8*, i8** %28, align 8
  %187 = call i32 @GistPageGetNSN(i8* %186)
  store i32 %187, i32* %38, align 4
  %188 = load i8*, i8** %17, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = call i8* @BufferGetBlockNumber(i8* %191)
  %193 = ptrtoint i8* %192 to i64
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load i8*, i8** %17, align 8
  %198 = call i8* @BufferGetPage(i8* %197)
  %199 = call i8* @PageGetTempPageCopySpecial(i8* %198)
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  %202 = load i32, i32* %29, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %181
  %205 = load i32, i32* @F_LEAF, align 4
  br label %207

206:                                              ; preds = %181
  br label %207

207:                                              ; preds = %206, %204
  %208 = phi i32 [ %205, %204 ], [ 0, %206 ]
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = call %struct.TYPE_24__* @GistPageGetOpaque(i8* %211)
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 1
  store i32 %208, i32* %213, align 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %215, align 8
  store %struct.TYPE_25__* %216, %struct.TYPE_25__** %36, align 8
  br label %217

217:                                              ; preds = %207, %177
  br label %218

218:                                              ; preds = %259, %217
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %220 = icmp ne %struct.TYPE_25__* %219, null
  br i1 %220, label %221, label %263

221:                                              ; preds = %218
  %222 = load i32, i32* %14, align 4
  %223 = call i8* @gistNewBuffer(i32 %222)
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  store i8* %223, i8** %225, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* %29, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = load i32, i32* @F_LEAF, align 4
  br label %234

233:                                              ; preds = %221
  br label %234

234:                                              ; preds = %233, %231
  %235 = phi i32 [ %232, %231 ], [ 0, %233 ]
  %236 = call i32 @GISTInitBuffer(i8* %228, i32 %235)
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i8* @BufferGetPage(i8* %239)
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i8* @BufferGetBlockNumber(i8* %245)
  %247 = ptrtoint i8* %246 to i64
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 0
  store i64 %247, i64* %250, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i8*, i8** %17, align 8
  %253 = call i8* @BufferGetBlockNumber(i8* %252)
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i8* @BufferGetBlockNumber(i8* %256)
  %258 = call i32 @PredicateLockPageSplit(i32 %251, i8* %253, i8* %257)
  br label %259

259:                                              ; preds = %234
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %261, align 8
  store %struct.TYPE_25__* %262, %struct.TYPE_25__** %36, align 8
  br label %218

263:                                              ; preds = %218
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %264, %struct.TYPE_25__** %36, align 8
  br label %265

265:                                              ; preds = %282, %263
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %267 = icmp ne %struct.TYPE_25__* %266, null
  br i1 %267, label %268, label %286

268:                                              ; preds = %265
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 5
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @ItemPointerSetBlockNumber(i32* %272, i64 %276)
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 5
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %279, align 8
  %281 = call i32 @GistTupleSetValid(%struct.TYPE_26__* %280)
  br label %282

282:                                              ; preds = %268
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %284, align 8
  store %struct.TYPE_25__* %285, %struct.TYPE_25__** %36, align 8
  br label %265

286:                                              ; preds = %265
  %287 = load i32, i32* %40, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %351

289:                                              ; preds = %286
  store i32 0, i32* %44, align 4
  %290 = load i8*, i8** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  store i8* %290, i8** %291, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = call i8* @BufferGetPage(i8* %293)
  %295 = call i8* @PageGetTempPageCopySpecial(i8* %294)
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 2
  store i8* %295, i8** %296, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 2
  %298 = load i8*, i8** %297, align 8
  %299 = call %struct.TYPE_24__* @GistPageGetOpaque(i8* %298)
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 1
  store i32 0, i32* %300, align 8
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %301, %struct.TYPE_25__** %36, align 8
  br label %302

302:                                              ; preds = %308, %289
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %304 = icmp ne %struct.TYPE_25__* %303, null
  br i1 %304, label %305, label %312

305:                                              ; preds = %302
  %306 = load i32, i32* %44, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %44, align 4
  br label %308

308:                                              ; preds = %305
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %310, align 8
  store %struct.TYPE_25__* %311, %struct.TYPE_25__** %36, align 8
  br label %302

312:                                              ; preds = %302
  %313 = load i32, i32* %44, align 4
  %314 = sext i32 %313 to i64
  %315 = mul i64 8, %314
  %316 = trunc i64 %315 to i32
  %317 = call i8* @palloc(i32 %316)
  %318 = bitcast i8* %317 to %struct.TYPE_26__**
  store %struct.TYPE_26__** %318, %struct.TYPE_26__*** %43, align 8
  store i32 0, i32* %45, align 4
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %319, %struct.TYPE_25__** %36, align 8
  br label %320

320:                                              ; preds = %332, %312
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %322 = icmp ne %struct.TYPE_25__* %321, null
  br i1 %322, label %323, label %336

323:                                              ; preds = %320
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 5
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %325, align 8
  %327 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %43, align 8
  %328 = load i32, i32* %45, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %45, align 4
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %327, i64 %330
  store %struct.TYPE_26__* %326, %struct.TYPE_26__** %331, align 8
  br label %332

332:                                              ; preds = %323
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %334, align 8
  store %struct.TYPE_25__* %335, %struct.TYPE_25__** %36, align 8
  br label %320

336:                                              ; preds = %320
  %337 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  store i64 %337, i64* %339, align 8
  %340 = load i32, i32* %44, align 4
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 8
  %343 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %43, align 8
  %344 = load i32, i32* %44, align 4
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 6
  %346 = call i64 @gistfillitupvec(%struct.TYPE_26__** %343, i32 %344, i32* %345)
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 4
  store i64 %346, i64* %347, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 5
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %348, align 8
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  store %struct.TYPE_25__* %349, %struct.TYPE_25__** %350, align 8
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %35, align 8
  br label %379

351:                                              ; preds = %286
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %352, %struct.TYPE_25__** %36, align 8
  br label %353

353:                                              ; preds = %374, %351
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %355 = icmp ne %struct.TYPE_25__* %354, null
  br i1 %355, label %356, label %378

356:                                              ; preds = %353
  %357 = call i8* @palloc(i32 16)
  %358 = bitcast i8* %357 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %358, %struct.TYPE_27__** %46, align 8
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 0
  store i8* %361, i8** %363, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 5
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %365, align 8
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 1
  store %struct.TYPE_26__* %366, %struct.TYPE_26__** %368, align 8
  %369 = load i32**, i32*** %23, align 8
  %370 = load i32*, i32** %369, align 8
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  %372 = call i32* @lappend(i32* %370, %struct.TYPE_27__* %371)
  %373 = load i32**, i32*** %23, align 8
  store i32* %372, i32** %373, align 8
  br label %374

374:                                              ; preds = %356
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %376, align 8
  store %struct.TYPE_25__* %377, %struct.TYPE_25__** %36, align 8
  br label %353

378:                                              ; preds = %353
  br label %379

379:                                              ; preds = %378, %336
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %380, %struct.TYPE_25__** %36, align 8
  br label %381

381:                                              ; preds = %501, %379
  %382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %383 = icmp ne %struct.TYPE_25__* %382, null
  br i1 %383, label %384, label %505

384:                                              ; preds = %381
  %385 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %385, i32 0, i32 4
  %387 = load i64, i64* %386, align 8
  %388 = inttoptr i64 %387 to i8*
  store i8* %388, i8** %47, align 8
  store i32 0, i32* %31, align 4
  br label %389

389:                                              ; preds = %440, %384
  %390 = load i32, i32* %31, align 4
  %391 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = icmp slt i32 %390, %394
  br i1 %395, label %396, label %443

396:                                              ; preds = %389
  %397 = load i8*, i8** %47, align 8
  %398 = bitcast i8* %397 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %398, %struct.TYPE_26__** %48, align 8
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %400 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %399, i32 0, i32 2
  %401 = load i8*, i8** %400, align 8
  %402 = load i8*, i8** %47, align 8
  %403 = ptrtoint i8* %402 to i32
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %48, align 8
  %405 = call i32 @IndexTupleSize(%struct.TYPE_26__* %404)
  %406 = load i32, i32* %31, align 4
  %407 = load i32, i32* @FirstOffsetNumber, align 4
  %408 = add nsw i32 %406, %407
  %409 = call i64 @PageAddItem(i8* %401, i32 %403, i32 %405, i32 %408, i32 0, i32 0)
  %410 = load i64, i64* @InvalidOffsetNumber, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %417

412:                                              ; preds = %396
  %413 = load i32, i32* @ERROR, align 4
  %414 = load i32, i32* %14, align 4
  %415 = call i32 @RelationGetRelationName(i32 %414)
  %416 = call i32 (i32, i8*, ...) @elog(i32 %413, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %415)
  br label %417

417:                                              ; preds = %412, %396
  %418 = load i64*, i64** %21, align 8
  %419 = icmp ne i64* %418, null
  br i1 %419, label %420, label %434

420:                                              ; preds = %417
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %48, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 0
  %426 = call i64 @ItemPointerEquals(i32* %422, i32* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %434

428:                                              ; preds = %420
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %430 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load i64*, i64** %21, align 8
  store i64 %432, i64* %433, align 8
  br label %434

434:                                              ; preds = %428, %420, %417
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %48, align 8
  %436 = call i32 @IndexTupleSize(%struct.TYPE_26__* %435)
  %437 = load i8*, i8** %47, align 8
  %438 = sext i32 %436 to i64
  %439 = getelementptr inbounds i8, i8* %437, i64 %438
  store i8* %439, i8** %47, align 8
  br label %440

440:                                              ; preds = %434
  %441 = load i32, i32* %31, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %31, align 4
  br label %389

443:                                              ; preds = %389
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %445, align 8
  %447 = icmp ne %struct.TYPE_25__* %446, null
  br i1 %447, label %448, label %467

448:                                              ; preds = %443
  %449 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %450 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %454 = icmp ne i64 %452, %453
  br i1 %454, label %455, label %467

455:                                              ; preds = %448
  %456 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %457 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_25__*, %struct.TYPE_25__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %463 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %462, i32 0, i32 2
  %464 = load i8*, i8** %463, align 8
  %465 = call %struct.TYPE_24__* @GistPageGetOpaque(i8* %464)
  %466 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %465, i32 0, i32 0
  store i64 %461, i64* %466, align 8
  br label %474

467:                                              ; preds = %448, %443
  %468 = load i64, i64* %37, align 8
  %469 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %470 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %469, i32 0, i32 2
  %471 = load i8*, i8** %470, align 8
  %472 = call %struct.TYPE_24__* @GistPageGetOpaque(i8* %471)
  %473 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %472, i32 0, i32 0
  store i64 %468, i64* %473, align 8
  br label %474

474:                                              ; preds = %467, %455
  %475 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 1
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** %476, align 8
  %478 = icmp ne %struct.TYPE_25__* %477, null
  br i1 %478, label %479, label %490

479:                                              ; preds = %474
  %480 = load i32, i32* %40, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %490, label %482

482:                                              ; preds = %479
  %483 = load i32, i32* %24, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %482
  %486 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %487 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %486, i32 0, i32 2
  %488 = load i8*, i8** %487, align 8
  %489 = call i32 @GistMarkFollowRight(i8* %488)
  br label %495

490:                                              ; preds = %482, %479, %474
  %491 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %492 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %491, i32 0, i32 2
  %493 = load i8*, i8** %492, align 8
  %494 = call i32 @GistClearFollowRight(i8* %493)
  br label %495

495:                                              ; preds = %490, %485
  %496 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %497 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %496, i32 0, i32 2
  %498 = load i8*, i8** %497, align 8
  %499 = load i32, i32* %38, align 4
  %500 = call i32 @GistPageSetNSN(i8* %498, i32 %499)
  br label %501

501:                                              ; preds = %495
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 1
  %504 = load %struct.TYPE_25__*, %struct.TYPE_25__** %503, align 8
  store %struct.TYPE_25__* %504, %struct.TYPE_25__** %36, align 8
  br label %381

505:                                              ; preds = %381
  %506 = load i32, i32* %26, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %518, label %508

508:                                              ; preds = %505
  %509 = load i32, i32* %14, align 4
  %510 = call i64 @RelationNeedsWAL(i32 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %518

512:                                              ; preds = %508
  %513 = load i32, i32* %41, align 4
  %514 = load i32, i32* %41, align 4
  %515 = mul nsw i32 %514, 2
  %516 = add nsw i32 1, %515
  %517 = call i32 @XLogEnsureRecordSpace(i32 %513, i32 %516)
  br label %518

518:                                              ; preds = %512, %508, %505
  %519 = call i32 (...) @START_CRIT_SECTION()
  %520 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %520, %struct.TYPE_25__** %36, align 8
  br label %521

521:                                              ; preds = %529, %518
  %522 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %523 = icmp ne %struct.TYPE_25__* %522, null
  br i1 %523, label %524, label %533

524:                                              ; preds = %521
  %525 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %525, i32 0, i32 0
  %527 = load i8*, i8** %526, align 8
  %528 = call i32 @MarkBufferDirty(i8* %527)
  br label %529

529:                                              ; preds = %524
  %530 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %531 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %530, i32 0, i32 1
  %532 = load %struct.TYPE_25__*, %struct.TYPE_25__** %531, align 8
  store %struct.TYPE_25__* %532, %struct.TYPE_25__** %36, align 8
  br label %521

533:                                              ; preds = %521
  %534 = load i8*, i8** %22, align 8
  %535 = call i64 @BufferIsValid(i8* %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %533
  %538 = load i8*, i8** %22, align 8
  %539 = call i32 @MarkBufferDirty(i8* %538)
  br label %540

540:                                              ; preds = %537, %533
  %541 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %542 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %541, i32 0, i32 2
  %543 = load i8*, i8** %542, align 8
  %544 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %545 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %544, i32 0, i32 0
  %546 = load i8*, i8** %545, align 8
  %547 = call i8* @BufferGetPage(i8* %546)
  %548 = call i32 @PageRestoreTempPage(i8* %543, i8* %547)
  %549 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %550 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %549, i32 0, i32 0
  %551 = load i8*, i8** %550, align 8
  %552 = call i8* @BufferGetPage(i8* %551)
  %553 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %554 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %553, i32 0, i32 2
  store i8* %552, i8** %554, align 8
  %555 = load i32, i32* %26, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %540
  %558 = load i32, i32* @GistBuildLSN, align 4
  store i32 %558, i32* %30, align 4
  br label %575

559:                                              ; preds = %540
  %560 = load i32, i32* %14, align 4
  %561 = call i64 @RelationNeedsWAL(i32 %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %571

563:                                              ; preds = %559
  %564 = load i32, i32* %29, align 4
  %565 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %566 = load i64, i64* %37, align 8
  %567 = load i32, i32* %38, align 4
  %568 = load i8*, i8** %22, align 8
  %569 = load i32, i32* %24, align 4
  %570 = call i32 @gistXLogSplit(i32 %564, %struct.TYPE_25__* %565, i64 %566, i32 %567, i8* %568, i32 %569)
  store i32 %570, i32* %30, align 4
  br label %574

571:                                              ; preds = %559
  %572 = load i32, i32* %14, align 4
  %573 = call i32 @gistGetFakeLSN(i32 %572)
  store i32 %573, i32* %30, align 4
  br label %574

574:                                              ; preds = %571, %563
  br label %575

575:                                              ; preds = %574, %557
  %576 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  store %struct.TYPE_25__* %576, %struct.TYPE_25__** %36, align 8
  br label %577

577:                                              ; preds = %586, %575
  %578 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %579 = icmp ne %struct.TYPE_25__* %578, null
  br i1 %579, label %580, label %590

580:                                              ; preds = %577
  %581 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %582 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %581, i32 0, i32 2
  %583 = load i8*, i8** %582, align 8
  %584 = load i32, i32* %30, align 4
  %585 = call i32 @PageSetLSN(i8* %583, i32 %584)
  br label %586

586:                                              ; preds = %580
  %587 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %587, i32 0, i32 1
  %589 = load %struct.TYPE_25__*, %struct.TYPE_25__** %588, align 8
  store %struct.TYPE_25__* %589, %struct.TYPE_25__** %36, align 8
  br label %577

590:                                              ; preds = %577
  %591 = load i32, i32* %40, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %610

593:                                              ; preds = %590
  %594 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %595 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %594, i32 0, i32 1
  %596 = load %struct.TYPE_25__*, %struct.TYPE_25__** %595, align 8
  store %struct.TYPE_25__* %596, %struct.TYPE_25__** %36, align 8
  br label %597

597:                                              ; preds = %605, %593
  %598 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %599 = icmp ne %struct.TYPE_25__* %598, null
  br i1 %599, label %600, label %609

600:                                              ; preds = %597
  %601 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %602 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %601, i32 0, i32 0
  %603 = load i8*, i8** %602, align 8
  %604 = call i32 @UnlockReleaseBuffer(i8* %603)
  br label %605

605:                                              ; preds = %600
  %606 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %607 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %606, i32 0, i32 1
  %608 = load %struct.TYPE_25__*, %struct.TYPE_25__** %607, align 8
  store %struct.TYPE_25__* %608, %struct.TYPE_25__** %36, align 8
  br label %597

609:                                              ; preds = %597
  br label %610

610:                                              ; preds = %609, %590
  br label %699

611:                                              ; preds = %99
  %612 = call i32 (...) @START_CRIT_SECTION()
  %613 = load i32, i32* %20, align 4
  %614 = call i64 @OffsetNumberIsValid(i32 %613)
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %616, label %646

616:                                              ; preds = %611
  %617 = load i32, i32* %19, align 4
  %618 = icmp eq i32 %617, 1
  br i1 %618, label %619, label %636

619:                                              ; preds = %616
  %620 = load i8*, i8** %28, align 8
  %621 = load i32, i32* %20, align 4
  %622 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %623 = load %struct.TYPE_26__*, %struct.TYPE_26__** %622, align 8
  %624 = ptrtoint %struct.TYPE_26__* %623 to i32
  %625 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %626 = load %struct.TYPE_26__*, %struct.TYPE_26__** %625, align 8
  %627 = call i32 @IndexTupleSize(%struct.TYPE_26__* %626)
  %628 = call i32 @PageIndexTupleOverwrite(i8* %620, i32 %621, i32 %624, i32 %627)
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %635, label %630

630:                                              ; preds = %619
  %631 = load i32, i32* @ERROR, align 4
  %632 = load i32, i32* %14, align 4
  %633 = call i32 @RelationGetRelationName(i32 %632)
  %634 = call i32 (i32, i8*, ...) @elog(i32 %631, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %633)
  br label %635

635:                                              ; preds = %630, %619
  br label %645

636:                                              ; preds = %616
  %637 = load i8*, i8** %28, align 8
  %638 = load i32, i32* %20, align 4
  %639 = call i32 @PageIndexTupleDelete(i8* %637, i32 %638)
  %640 = load i8*, i8** %28, align 8
  %641 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %642 = load i32, i32* %19, align 4
  %643 = load i64, i64* @InvalidOffsetNumber, align 8
  %644 = call i32 @gistfillbuffer(i8* %640, %struct.TYPE_26__** %641, i32 %642, i64 %643)
  br label %645

645:                                              ; preds = %636, %635
  br label %652

646:                                              ; preds = %611
  %647 = load i8*, i8** %28, align 8
  %648 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %649 = load i32, i32* %19, align 4
  %650 = load i64, i64* @InvalidOffsetNumber, align 8
  %651 = call i32 @gistfillbuffer(i8* %647, %struct.TYPE_26__** %648, i32 %649, i64 %650)
  br label %652

652:                                              ; preds = %646, %645
  %653 = load i8*, i8** %17, align 8
  %654 = call i32 @MarkBufferDirty(i8* %653)
  %655 = load i8*, i8** %22, align 8
  %656 = call i64 @BufferIsValid(i8* %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %661

658:                                              ; preds = %652
  %659 = load i8*, i8** %22, align 8
  %660 = call i32 @MarkBufferDirty(i8* %659)
  br label %661

661:                                              ; preds = %658, %652
  %662 = load i32, i32* %26, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %661
  %665 = load i32, i32* @GistBuildLSN, align 4
  store i32 %665, i32* %30, align 4
  br label %689

666:                                              ; preds = %661
  %667 = load i32, i32* %14, align 4
  %668 = call i64 @RelationNeedsWAL(i32 %667)
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %685

670:                                              ; preds = %666
  store i32 0, i32* %49, align 4
  %671 = load i32, i32* %20, align 4
  %672 = call i64 @OffsetNumberIsValid(i32 %671)
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %674, label %677

674:                                              ; preds = %670
  %675 = load i32, i32* %20, align 4
  %676 = getelementptr inbounds [1 x i32], [1 x i32]* %50, i64 0, i64 0
  store i32 %675, i32* %676, align 4
  store i32 1, i32* %49, align 4
  br label %677

677:                                              ; preds = %674, %670
  %678 = load i8*, i8** %17, align 8
  %679 = getelementptr inbounds [1 x i32], [1 x i32]* %50, i64 0, i64 0
  %680 = load i32, i32* %49, align 4
  %681 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %682 = load i32, i32* %19, align 4
  %683 = load i8*, i8** %22, align 8
  %684 = call i32 @gistXLogUpdate(i8* %678, i32* %679, i32 %680, %struct.TYPE_26__** %681, i32 %682, i8* %683)
  store i32 %684, i32* %30, align 4
  br label %688

685:                                              ; preds = %666
  %686 = load i32, i32* %14, align 4
  %687 = call i32 @gistGetFakeLSN(i32 %686)
  store i32 %687, i32* %30, align 4
  br label %688

688:                                              ; preds = %685, %677
  br label %689

689:                                              ; preds = %688, %664
  %690 = load i8*, i8** %28, align 8
  %691 = load i32, i32* %30, align 4
  %692 = call i32 @PageSetLSN(i8* %690, i32 %691)
  %693 = load i64*, i64** %21, align 8
  %694 = icmp ne i64* %693, null
  br i1 %694, label %695, label %698

695:                                              ; preds = %689
  %696 = load i64, i64* %27, align 8
  %697 = load i64*, i64** %21, align 8
  store i64 %696, i64* %697, align 8
  br label %698

698:                                              ; preds = %695, %689
  br label %699

699:                                              ; preds = %698, %610
  %700 = load i8*, i8** %22, align 8
  %701 = call i64 @BufferIsValid(i8* %700)
  %702 = icmp ne i64 %701, 0
  br i1 %702, label %703, label %714

703:                                              ; preds = %699
  %704 = load i8*, i8** %22, align 8
  %705 = call i8* @BufferGetPage(i8* %704)
  store i8* %705, i8** %51, align 8
  %706 = load i8*, i8** %51, align 8
  %707 = load i32, i32* %30, align 4
  %708 = call i32 @GistPageSetNSN(i8* %706, i32 %707)
  %709 = load i8*, i8** %51, align 8
  %710 = call i32 @GistClearFollowRight(i8* %709)
  %711 = load i8*, i8** %51, align 8
  %712 = load i32, i32* %30, align 4
  %713 = call i32 @PageSetLSN(i8* %711, i32 %712)
  br label %714

714:                                              ; preds = %703, %699
  %715 = call i32 (...) @END_CRIT_SECTION()
  %716 = load i32, i32* %32, align 4
  ret i32 %716
}

declare dso_local i8* @BufferGetBlockNumber(i8*) #1

declare dso_local i8* @BufferGetPage(i8*) #1

declare dso_local i64 @GistPageIsLeaf(i8*) #1

declare dso_local i64 @GistFollowRight(i8*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @gistnospace(i8*, %struct.TYPE_26__**, i32, i32, i32) #1

declare dso_local i64 @GistPageHasGarbage(i8*) #1

declare dso_local i32 @gistprunepage(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_26__** @gistextractpage(i8*, i32*) #1

declare dso_local i64 @OffsetNumberIsValid(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_26__**, %struct.TYPE_26__**, i32) #1

declare dso_local %struct.TYPE_26__** @gistjoinvector(%struct.TYPE_26__**, i32*, %struct.TYPE_26__**, i32) #1

declare dso_local %struct.TYPE_25__* @gistSplit(i32, i8*, %struct.TYPE_26__**, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @GistPageGetOpaque(i8*) #1

declare dso_local i32 @GistPageGetNSN(i8*) #1

declare dso_local i8* @PageGetTempPageCopySpecial(i8*) #1

declare dso_local i8* @gistNewBuffer(i32) #1

declare dso_local i32 @GISTInitBuffer(i8*, i32) #1

declare dso_local i32 @PredicateLockPageSplit(i32, i8*, i8*) #1

declare dso_local i32 @ItemPointerSetBlockNumber(i32*, i64) #1

declare dso_local i32 @GistTupleSetValid(%struct.TYPE_26__*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i64 @gistfillitupvec(%struct.TYPE_26__**, i32, i32*) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_27__*) #1

declare dso_local i64 @PageAddItem(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_26__*) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i32 @GistMarkFollowRight(i8*) #1

declare dso_local i32 @GistClearFollowRight(i8*) #1

declare dso_local i32 @GistPageSetNSN(i8*, i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogEnsureRecordSpace(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i8*) #1

declare dso_local i64 @BufferIsValid(i8*) #1

declare dso_local i32 @PageRestoreTempPage(i8*, i8*) #1

declare dso_local i32 @gistXLogSplit(i32, %struct.TYPE_25__*, i64, i32, i8*, i32) #1

declare dso_local i32 @gistGetFakeLSN(i32) #1

declare dso_local i32 @PageSetLSN(i8*, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i8*) #1

declare dso_local i32 @PageIndexTupleOverwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @PageIndexTupleDelete(i8*, i32) #1

declare dso_local i32 @gistfillbuffer(i8*, %struct.TYPE_26__**, i32, i64) #1

declare dso_local i32 @gistXLogUpdate(i8*, i32*, i32, %struct.TYPE_26__**, i32, i8*) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
