; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___resize_panel_up.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___resize_panel_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@PANEL_CONFIG_RESIZE_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__resize_panel_up(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__**, align 8
  %18 = alloca %struct.TYPE_15__**, align 8
  %19 = alloca %struct.TYPE_15__**, align 8
  %20 = alloca %struct.TYPE_15__**, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = call %struct.TYPE_15__* @__get_cur_panel(%struct.TYPE_14__* %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %36, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %56, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 8, %68
  %70 = trunc i64 %69 to i32
  %71 = call %struct.TYPE_15__** @malloc(i32 %70)
  store %struct.TYPE_15__** %71, %struct.TYPE_15__*** %17, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call %struct.TYPE_15__** @malloc(i32 %77)
  store %struct.TYPE_15__** %78, %struct.TYPE_15__*** %18, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.TYPE_15__** @malloc(i32 %84)
  store %struct.TYPE_15__** %85, %struct.TYPE_15__*** %19, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = call %struct.TYPE_15__** @malloc(i32 %91)
  store %struct.TYPE_15__** %92, %struct.TYPE_15__*** %20, align 8
  %93 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %94 = icmp ne %struct.TYPE_15__** %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %1
  %96 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %97 = icmp ne %struct.TYPE_15__** %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %100 = icmp ne %struct.TYPE_15__** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %103 = icmp ne %struct.TYPE_15__** %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101, %98, %95, %1
  br label %496

105:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %311, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %314

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %311

119:                                              ; preds = %112
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call %struct.TYPE_15__* @__get_panel(%struct.TYPE_14__* %120, i32 %121)
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %21, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %5, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %134, %140
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %7, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %154, %160
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %119
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %213

170:                                              ; preds = %166
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %170
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32, i32* %7, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %213

180:                                              ; preds = %174
  %181 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, %181
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, %189
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %197
  store i32 %204, i32* %202, align 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 4
  br label %496

213:                                              ; preds = %174, %170, %166, %119
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %13, align 4
  %216 = icmp sge i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %231, label %221

221:                                              ; preds = %217, %213
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp sge i32 %226, %227
  br label %229

229:                                              ; preds = %225, %221
  %230 = phi i1 [ false, %221 ], [ %228, %225 ]
  br label %231

231:                                              ; preds = %229, %217
  %232 = phi i1 [ true, %217 ], [ %230, %229 ]
  %233 = zext i1 %232 to i32
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %15, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %231
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %243 = sub nsw i32 %241, %242
  %244 = load i32, i32* %7, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %248 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %248, i64 %251
  store %struct.TYPE_15__* %247, %struct.TYPE_15__** %252, align 8
  br label %253

253:                                              ; preds = %246, %240
  br label %254

254:                                              ; preds = %253, %237, %231
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* %16, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %254
  %259 = load i32, i32* %22, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load i32, i32* %15, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %274

267:                                              ; preds = %261
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %269 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %11, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %269, i64 %272
  store %struct.TYPE_15__* %268, %struct.TYPE_15__** %273, align 8
  br label %274

274:                                              ; preds = %267, %261
  br label %275

275:                                              ; preds = %274, %258, %254
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %15, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %292

279:                                              ; preds = %275
  %280 = load i32, i32* %7, align 4
  %281 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %282 = sub nsw i32 %280, %281
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %286 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %286, i64 %289
  store %struct.TYPE_15__* %285, %struct.TYPE_15__** %290, align 8
  br label %291

291:                                              ; preds = %284, %279
  br label %292

292:                                              ; preds = %291, %275
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* %16, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %310

296:                                              ; preds = %292
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %299 = sub nsw i32 %297, %298
  %300 = load i32, i32* %7, align 4
  %301 = icmp sgt i32 %299, %300
  br i1 %301, label %302, label %309

302:                                              ; preds = %296
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %304 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %12, align 4
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %304, i64 %307
  store %struct.TYPE_15__* %303, %struct.TYPE_15__** %308, align 8
  br label %309

309:                                              ; preds = %302, %296
  br label %310

310:                                              ; preds = %309, %292
  br label %311

311:                                              ; preds = %310, %118
  %312 = load i32, i32* %4, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %4, align 4
  br label %106

314:                                              ; preds = %106
  %315 = load i32, i32* %9, align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %408

317:                                              ; preds = %314
  store i32 0, i32* %4, align 4
  br label %318

318:                                              ; preds = %343, %317
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* %9, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %346

322:                                              ; preds = %318
  %323 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %324 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %325 = load i32, i32* %4, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %324, i64 %326
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %333, %323
  store i32 %334, i32* %332, align 4
  %335 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %336 = load i32, i32* %4, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %335, i64 %337
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  store i32 1, i32* %342, align 4
  br label %343

343:                                              ; preds = %322
  %344 = load i32, i32* %4, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %4, align 4
  br label %318

346:                                              ; preds = %318
  store i32 0, i32* %4, align 4
  br label %347

347:                                              ; preds = %384, %346
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* %10, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %387

351:                                              ; preds = %347
  %352 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %353 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %354 = load i32, i32* %4, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %353, i64 %355
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %362, %352
  store i32 %363, i32* %361, align 4
  %364 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %365 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %366 = load i32, i32* %4, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %365, i64 %367
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, %364
  store i32 %375, i32* %373, align 4
  %376 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %377 = load i32, i32* %4, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %376, i64 %378
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  store i32 1, i32* %383, align 4
  br label %384

384:                                              ; preds = %351
  %385 = load i32, i32* %4, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %4, align 4
  br label %347

387:                                              ; preds = %347
  %388 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_13__*, %struct.TYPE_13__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 4
  %395 = sub nsw i32 %394, %388
  store i32 %395, i32* %393, align 4
  %396 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 %402, %396
  store i32 %403, i32* %401, align 4
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 0
  store i32 1, i32* %407, align 4
  br label %495

408:                                              ; preds = %314
  %409 = load i32, i32* %11, align 4
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %494

411:                                              ; preds = %408
  store i32 0, i32* %4, align 4
  br label %412

412:                                              ; preds = %449, %411
  %413 = load i32, i32* %4, align 4
  %414 = load i32, i32* %11, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %452

416:                                              ; preds = %412
  %417 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %418 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %419 = load i32, i32* %4, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %418, i64 %420
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, %417
  store i32 %428, i32* %426, align 4
  %429 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %430 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %431 = load i32, i32* %4, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %430, i64 %432
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 4
  %440 = sub nsw i32 %439, %429
  store i32 %440, i32* %438, align 4
  %441 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %442 = load i32, i32* %4, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %441, i64 %443
  %445 = load %struct.TYPE_15__*, %struct.TYPE_15__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_13__*, %struct.TYPE_13__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %447, i32 0, i32 0
  store i32 1, i32* %448, align 4
  br label %449

449:                                              ; preds = %416
  %450 = load i32, i32* %4, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %4, align 4
  br label %412

452:                                              ; preds = %412
  store i32 0, i32* %4, align 4
  br label %453

453:                                              ; preds = %478, %452
  %454 = load i32, i32* %4, align 4
  %455 = load i32, i32* %12, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %457, label %481

457:                                              ; preds = %453
  %458 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %459 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %460 = load i32, i32* %4, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %459, i64 %461
  %463 = load %struct.TYPE_15__*, %struct.TYPE_15__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_13__*, %struct.TYPE_13__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 4
  %469 = sub nsw i32 %468, %458
  store i32 %469, i32* %467, align 4
  %470 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %471 = load i32, i32* %4, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %470, i64 %472
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %474, i32 0, i32 0
  %476 = load %struct.TYPE_13__*, %struct.TYPE_13__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 0
  store i32 1, i32* %477, align 4
  br label %478

478:                                              ; preds = %457
  %479 = load i32, i32* %4, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %4, align 4
  br label %453

481:                                              ; preds = %453
  %482 = load i32, i32* @PANEL_CONFIG_RESIZE_H, align 4
  %483 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = sub nsw i32 %488, %482
  store i32 %489, i32* %487, align 4
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i32 0, i32 0
  %492 = load %struct.TYPE_13__*, %struct.TYPE_13__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %492, i32 0, i32 0
  store i32 1, i32* %493, align 4
  br label %494

494:                                              ; preds = %481, %408
  br label %495

495:                                              ; preds = %494, %387
  br label %496

496:                                              ; preds = %495, %180, %104
  %497 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %498 = call i32 @free(%struct.TYPE_15__** %497)
  %499 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %500 = call i32 @free(%struct.TYPE_15__** %499)
  %501 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %502 = call i32 @free(%struct.TYPE_15__** %501)
  %503 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %504 = call i32 @free(%struct.TYPE_15__** %503)
  ret void
}

declare dso_local %struct.TYPE_15__* @__get_cur_panel(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__** @malloc(i32) #1

declare dso_local %struct.TYPE_15__* @__get_panel(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
