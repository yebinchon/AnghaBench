; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_TopoSort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_TopoSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }

@topoProcs = common dso_local global %struct.TYPE_14__** null, align 8
@beforeConstraints = common dso_local global i32* null, align 8
@afterConstraints = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32, %struct.TYPE_14__**)* @TopoSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TopoSort(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_14__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %10, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %48, %4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %39 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %39, i64 %41
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %12, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i32*, i32** @beforeConstraints, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @MemSet(i32* %52, i32 0, i32 %56)
  %58 = load i32*, i32** @afterConstraints, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @MemSet(i32* %58, i32 0, i32 %62)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %229, %51
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %232

68:                                               ; preds = %64
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %12, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %76 = icmp ne %struct.TYPE_14__* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  store i32 -1, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %125, %68
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %14, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %80
  %85 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %85, i64 %87
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %19, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = icmp eq %struct.TYPE_14__* %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %84
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %98 = icmp eq %struct.TYPE_14__* %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %93, %84
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = icmp eq %struct.TYPE_15__* %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @Assert(i32 %105)
  %107 = load i32, i32* %15, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %15, align 4
  br label %124

111:                                              ; preds = %99
  %112 = load i32*, i32** @beforeConstraints, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @Assert(i32 %118)
  %120 = load i32*, i32** @beforeConstraints, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 -1, i32* %123, align 4
  br label %124

124:                                              ; preds = %111, %109
  br label %125

125:                                              ; preds = %124, %93
  br label %80

126:                                              ; preds = %80
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %229

130:                                              ; preds = %126
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %12, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %138 = icmp ne %struct.TYPE_14__* %137, null
  %139 = zext i1 %138 to i32
  %140 = call i32 @Assert(i32 %139)
  store i32 -1, i32* %17, align 4
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %187, %130
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %16, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %188

146:                                              ; preds = %142
  %147 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %147, i64 %149
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %20, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %154 = icmp eq %struct.TYPE_14__* %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %146
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %160 = icmp eq %struct.TYPE_14__* %158, %159
  br i1 %160, label %161, label %187

161:                                              ; preds = %155, %146
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = icmp eq %struct.TYPE_15__* %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @Assert(i32 %167)
  %169 = load i32, i32* %17, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = load i32, i32* %16, align 4
  store i32 %172, i32* %17, align 4
  br label %186

173:                                              ; preds = %161
  %174 = load i32*, i32** @beforeConstraints, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @Assert(i32 %180)
  %182 = load i32*, i32** @beforeConstraints, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 -1, i32* %185, align 4
  br label %186

186:                                              ; preds = %173, %171
  br label %187

187:                                              ; preds = %186, %155
  br label %142

188:                                              ; preds = %142
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %229

192:                                              ; preds = %188
  %193 = load i32*, i32** @beforeConstraints, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp sge i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 @Assert(i32 %199)
  %201 = load i32*, i32** @beforeConstraints, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  store i32 %207, i32* %212, align 8
  %213 = load i32*, i32** @afterConstraints, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  store i32 %217, i32* %222, align 4
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32*, i32** @afterConstraints, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  br label %229

229:                                              ; preds = %192, %191, %129
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %13, align 4
  br label %64

232:                                              ; preds = %64
  %233 = load i32, i32* %11, align 4
  %234 = sub nsw i32 %233, 1
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %11, align 4
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %386, %232
  %238 = load i32, i32* %13, align 4
  %239 = icmp sge i32 %238, 0
  br i1 %239, label %240, label %387

240:                                              ; preds = %237
  store i32 0, i32* %22, align 4
  br label %241

241:                                              ; preds = %248, %240
  %242 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %242, i64 %244
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = icmp eq %struct.TYPE_14__* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load i32, i32* %18, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %18, align 4
  br label %241

251:                                              ; preds = %241
  %252 = load i32, i32* %18, align 4
  store i32 %252, i32* %14, align 4
  br label %253

253:                                              ; preds = %272, %251
  %254 = load i32, i32* %14, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %275

256:                                              ; preds = %253
  %257 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %257, i64 %259
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = icmp ne %struct.TYPE_14__* %261, null
  br i1 %262, label %263, label %271

263:                                              ; preds = %256
  %264 = load i32*, i32** @beforeConstraints, align 8
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  br label %275

271:                                              ; preds = %263, %256
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %14, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %14, align 4
  br label %253

275:                                              ; preds = %270, %253
  %276 = load i32, i32* %14, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 0, i32* %5, align 4
  br label %388

279:                                              ; preds = %275
  %280 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %281 = load i32, i32* %14, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %280, i64 %282
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  store %struct.TYPE_14__* %284, %struct.TYPE_14__** %12, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = icmp ne %struct.TYPE_14__* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %279
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  store %struct.TYPE_14__* %292, %struct.TYPE_14__** %12, align 8
  br label %293

293:                                              ; preds = %289, %279
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %295 = icmp ne %struct.TYPE_14__* %294, null
  %296 = zext i1 %295 to i32
  %297 = call i32 @Assert(i32 %296)
  store i32 0, i32* %21, align 4
  br label %298

298:                                              ; preds = %346, %293
  %299 = load i32, i32* %21, align 4
  %300 = load i32, i32* %18, align 4
  %301 = icmp sle i32 %299, %300
  br i1 %301, label %302, label %349

302:                                              ; preds = %298
  %303 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %304 = load i32, i32* %21, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %303, i64 %305
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %306, align 8
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %309 = icmp eq %struct.TYPE_14__* %307, %308
  br i1 %309, label %327, label %310

310:                                              ; preds = %302
  %311 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %312 = load i32, i32* %21, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %311, i64 %313
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %314, align 8
  %316 = icmp ne %struct.TYPE_14__* %315, null
  br i1 %316, label %317, label %345

317:                                              ; preds = %310
  %318 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %319 = load i32, i32* %21, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %318, i64 %320
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %323, align 8
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %326 = icmp eq %struct.TYPE_14__* %324, %325
  br i1 %326, label %327, label %345

327:                                              ; preds = %317, %302
  %328 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %329 = load i32, i32* %21, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %328, i64 %330
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %331, align 8
  %333 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %22, align 4
  %336 = sub nsw i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %333, i64 %337
  store %struct.TYPE_14__* %332, %struct.TYPE_14__** %338, align 8
  %339 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @topoProcs, align 8
  %340 = load i32, i32* %21, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %339, i64 %341
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %342, align 8
  %343 = load i32, i32* %22, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %22, align 4
  br label %345

345:                                              ; preds = %327, %317, %310
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %21, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %21, align 4
  br label %298

349:                                              ; preds = %298
  %350 = load i32, i32* %22, align 4
  %351 = icmp sgt i32 %350, 0
  %352 = zext i1 %351 to i32
  %353 = call i32 @Assert(i32 %352)
  %354 = load i32, i32* %22, align 4
  %355 = load i32, i32* %13, align 4
  %356 = sub nsw i32 %355, %354
  store i32 %356, i32* %13, align 4
  %357 = load i32*, i32** @afterConstraints, align 8
  %358 = load i32, i32* %14, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %16, align 4
  br label %362

362:                                              ; preds = %378, %349
  %363 = load i32, i32* %16, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %386

365:                                              ; preds = %362
  %366 = load i32*, i32** @beforeConstraints, align 8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %368 = load i32, i32* %16, align 4
  %369 = sub nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %366, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, -1
  store i32 %377, i32* %375, align 4
  br label %378

378:                                              ; preds = %365
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %380 = load i32, i32* %16, align 4
  %381 = sub nsw i32 %380, 1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %16, align 4
  br label %362

386:                                              ; preds = %362
  br label %237

387:                                              ; preds = %237
  store i32 1, i32* %5, align 4
  br label %388

388:                                              ; preds = %387, %278
  %389 = load i32, i32* %5, align 4
  ret i32 %389
}

declare dso_local i32 @MemSet(i32*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
