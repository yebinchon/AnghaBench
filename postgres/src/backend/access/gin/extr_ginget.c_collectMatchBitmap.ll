; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_collectMatchBitmap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_collectMatchBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32*, i32*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i32 }

@work_mem = common dso_local global i64 0, align 8
@GIN_CAT_NORM_KEY = common dso_local global i64 0, align 8
@GIN_SEARCH_MODE_ALL = common dso_local global i64 0, align 8
@GIN_CAT_NULL_ITEM = common dso_local global i64 0, align 8
@GIN_UNLOCK = common dso_local global i32 0, align 4
@GIN_SHARE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"lost saved point in index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @collectMatchBitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collectMatchBitmap(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i64, i64* @work_mem, align 8
  %23 = mul nsw i64 %22, 1024
  %24 = call i32 @tbm_create(i64 %23, i32* null)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GIN_CAT_NORM_KEY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %315

38:                                               ; preds = %31, %4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call %struct.TYPE_19__* @TupleDescAttr(i32 %46, i32 %48)
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %11, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @PredicateLockPage(i32 %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %310, %146, %38
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @moveRightIfItNeeded(%struct.TYPE_18__* %59, %struct.TYPE_17__* %60, i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %315

65:                                               ; preds = %58
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BufferGetPage(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @TestForOldSnapshot(i32 %70, i32 %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PageGetItemId(i32 %77, i32 %80)
  %82 = call i64 @PageGetItem(i32 %76, i32 %81)
  store i64 %82, i64* %13, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @gintuple_get_attrnum(%struct.TYPE_20__* %85, i64 %86)
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %315

91:                                               ; preds = %65
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @gintuple_get_key(%struct.TYPE_20__* %94, i64 %95, i64* %15)
  store i32 %96, i32* %14, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %91
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* @GIN_CAT_NORM_KEY, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %315

106:                                              ; preds = %101
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @UInt16GetDatum(i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PointerGetDatum(i32 %136)
  %138 = call i32 @FunctionCall4Coll(i32* %115, i32 %125, i32 %128, i32 %129, i32 %133, i32 %137)
  %139 = call i64 @DatumGetInt32(i32 %138)
  store i64 %139, i64* %16, align 8
  %140 = load i64, i64* %16, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  br label %315

143:                                              ; preds = %106
  %144 = load i64, i64* %16, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %58

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151
  br label %166

153:                                              ; preds = %91
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @GIN_SEARCH_MODE_ALL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i64, i64* %15, align 8
  %161 = load i64, i64* @GIN_CAT_NULL_ITEM, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 1, i32* %5, align 4
  br label %315

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164, %153
  br label %166

166:                                              ; preds = %165, %152
  %167 = load i64, i64* %13, align 8
  %168 = call i64 @GinIsPostingTree(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %285

170:                                              ; preds = %166
  %171 = load i64, i64* %13, align 8
  %172 = call i32 @GinGetPostingTree(i64 %171)
  store i32 %172, i32* %17, align 4
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* @GIN_CAT_NORM_KEY, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @datumCopy(i32 %177, i32 %180, i32 %183)
  store i32 %184, i32* %14, align 4
  br label %185

185:                                              ; preds = %176, %170
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @GIN_UNLOCK, align 4
  %190 = call i32 @LockBuffer(i32 %188, i32 %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @PredicateLockPage(i32 %193, i32 %194, i32 %195)
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @scanPostingTree(i32 %199, %struct.TYPE_16__* %200, i32 %201, i32 %202)
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @GIN_SHARE, align 4
  %208 = call i32 @LockBuffer(i32 %206, i32 %207)
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @BufferGetPage(i32 %211)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @GinPageIsLeaf(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %315

217:                                              ; preds = %185
  br label %218

218:                                              ; preds = %266, %217
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @moveRightIfItNeeded(%struct.TYPE_18__* %219, %struct.TYPE_17__* %220, i32 %221)
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* @ERROR, align 4
  %226 = call i32 @elog(i32 %225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %218
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @BufferGetPage(i32 %230)
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @PageGetItemId(i32 %233, i32 %236)
  %238 = call i64 @PageGetItem(i32 %232, i32 %237)
  store i64 %238, i64* %13, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = load i64, i64* %13, align 8
  %243 = call i32 @gintuple_get_attrnum(%struct.TYPE_20__* %241, i64 %242)
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %227
  %247 = load i32, i32* @ERROR, align 4
  %248 = call i32 @elog(i32 %247, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %227
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %251, align 8
  %253 = load i64, i64* %13, align 8
  %254 = call i32 @gintuple_get_key(%struct.TYPE_20__* %252, i64 %253, i64* %19)
  store i32 %254, i32* %18, align 4
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %18, align 4
  %260 = load i64, i64* %19, align 8
  %261 = load i32, i32* %14, align 4
  %262 = load i64, i64* %15, align 8
  %263 = call i64 @ginCompareEntries(%struct.TYPE_20__* %257, i32 %258, i32 %259, i64 %260, i32 %261, i64 %262)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %249
  br label %271

266:                                              ; preds = %249
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %218

271:                                              ; preds = %265
  %272 = load i64, i64* %15, align 8
  %273 = load i64, i64* @GIN_CAT_NORM_KEY, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %271
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* %14, align 4
  %282 = call i32 @DatumGetPointer(i32 %281)
  %283 = call i32 @pfree(i32 %282)
  br label %284

284:                                              ; preds = %280, %275, %271
  br label %310

285:                                              ; preds = %166
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %287, align 8
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i64, i64* %13, align 8
  %293 = call i32 @ginReadTuple(%struct.TYPE_20__* %288, i32 %291, i64 %292, i32* %21)
  store i32 %293, i32* %20, align 4
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %21, align 4
  %299 = call i32 @tbm_add_tuples(i32 %296, i32 %297, i32 %298, i32 0)
  %300 = load i64, i64* %13, align 8
  %301 = call i64 @GinGetNPosting(i64 %300)
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %301
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %303, align 8
  %308 = load i32, i32* %20, align 4
  %309 = call i32 @pfree(i32 %308)
  br label %310

310:                                              ; preds = %285, %284
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  br label %58

315:                                              ; preds = %216, %163, %142, %105, %90, %64, %37
  %316 = load i32, i32* %5, align 4
  ret i32 %316
}

declare dso_local i32 @tbm_create(i64, i32*) #1

declare dso_local %struct.TYPE_19__* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @PredicateLockPage(i32, i32, i32) #1

declare dso_local i32 @moveRightIfItNeeded(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @gintuple_get_attrnum(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @gintuple_get_key(%struct.TYPE_20__*, i64, i64*) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCall4Coll(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UInt16GetDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i64 @GinIsPostingTree(i64) #1

declare dso_local i32 @GinGetPostingTree(i64) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @scanPostingTree(i32, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @ginCompareEntries(%struct.TYPE_20__*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @ginReadTuple(%struct.TYPE_20__*, i32, i64, i32*) #1

declare dso_local i32 @tbm_add_tuples(i32, i32, i32, i32) #1

declare dso_local i64 @GinGetNPosting(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
