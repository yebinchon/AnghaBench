; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_CharFromPos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_CharFromPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i64, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_RIGHT = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@END_WRAP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i64, i64, i32*)* @EDIT_CharFromPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EDIT_CharFromPos(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ES_MULTILINE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %206

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sdiv i64 %32, %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %14, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @EDIT_UpdateUniscribeData(%struct.TYPE_12__* %44, i32* null, i64 %45)
  br label %47

47:                                               ; preds = %57, %26
  %48 = load i64, i64* %12, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i1 [ false, %47 ], [ %54, %50 ]
  br i1 %56, label %57, label %68

57:                                               ; preds = %55
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %13, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %14, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %12, align 8
  br label %47

68:                                               ; preds = %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %71, %75
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %7, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ES_RIGHT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %68
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %90, %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %95, %99
  %101 = load i64, i64* %7, align 8
  %102 = sub nsw i64 %101, %100
  store i64 %102, i64* %7, align 8
  br label %130

103:                                              ; preds = %68
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ES_CENTER, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %103
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %115, %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %120, %124
  %126 = sdiv i64 %125, 2
  %127 = load i64, i64* %7, align 8
  %128 = sub nsw i64 %127, %126
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %110, %103
  br label %130

130:                                              ; preds = %129, %85
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = icmp sge i64 %131, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %130
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @END_WRAP, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32*, i32** %9, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %140, %137
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  store i64 %153, i64* %5, align 8
  br label %393

154:                                              ; preds = %130
  %155 = load i64, i64* %7, align 8
  %156 = icmp sle i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %157, %154
  %163 = load i32*, i32** %9, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @FALSE, align 4
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i64, i64* %13, align 8
  store i64 %169, i64* %5, align 8
  br label %393

170:                                              ; preds = %157
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = call i32 (i64, i64, i64*, ...) @ScriptStringXtoCP(i64 %173, i64 %174, i64* %10, i32* %11)
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i64, i64* %10, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %10, align 8
  br label %181

181:                                              ; preds = %178, %170
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* %10, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %10, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %205

187:                                              ; preds = %181
  %188 = load i64, i64* %10, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %189, %192
  %194 = icmp eq i64 %188, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %187
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @END_WRAP, align 8
  %200 = icmp eq i64 %198, %199
  br label %201

201:                                              ; preds = %195, %187
  %202 = phi i1 [ false, %187 ], [ %200, %195 ]
  %203 = zext i1 %202 to i32
  %204 = load i32*, i32** %9, align 8
  store i32 %203, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %181
  br label %391

206:                                              ; preds = %4
  store i64 0, i64* %15, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* @FALSE, align 4
  %211 = load i32*, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %206
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %7, align 8
  %218 = sub nsw i64 %217, %216
  store i64 %218, i64* %7, align 8
  %219 = load i64, i64* %7, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %212
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %5, align 8
  br label %393

225:                                              ; preds = %212
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %269, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %235, %239
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %240, %243
  store i64 %244, i64* %17, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @ES_RIGHT, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %230
  %252 = load i64, i64* %17, align 8
  %253 = load i64, i64* %7, align 8
  %254 = sub nsw i64 %253, %252
  store i64 %254, i64* %7, align 8
  br label %268

255:                                              ; preds = %230
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @ES_CENTER, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = load i64, i64* %17, align 8
  %264 = sdiv i64 %263, 2
  %265 = load i64, i64* %7, align 8
  %266 = sub nsw i64 %265, %264
  store i64 %266, i64* %7, align 8
  br label %267

267:                                              ; preds = %262, %255
  br label %268

268:                                              ; preds = %267, %251
  br label %269

269:                                              ; preds = %268, %225
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %271 = call i32 @EDIT_UpdateUniscribeData(%struct.TYPE_12__* %270, i32* null, i64 0)
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %307

276:                                              ; preds = %269
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %305

281:                                              ; preds = %276
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %286 = call i64 @get_text_length(%struct.TYPE_12__* %285)
  %287 = icmp sge i64 %284, %286
  br i1 %287, label %288, label %296

288:                                              ; preds = %281
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = call %struct.TYPE_10__* @ScriptString_pSize(i64 %291)
  store %struct.TYPE_10__* %292, %struct.TYPE_10__** %18, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %15, align 8
  br label %296

296:                                              ; preds = %288, %281
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* @FALSE, align 4
  %304 = call i32 @ScriptStringCPtoX(i64 %299, i64 %302, i32 %303, i64* %15)
  br label %306

305:                                              ; preds = %276
  store i64 0, i64* %15, align 8
  br label %306

306:                                              ; preds = %305, %296
  br label %307

307:                                              ; preds = %306, %269
  %308 = load i64, i64* %7, align 8
  %309 = icmp slt i64 %308, 0
  br i1 %309, label %310, label %336

310:                                              ; preds = %307
  %311 = load i64, i64* %7, align 8
  %312 = load i64, i64* %15, align 8
  %313 = add nsw i64 %311, %312
  %314 = icmp sgt i64 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %310
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %334, label %320

320:                                              ; preds = %315, %310
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* %7, align 8
  %325 = load i64, i64* %15, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 (i64, i64, i64*, ...) @ScriptStringXtoCP(i64 %323, i64 %326, i64* %10, i64* %16)
  %328 = load i64, i64* %16, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %320
  %331 = load i64, i64* %10, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %10, align 8
  br label %333

333:                                              ; preds = %330, %320
  br label %335

334:                                              ; preds = %315
  store i64 0, i64* %10, align 8
  br label %335

335:                                              ; preds = %334, %333
  br label %390

336:                                              ; preds = %307
  %337 = load i64, i64* %7, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %385

339:                                              ; preds = %336
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %19, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 5
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %339
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 5
  %347 = load i64, i64* %346, align 8
  %348 = call %struct.TYPE_10__* @ScriptString_pSize(i64 %347)
  store %struct.TYPE_10__* %348, %struct.TYPE_10__** %19, align 8
  br label %349

349:                                              ; preds = %344, %339
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %351 = icmp ne %struct.TYPE_10__* %350, null
  br i1 %351, label %353, label %352

352:                                              ; preds = %349
  store i64 0, i64* %10, align 8
  br label %384

353:                                              ; preds = %349
  %354 = load i64, i64* %7, align 8
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp sgt i64 %354, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %353
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %361 = call i64 @get_text_length(%struct.TYPE_12__* %360)
  store i64 %361, i64* %10, align 8
  br label %383

362:                                              ; preds = %353
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %381

367:                                              ; preds = %362
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 5
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %7, align 8
  %372 = load i64, i64* %15, align 8
  %373 = add nsw i64 %371, %372
  %374 = call i32 (i64, i64, i64*, ...) @ScriptStringXtoCP(i64 %370, i64 %373, i64* %10, i64* %16)
  %375 = load i64, i64* %16, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %367
  %378 = load i64, i64* %10, align 8
  %379 = add nsw i64 %378, 1
  store i64 %379, i64* %10, align 8
  br label %380

380:                                              ; preds = %377, %367
  br label %382

381:                                              ; preds = %362
  store i64 0, i64* %10, align 8
  br label %382

382:                                              ; preds = %381, %380
  br label %383

383:                                              ; preds = %382, %359
  br label %384

384:                                              ; preds = %383, %352
  br label %389

385:                                              ; preds = %336
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 3
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %10, align 8
  br label %389

389:                                              ; preds = %385, %384
  br label %390

390:                                              ; preds = %389, %335
  br label %391

391:                                              ; preds = %390, %205
  %392 = load i64, i64* %10, align 8
  store i64 %392, i64* %5, align 8
  br label %393

393:                                              ; preds = %391, %221, %168, %148
  %394 = load i64, i64* %5, align 8
  ret i64 %394
}

declare dso_local i32 @EDIT_UpdateUniscribeData(%struct.TYPE_12__*, i32*, i64) #1

declare dso_local i32 @ScriptStringXtoCP(i64, i64, i64*, ...) #1

declare dso_local i64 @get_text_length(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_10__* @ScriptString_pSize(i64) #1

declare dso_local i32 @ScriptStringCPtoX(i64, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
