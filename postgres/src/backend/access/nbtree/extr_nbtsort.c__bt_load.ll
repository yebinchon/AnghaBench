; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_load.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32, i64, i32, i32, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@SK_BT_DESC = common dso_local global i32 0, align 4
@BTGreaterStrategyNumber = common dso_local global i32 0, align 4
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_TUPLES_DONE = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)* @_bt_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_load(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %6, align 8
  store i32* null, i32** %7, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %27 = icmp ne %struct.TYPE_30__* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %10, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = call i32 @RelationGetDescr(%struct.TYPE_24__* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  %36 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_24__* %35)
  store i32 %36, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %226

39:                                               ; preds = %3
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_28__* @tuplesort_getindextuple(i32 %42, i32 1)
  store %struct.TYPE_28__* %43, %struct.TYPE_28__** %9, align 8
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_28__* @tuplesort_getindextuple(i32 %46, i32 1)
  store %struct.TYPE_28__* %47, %struct.TYPE_28__** %10, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i64 @palloc0(i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %53, %struct.TYPE_26__** %15, align 8
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %119, %39
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i64 %61
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %17, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i64 %69
  store %struct.TYPE_27__* %70, %struct.TYPE_27__** %18, align 8
  %71 = load i32, i32* @CurrentMemoryContext, align 4
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @AssertState(i32 %99)
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SK_BT_DESC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %58
  %108 = load i32, i32* @BTGreaterStrategyNumber, align 4
  br label %111

109:                                              ; preds = %58
  %110 = load i32, i32* @BTLessStrategyNumber, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %19, align 4
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = load i32, i32* %19, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %118 = call i32 @PrepareSortSupportFromIndexRel(%struct.TYPE_24__* %115, i32 %116, %struct.TYPE_26__* %117)
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %54

122:                                              ; preds = %54
  br label %123

123:                                              ; preds = %218, %122
  store i32 1, i32* %11, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %125 = icmp eq %struct.TYPE_28__* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %128 = icmp eq %struct.TYPE_28__* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %223

130:                                              ; preds = %126
  br label %191

131:                                              ; preds = %123
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %133 = icmp ne %struct.TYPE_28__* %132, null
  br i1 %133, label %134, label %189

134:                                              ; preds = %131
  store i64 0, i64* %20, align 8
  store i32 1, i32* %13, align 4
  br label %135

135:                                              ; preds = %168, %134
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %171

139:                                              ; preds = %135
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i64 -1
  store %struct.TYPE_26__* %144, %struct.TYPE_26__** %21, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @index_getattr(%struct.TYPE_28__* %145, i32 %146, i32 %147, i32* %24)
  store i32 %148, i32* %22, align 4
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @index_getattr(%struct.TYPE_28__* %149, i32 %150, i32 %151, i32* %25)
  store i32 %152, i32* %23, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %25, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %158 = call i64 @ApplySortComparator(i32 %153, i32 %154, i32 %155, i32 %156, %struct.TYPE_26__* %157)
  store i64 %158, i64* %20, align 8
  %159 = load i64, i64* %20, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %139
  store i32 0, i32* %11, align 4
  br label %171

162:                                              ; preds = %139
  %163 = load i64, i64* %20, align 8
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %171

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %135

171:                                              ; preds = %165, %161, %135
  %172 = load i64, i64* %20, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  %179 = call i64 @ItemPointerCompare(i32* %176, i32* %178)
  store i64 %179, i64* %20, align 8
  %180 = load i64, i64* %20, align 8
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @Assert(i32 %182)
  %184 = load i64, i64* %20, align 8
  %185 = icmp sgt i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %186, %174
  br label %188

188:                                              ; preds = %187, %171
  br label %190

189:                                              ; preds = %131
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %189, %188
  br label %191

191:                                              ; preds = %190, %130
  %192 = load i32*, i32** %7, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %196 = call i32* @_bt_pagestate(%struct.TYPE_29__* %195, i32 0)
  store i32* %196, i32** %7, align 8
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %202 = load i32*, i32** %7, align 8
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %204 = call i32 @_bt_buildadd(%struct.TYPE_29__* %201, i32* %202, %struct.TYPE_28__* %203)
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.TYPE_28__* @tuplesort_getindextuple(i32 %207, i32 1)
  store %struct.TYPE_28__* %208, %struct.TYPE_28__** %9, align 8
  br label %218

209:                                              ; preds = %197
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %213 = call i32 @_bt_buildadd(%struct.TYPE_29__* %210, i32* %211, %struct.TYPE_28__* %212)
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call %struct.TYPE_28__* @tuplesort_getindextuple(i32 %216, i32 1)
  store %struct.TYPE_28__* %217, %struct.TYPE_28__** %10, align 8
  br label %218

218:                                              ; preds = %209, %200
  %219 = load i32, i32* @PROGRESS_CREATEIDX_TUPLES_DONE, align 4
  %220 = load i64, i64* %16, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %16, align 8
  %222 = call i32 @pgstat_progress_update_param(i32 %219, i64 %221)
  br label %123

223:                                              ; preds = %129
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %225 = call i32 @pfree(%struct.TYPE_26__* %224)
  br label %249

226:                                              ; preds = %3
  br label %227

227:                                              ; preds = %239, %226
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call %struct.TYPE_28__* @tuplesort_getindextuple(i32 %230, i32 1)
  store %struct.TYPE_28__* %231, %struct.TYPE_28__** %9, align 8
  %232 = icmp ne %struct.TYPE_28__* %231, null
  br i1 %232, label %233, label %248

233:                                              ; preds = %227
  %234 = load i32*, i32** %7, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %238 = call i32* @_bt_pagestate(%struct.TYPE_29__* %237, i32 0)
  store i32* %238, i32** %7, align 8
  br label %239

239:                                              ; preds = %236, %233
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %241 = load i32*, i32** %7, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %243 = call i32 @_bt_buildadd(%struct.TYPE_29__* %240, i32* %241, %struct.TYPE_28__* %242)
  %244 = load i32, i32* @PROGRESS_CREATEIDX_TUPLES_DONE, align 4
  %245 = load i64, i64* %16, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %16, align 8
  %247 = call i32 @pgstat_progress_update_param(i32 %244, i64 %246)
  br label %227

248:                                              ; preds = %227
  br label %249

249:                                              ; preds = %248, %223
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %251 = load i32*, i32** %7, align 8
  %252 = call i32 @_bt_uppershutdown(%struct.TYPE_29__* %250, i32* %251)
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = call i64 @RelationNeedsWAL(%struct.TYPE_24__* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %249
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = call i32 @RelationOpenSmgr(%struct.TYPE_24__* %261)
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @MAIN_FORKNUM, align 4
  %269 = call i32 @smgrimmedsync(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %258, %249
  ret void
}

declare dso_local i32 @RelationGetDescr(%struct.TYPE_24__*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_28__* @tuplesort_getindextuple(i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @AssertState(i32) #1

declare dso_local i32 @PrepareSortSupportFromIndexRel(%struct.TYPE_24__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @index_getattr(%struct.TYPE_28__*, i32, i32, i32*) #1

declare dso_local i64 @ApplySortComparator(i32, i32, i32, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @ItemPointerCompare(i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @_bt_pagestate(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @_bt_buildadd(%struct.TYPE_29__*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i64) #1

declare dso_local i32 @pfree(%struct.TYPE_26__*) #1

declare dso_local i32 @_bt_uppershutdown(%struct.TYPE_29__*, i32*) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_24__*) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_24__*) #1

declare dso_local i32 @smgrimmedsync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
