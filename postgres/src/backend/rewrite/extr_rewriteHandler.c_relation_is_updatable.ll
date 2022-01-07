; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_relation_is_updatable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_relation_is_updatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i64, i64, i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32, i32*, i64 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_27__*)*, i32*, i32*, i32* }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i64, i64, i32 }

@AccessShareLock = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@CMD_INSERT = common dso_local global i32 0, align 4
@CMD_UPDATE = common dso_local global i32 0, align 4
@CMD_DELETE = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@RELKIND_VIEW = common dso_local global i64 0, align 8
@RTE_RELATION = common dso_local global i64 0, align 8
@ALL_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relation_is_updatable(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AccessShareLock, align 4
  %22 = call %struct.TYPE_27__* @try_relation_open(i32 %20, i32 %21)
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %9, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %24 = icmp eq %struct.TYPE_27__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %345

26:                                               ; preds = %3
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RELKIND_RELATION, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34, %26
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %44 = load i32, i32* @AccessShareLock, align 4
  %45 = call i32 @relation_close(%struct.TYPE_27__* %43, i32 %44)
  %46 = load i32, i32* @CMD_INSERT, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* @CMD_UPDATE, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @CMD_DELETE, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  store i32 %53, i32* %4, align 4
  br label %345

54:                                               ; preds = %34
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %56, align 8
  store %struct.TYPE_26__* %57, %struct.TYPE_26__** %10, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = icmp ne %struct.TYPE_26__* %58, null
  br i1 %59, label %60, label %132

60:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %112, %60
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %61
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %70, i64 %72
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %67
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %81, i64 %83
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %78
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %92, i64 %94
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 1, %98
  %100 = load i32, i32* @CMD_INSERT, align 4
  %101 = shl i32 1, %100
  %102 = load i32, i32* @CMD_UPDATE, align 4
  %103 = shl i32 1, %102
  %104 = or i32 %101, %103
  %105 = load i32, i32* @CMD_DELETE, align 4
  %106 = shl i32 1, %105
  %107 = or i32 %104, %106
  %108 = and i32 %99, %107
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %89, %78, %67
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %61

115:                                              ; preds = %61
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @CMD_INSERT, align 4
  %118 = shl i32 1, %117
  %119 = load i32, i32* @CMD_UPDATE, align 4
  %120 = shl i32 1, %119
  %121 = or i32 %118, %120
  %122 = load i32, i32* @CMD_DELETE, align 4
  %123 = shl i32 1, %122
  %124 = or i32 %121, %123
  %125 = icmp eq i32 %116, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %128 = load i32, i32* @AccessShareLock, align 4
  %129 = call i32 @relation_close(%struct.TYPE_27__* %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %345

131:                                              ; preds = %115
  br label %132

132:                                              ; preds = %131, %54
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %189

135:                                              ; preds = %132
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  store %struct.TYPE_25__* %138, %struct.TYPE_25__** %12, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %140 = icmp ne %struct.TYPE_25__* %139, null
  br i1 %140, label %141, label %188

141:                                              ; preds = %135
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32, i32* @CMD_INSERT, align 4
  %148 = shl i32 1, %147
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* @CMD_UPDATE, align 4
  %158 = shl i32 1, %157
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* @CMD_DELETE, align 4
  %168 = shl i32 1, %167
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @CMD_INSERT, align 4
  %174 = shl i32 1, %173
  %175 = load i32, i32* @CMD_UPDATE, align 4
  %176 = shl i32 1, %175
  %177 = or i32 %174, %176
  %178 = load i32, i32* @CMD_DELETE, align 4
  %179 = shl i32 1, %178
  %180 = or i32 %177, %179
  %181 = icmp eq i32 %172, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %171
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %184 = load i32, i32* @AccessShareLock, align 4
  %185 = call i32 @relation_close(%struct.TYPE_27__* %183, i32 %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %4, align 4
  br label %345

187:                                              ; preds = %171
  br label %188

188:                                              ; preds = %187, %135
  br label %189

189:                                              ; preds = %188, %132
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %248

197:                                              ; preds = %189
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %199 = call %struct.TYPE_21__* @GetFdwRoutineForRelation(%struct.TYPE_27__* %198, i32 0)
  store %struct.TYPE_21__* %199, %struct.TYPE_21__** %13, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %201, align 8
  %203 = icmp ne i32 (%struct.TYPE_27__*)* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %206, align 8
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %209 = call i32 %207(%struct.TYPE_27__* %208)
  %210 = load i32, i32* %8, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %8, align 4
  br label %243

212:                                              ; preds = %197
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load i32, i32* @CMD_INSERT, align 4
  %219 = shl i32 1, %218
  %220 = load i32, i32* %8, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load i32, i32* @CMD_UPDATE, align 4
  %229 = shl i32 1, %228
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load i32, i32* @CMD_DELETE, align 4
  %239 = shl i32 1, %238
  %240 = load i32, i32* %8, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %237, %232
  br label %243

243:                                              ; preds = %242, %204
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %245 = load i32, i32* @AccessShareLock, align 4
  %246 = call i32 @relation_close(%struct.TYPE_27__* %244, i32 %245)
  %247 = load i32, i32* %8, align 4
  store i32 %247, i32* %4, align 4
  br label %345

248:                                              ; preds = %189
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @RELKIND_VIEW, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %340

256:                                              ; preds = %248
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %258 = call %struct.TYPE_30__* @get_view_query(%struct.TYPE_27__* %257)
  store %struct.TYPE_30__* %258, %struct.TYPE_30__** %14, align 8
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %260 = call i32* @view_query_is_auto_updatable(%struct.TYPE_30__* %259, i32 0)
  %261 = icmp eq i32* %260, null
  br i1 %261, label %262, label %339

262:                                              ; preds = %256
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %264 = call i32 @view_cols_are_auto_updatable(%struct.TYPE_30__* %263, i32* null, i32** %15, i32* null)
  %265 = load i32*, i32** %7, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load i32*, i32** %15, align 8
  %269 = load i32*, i32** %7, align 8
  %270 = call i32* @bms_int_members(i32* %268, i32* %269)
  store i32* %270, i32** %15, align 8
  br label %271

271:                                              ; preds = %267, %262
  %272 = load i32*, i32** %15, align 8
  %273 = call i64 @bms_is_empty(i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load i32, i32* @CMD_DELETE, align 4
  %277 = shl i32 1, %276
  store i32 %277, i32* %16, align 4
  br label %287

278:                                              ; preds = %271
  %279 = load i32, i32* @CMD_INSERT, align 4
  %280 = shl i32 1, %279
  %281 = load i32, i32* @CMD_UPDATE, align 4
  %282 = shl i32 1, %281
  %283 = or i32 %280, %282
  %284 = load i32, i32* @CMD_DELETE, align 4
  %285 = shl i32 1, %284
  %286 = or i32 %283, %285
  store i32 %286, i32* %16, align 4
  br label %287

287:                                              ; preds = %278, %275
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @linitial(i32 %292)
  %294 = inttoptr i64 %293 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %294, %struct.TYPE_28__** %17, align 8
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call %struct.TYPE_29__* @rt_fetch(i32 %297, i32 %300)
  store %struct.TYPE_29__* %301, %struct.TYPE_29__** %18, align 8
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @RTE_RELATION, align 8
  %306 = icmp eq i64 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @Assert(i32 %307)
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @RELKIND_RELATION, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %335

314:                                              ; preds = %287
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %335

320:                                              ; preds = %314
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  store i32 %323, i32* %19, align 4
  %324 = load i32*, i32** %15, align 8
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32* @adjust_view_column_set(i32* %324, i32 %327)
  store i32* %328, i32** %7, align 8
  %329 = load i32, i32* %19, align 4
  %330 = load i32, i32* %6, align 4
  %331 = load i32*, i32** %7, align 8
  %332 = call i32 @relation_is_updatable(i32 %329, i32 %330, i32* %331)
  %333 = load i32, i32* %16, align 4
  %334 = and i32 %333, %332
  store i32 %334, i32* %16, align 4
  br label %335

335:                                              ; preds = %320, %314, %287
  %336 = load i32, i32* %16, align 4
  %337 = load i32, i32* %8, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %8, align 4
  br label %339

339:                                              ; preds = %335, %256
  br label %340

340:                                              ; preds = %339, %248
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %342 = load i32, i32* @AccessShareLock, align 4
  %343 = call i32 @relation_close(%struct.TYPE_27__* %341, i32 %342)
  %344 = load i32, i32* %8, align 4
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %340, %243, %182, %126, %42, %25
  %346 = load i32, i32* %4, align 4
  ret i32 %346
}

declare dso_local %struct.TYPE_27__* @try_relation_open(i32, i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_21__* @GetFdwRoutineForRelation(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_30__* @get_view_query(%struct.TYPE_27__*) #1

declare dso_local i32* @view_query_is_auto_updatable(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @view_cols_are_auto_updatable(%struct.TYPE_30__*, i32*, i32**, i32*) #1

declare dso_local i32* @bms_int_members(i32*, i32*) #1

declare dso_local i64 @bms_is_empty(i32*) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local %struct.TYPE_29__* @rt_fetch(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @adjust_view_column_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
