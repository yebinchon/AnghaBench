; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___resize_panel_left.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___resize_panel_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@PANEL_CONFIG_RESIZE_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__resize_panel_left(%struct.TYPE_16__* %0) #0 {
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
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %36, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %56, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
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
  br label %500

105:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %315, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %318

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %315

119:                                              ; preds = %112
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call %struct.TYPE_17__* @__get_panel(%struct.TYPE_16__* %120, i32 %121)
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %21, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %9, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %134, %140
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %11, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %154, %160
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %119
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %213

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32, i32* %9, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %213

180:                                              ; preds = %174
  %181 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, %181
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, %189
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %197
  store i32 %204, i32* %202, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 4
  br label %500

213:                                              ; preds = %174, %170, %166, %119
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp sge i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %231, label %221

221:                                              ; preds = %217, %213
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp sge i32 %226, %227
  br label %229

229:                                              ; preds = %225, %221
  %230 = phi i1 [ false, %221 ], [ %228, %225 ]
  br label %231

231:                                              ; preds = %229, %217
  %232 = phi i1 [ true, %217 ], [ %230, %229 ]
  %233 = zext i1 %232 to i32
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* %5, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %231
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %243 = sub nsw i32 %241, %242
  %244 = load i32, i32* %9, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %248 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %13, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %248, i64 %251
  store %struct.TYPE_17__* %247, %struct.TYPE_17__** %252, align 8
  br label %253

253:                                              ; preds = %246, %240
  br label %254

254:                                              ; preds = %253, %237, %231
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %6, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %254
  %259 = load i32, i32* %22, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load i32, i32* %5, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %274

267:                                              ; preds = %261
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %269 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %270 = load i32, i32* %15, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %15, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %269, i64 %272
  store %struct.TYPE_17__* %268, %struct.TYPE_17__** %273, align 8
  br label %274

274:                                              ; preds = %267, %261
  br label %275

275:                                              ; preds = %274, %258, %254
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %5, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %292

279:                                              ; preds = %275
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %282 = sub nsw i32 %280, %281
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %286 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %287 = load i32, i32* %14, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %14, align 4
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %286, i64 %289
  store %struct.TYPE_17__* %285, %struct.TYPE_17__** %290, align 8
  br label %291

291:                                              ; preds = %284, %279
  br label %292

292:                                              ; preds = %291, %275
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* %6, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %314

296:                                              ; preds = %292
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %299 = add nsw i32 %297, %298
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp slt i32 %299, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %296
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %308 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %16, align 4
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %308, i64 %311
  store %struct.TYPE_17__* %307, %struct.TYPE_17__** %312, align 8
  br label %313

313:                                              ; preds = %306, %296
  br label %314

314:                                              ; preds = %313, %292
  br label %315

315:                                              ; preds = %314, %118
  %316 = load i32, i32* %4, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %4, align 4
  br label %106

318:                                              ; preds = %106
  %319 = load i32, i32* %13, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %412

321:                                              ; preds = %318
  store i32 0, i32* %4, align 4
  br label %322

322:                                              ; preds = %347, %321
  %323 = load i32, i32* %4, align 4
  %324 = load i32, i32* %13, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %350

326:                                              ; preds = %322
  %327 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %328 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %329 = load i32, i32* %4, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %328, i64 %330
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = sub nsw i32 %337, %327
  store i32 %338, i32* %336, align 4
  %339 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %340 = load i32, i32* %4, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %339, i64 %341
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  store i32 1, i32* %346, align 4
  br label %347

347:                                              ; preds = %326
  %348 = load i32, i32* %4, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %4, align 4
  br label %322

350:                                              ; preds = %322
  store i32 0, i32* %4, align 4
  br label %351

351:                                              ; preds = %388, %350
  %352 = load i32, i32* %4, align 4
  %353 = load i32, i32* %14, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %391

355:                                              ; preds = %351
  %356 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %357 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %358 = load i32, i32* %4, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %357, i64 %359
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = sub nsw i32 %366, %356
  store i32 %367, i32* %365, align 4
  %368 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %369 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %370 = load i32, i32* %4, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %369, i64 %371
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, %368
  store i32 %379, i32* %377, align 4
  %380 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %381 = load i32, i32* %4, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %380, i64 %382
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_15__*, %struct.TYPE_15__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %386, i32 0, i32 0
  store i32 1, i32* %387, align 4
  br label %388

388:                                              ; preds = %355
  %389 = load i32, i32* %4, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %4, align 4
  br label %351

391:                                              ; preds = %351
  %392 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %398, %392
  store i32 %399, i32* %397, align 4
  %400 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %406, %400
  store i32 %407, i32* %405, align 4
  %408 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_15__*, %struct.TYPE_15__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 0
  store i32 1, i32* %411, align 4
  br label %499

412:                                              ; preds = %318
  %413 = load i32, i32* %15, align 4
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %498

415:                                              ; preds = %412
  store i32 0, i32* %4, align 4
  br label %416

416:                                              ; preds = %453, %415
  %417 = load i32, i32* %4, align 4
  %418 = load i32, i32* %15, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %420, label %456

420:                                              ; preds = %416
  %421 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %422 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %423 = load i32, i32* %4, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %422, i64 %424
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, %421
  store i32 %432, i32* %430, align 4
  %433 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %434 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %435 = load i32, i32* %4, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %434, i64 %436
  %438 = load %struct.TYPE_17__*, %struct.TYPE_17__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_15__*, %struct.TYPE_15__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = sub nsw i32 %443, %433
  store i32 %444, i32* %442, align 4
  %445 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %446 = load i32, i32* %4, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %445, i64 %447
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_15__*, %struct.TYPE_15__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %451, i32 0, i32 0
  store i32 1, i32* %452, align 4
  br label %453

453:                                              ; preds = %420
  %454 = load i32, i32* %4, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %4, align 4
  br label %416

456:                                              ; preds = %416
  store i32 0, i32* %4, align 4
  br label %457

457:                                              ; preds = %482, %456
  %458 = load i32, i32* %4, align 4
  %459 = load i32, i32* %16, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %485

461:                                              ; preds = %457
  %462 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %463 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %464 = load i32, i32* %4, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %463, i64 %465
  %467 = load %struct.TYPE_17__*, %struct.TYPE_17__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = sub nsw i32 %472, %462
  store i32 %473, i32* %471, align 4
  %474 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %475 = load i32, i32* %4, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %474, i64 %476
  %478 = load %struct.TYPE_17__*, %struct.TYPE_17__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_15__*, %struct.TYPE_15__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %480, i32 0, i32 0
  store i32 1, i32* %481, align 4
  br label %482

482:                                              ; preds = %461
  %483 = load i32, i32* %4, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %4, align 4
  br label %457

485:                                              ; preds = %457
  %486 = load i32, i32* @PANEL_CONFIG_RESIZE_W, align 4
  %487 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_15__*, %struct.TYPE_15__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = sub nsw i32 %492, %486
  store i32 %493, i32* %491, align 4
  %494 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_15__*, %struct.TYPE_15__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %496, i32 0, i32 0
  store i32 1, i32* %497, align 4
  br label %498

498:                                              ; preds = %485, %412
  br label %499

499:                                              ; preds = %498, %391
  br label %500

500:                                              ; preds = %499, %180, %104
  %501 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %502 = call i32 @free(%struct.TYPE_17__** %501)
  %503 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %504 = call i32 @free(%struct.TYPE_17__** %503)
  %505 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %506 = call i32 @free(%struct.TYPE_17__** %505)
  %507 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %508 = call i32 @free(%struct.TYPE_17__** %507)
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
