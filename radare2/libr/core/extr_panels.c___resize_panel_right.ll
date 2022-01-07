; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___resize_panel_right.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___resize_panel_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@PANEL_CONFIG_RESIZE_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__resize_panel_right(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
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
  %17 = alloca %struct.TYPE_17__**, align 8
  %18 = alloca %struct.TYPE_17__**, align 8
  %19 = alloca %struct.TYPE_17__**, align 8
  %20 = alloca %struct.TYPE_17__**, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call %struct.TYPE_17__* @__get_cur_panel(%struct.TYPE_16__* %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %36, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %56, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 8, %68
  %70 = trunc i64 %69 to i32
  %71 = call %struct.TYPE_17__** @malloc(i32 %70)
  store %struct.TYPE_17__** %71, %struct.TYPE_17__*** %17, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call %struct.TYPE_17__** @malloc(i32 %77)
  store %struct.TYPE_17__** %78, %struct.TYPE_17__*** %18, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.TYPE_17__** @malloc(i32 %84)
  store %struct.TYPE_17__** %85, %struct.TYPE_17__*** %19, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = call %struct.TYPE_17__** @malloc(i32 %91)
  store %struct.TYPE_17__** %92, %struct.TYPE_17__*** %20, align 8
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %94 = icmp ne %struct.TYPE_17__** %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %1
  %96 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %97 = icmp ne %struct.TYPE_17__** %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %100 = icmp ne %struct.TYPE_17__** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %103 = icmp ne %struct.TYPE_17__** %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101, %98, %95, %1
  br label %501

105:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %316, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %319

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %316

119:                                              ; preds = %112
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call %struct.TYPE_17__* @__get_panel(%struct.TYPE_16__* %120, i32 %121)
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %21, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %5, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %134, %140
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %7, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %154, %160
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %119
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %213

170:                                              ; preds = %166
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %170
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* %6, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %213

180:                                              ; preds = %174
  %181 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, %181
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, %189
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %197
  store i32 %204, i32* %202, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 4
  br label %501

213:                                              ; preds = %174, %170, %166, %119
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %15, align 4
  %216 = icmp sge i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %231, label %221

221:                                              ; preds = %217, %213
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %15, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp sge i32 %226, %227
  br label %229

229:                                              ; preds = %225, %221
  %230 = phi i1 [ false, %221 ], [ %228, %225 ]
  br label %231

231:                                              ; preds = %229, %217
  %232 = phi i1 [ true, %217 ], [ %230, %229 ]
  %233 = zext i1 %232 to i32
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %231
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %14, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %248 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %248, i64 %251
  store %struct.TYPE_17__* %247, %struct.TYPE_17__** %252, align 8
  br label %253

253:                                              ; preds = %246, %240
  br label %254

254:                                              ; preds = %253, %237, %231
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %254
  %259 = load i32, i32* %22, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %264 = add nsw i32 %262, %263
  %265 = load i32, i32* %6, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %274

267:                                              ; preds = %261
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %269 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %11, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %269, i64 %272
  store %struct.TYPE_17__* %268, %struct.TYPE_17__** %273, align 8
  br label %274

274:                                              ; preds = %267, %261
  br label %275

275:                                              ; preds = %274, %258, %254
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* %13, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %293

279:                                              ; preds = %275
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %282 = add nsw i32 %280, %281
  %283 = load i32, i32* %6, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %279
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %287 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %10, align 4
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %287, i64 %290
  store %struct.TYPE_17__* %286, %struct.TYPE_17__** %291, align 8
  br label %292

292:                                              ; preds = %285, %279
  br label %293

293:                                              ; preds = %292, %275
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %315

297:                                              ; preds = %293
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %300 = add nsw i32 %298, %299
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp slt i32 %300, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %297
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %309 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %310 = load i32, i32* %12, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %12, align 4
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %309, i64 %312
  store %struct.TYPE_17__* %308, %struct.TYPE_17__** %313, align 8
  br label %314

314:                                              ; preds = %307, %297
  br label %315

315:                                              ; preds = %314, %293
  br label %316

316:                                              ; preds = %315, %118
  %317 = load i32, i32* %4, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %4, align 4
  br label %106

319:                                              ; preds = %106
  %320 = load i32, i32* %11, align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %405

322:                                              ; preds = %319
  store i32 0, i32* %4, align 4
  br label %323

323:                                              ; preds = %360, %322
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* %11, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %363

327:                                              ; preds = %323
  %328 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %329 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %330 = load i32, i32* %4, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %329, i64 %331
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, %328
  store i32 %339, i32* %337, align 4
  %340 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %341 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %342 = load i32, i32* %4, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %341, i64 %343
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 %350, %340
  store i32 %351, i32* %349, align 4
  %352 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %353 = load i32, i32* %4, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %352, i64 %354
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 0
  store i32 1, i32* %359, align 4
  br label %360

360:                                              ; preds = %327
  %361 = load i32, i32* %4, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %4, align 4
  br label %323

363:                                              ; preds = %323
  store i32 0, i32* %4, align 4
  br label %364

364:                                              ; preds = %389, %363
  %365 = load i32, i32* %4, align 4
  %366 = load i32, i32* %12, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %392

368:                                              ; preds = %364
  %369 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %370 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %371 = load i32, i32* %4, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %370, i64 %372
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, %369
  store i32 %380, i32* %378, align 4
  %381 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %382 = load i32, i32* %4, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %381, i64 %383
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 0
  store i32 1, i32* %388, align 4
  br label %389

389:                                              ; preds = %368
  %390 = load i32, i32* %4, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %4, align 4
  br label %364

392:                                              ; preds = %364
  %393 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, %393
  store i32 %400, i32* %398, align 4
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_14__*, %struct.TYPE_14__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 0
  store i32 1, i32* %404, align 4
  br label %500

405:                                              ; preds = %319
  %406 = load i32, i32* %9, align 4
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %499

408:                                              ; preds = %405
  store i32 0, i32* %4, align 4
  br label %409

409:                                              ; preds = %434, %408
  %410 = load i32, i32* %4, align 4
  %411 = load i32, i32* %9, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %437

413:                                              ; preds = %409
  %414 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %415 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %416 = load i32, i32* %4, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %415, i64 %417
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %424, %414
  store i32 %425, i32* %423, align 4
  %426 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %427 = load i32, i32* %4, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %426, i64 %428
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_14__*, %struct.TYPE_14__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 0
  store i32 1, i32* %433, align 4
  br label %434

434:                                              ; preds = %413
  %435 = load i32, i32* %4, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %4, align 4
  br label %409

437:                                              ; preds = %409
  store i32 0, i32* %4, align 4
  br label %438

438:                                              ; preds = %475, %437
  %439 = load i32, i32* %4, align 4
  %440 = load i32, i32* %10, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %478

442:                                              ; preds = %438
  %443 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %444 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %445 = load i32, i32* %4, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %444, i64 %446
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = add nsw i32 %453, %443
  store i32 %454, i32* %452, align 4
  %455 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %456 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %457 = load i32, i32* %4, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %456, i64 %458
  %460 = load %struct.TYPE_17__*, %struct.TYPE_17__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_14__*, %struct.TYPE_14__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = sub nsw i32 %465, %455
  store i32 %466, i32* %464, align 4
  %467 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %468 = load i32, i32* %4, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %467, i64 %469
  %471 = load %struct.TYPE_17__*, %struct.TYPE_17__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_14__*, %struct.TYPE_14__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %473, i32 0, i32 0
  store i32 1, i32* %474, align 4
  br label %475

475:                                              ; preds = %442
  %476 = load i32, i32* %4, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %4, align 4
  br label %438

478:                                              ; preds = %438
  %479 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 0
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = add nsw i32 %485, %479
  store i32 %486, i32* %484, align 4
  %487 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %488 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = sub nsw i32 %493, %487
  store i32 %494, i32* %492, align 4
  %495 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %495, i32 0, i32 0
  %497 = load %struct.TYPE_14__*, %struct.TYPE_14__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %497, i32 0, i32 0
  store i32 1, i32* %498, align 4
  br label %499

499:                                              ; preds = %478, %405
  br label %500

500:                                              ; preds = %499, %392
  br label %501

501:                                              ; preds = %500, %180, %104
  %502 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %503 = call i32 @free(%struct.TYPE_17__** %502)
  %504 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %505 = call i32 @free(%struct.TYPE_17__** %504)
  %506 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %507 = call i32 @free(%struct.TYPE_17__** %506)
  %508 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %509 = call i32 @free(%struct.TYPE_17__** %508)
  ret void
}

declare dso_local %struct.TYPE_17__* @__get_cur_panel(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__** @malloc(i32) #1

declare dso_local %struct.TYPE_17__* @__get_panel(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
