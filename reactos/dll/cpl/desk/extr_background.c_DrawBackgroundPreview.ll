; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_background.c_DrawBackgroundPreview.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_background.c_DrawBackgroundPreview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { float, float, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@MONITOR_LEFT = common dso_local global i32 0, align 4
@MONITOR_TOP = common dso_local global i32 0, align 4
@MONITOR_RIGHT = common dso_local global i32 0, align 4
@MONITOR_BOTTOM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@g_GlobalData = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@SM_CXSCREEN = common dso_local global i32 0, align 4
@MONITOR_WIDTH = common dso_local global i32 0, align 4
@SM_CYSCREEN = common dso_local global i32 0, align 4
@MONITOR_HEIGHT = common dso_local global i32 0, align 4
@COLOR_BACKGROUND = common dso_local global i32 0, align 4
@COLORONCOLOR = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @DrawBackgroundPreview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawBackgroundPreview(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* @MONITOR_LEFT, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %27 = load i32, i32* @MONITOR_TOP, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %29 = load i32, i32* @MONITOR_RIGHT, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  %31 = load i32, i32* @MONITOR_BOTTOM, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CreateCompatibleDC(i32 %34)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @SelectObject(i32 %36, i32 %39)
  store i32 %40, i32* %22, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FALSE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %2
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_GlobalData, i32 0, i32 0), align 4
  %54 = call i32 @CreateSolidBrush(i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @FillRect(i32 %55, %struct.TYPE_14__* %23, i32 %56)
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @DeleteObject(i32 %58)
  br label %479

60:                                               ; preds = %2
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %478

65:                                               ; preds = %60
  %66 = load i32, i32* @SM_CXSCREEN, align 4
  %67 = call i64 @GetSystemMetrics(i32 %66)
  %68 = sitofp i64 %67 to float
  %69 = fsub float %68, 1.000000e+00
  %70 = load i32, i32* @MONITOR_WIDTH, align 4
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %69, %71
  store float %72, float* %6, align 4
  %73 = load i32, i32* @SM_CYSCREEN, align 4
  %74 = call i64 @GetSystemMetrics(i32 %73)
  %75 = sitofp i64 %74 to float
  %76 = fsub float %75, 1.000000e+00
  %77 = load i32, i32* @MONITOR_HEIGHT, align 4
  %78 = sitofp i32 %77 to float
  %79 = fdiv float %76, %78
  store float %79, float* %7, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = load float, float* %6, align 4
  %86 = fdiv float %84, %85
  %87 = fptosi float %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load float, float* %91, align 4
  %93 = load float, float* %7, align 4
  %94 = fdiv float %92, %93
  %95 = fptosi float %94 to i32
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* @COLOR_BACKGROUND, align 4
  %98 = call i32 @GetSysColorBrush(i32 %97)
  %99 = call i32 @FillRect(i32 %96, %struct.TYPE_14__* %23, i32 %98)
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* @COLORONCOLOR, align 4
  %102 = call i32 @SetStretchBltMode(i32 %100, i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %477 [
    i32 132, label %106
    i32 129, label %193
    i32 128, label %224
    i32 130, label %315
    i32 131, label %380
  ]

106:                                              ; preds = %65
  %107 = load i32, i32* @MONITOR_WIDTH, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 %107, %108
  %110 = add nsw i32 %109, 1
  %111 = sdiv i32 %110, 2
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* @MONITOR_HEIGHT, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %112, %113
  %115 = add nsw i32 %114, 1
  %116 = sdiv i32 %115, 2
  store i32 %116, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %106
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 0, %120
  %122 = sdiv i32 %121, 2
  store i32 %122, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %119, %106
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 0, %127
  %129 = sdiv i32 %128, 2
  store i32 %129, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %123
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @MONITOR_WIDTH, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @MONITOR_WIDTH, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @MONITOR_HEIGHT, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @MONITOR_HEIGHT, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* @MONITOR_LEFT, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* @MONITOR_TOP, align 4
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load float, float* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = sitofp i32 %159 to float
  %161 = load float, float* %6, align 4
  %162 = fmul float %160, %161
  %163 = fptosi float %162 to i32
  %164 = sitofp i32 %163 to float
  %165 = fsub float %158, %164
  %166 = fptosi float %165 to i32
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load float, float* %170, align 4
  %172 = load i32, i32* %13, align 4
  %173 = sitofp i32 %172 to float
  %174 = load float, float* %7, align 4
  %175 = fmul float %173, %174
  %176 = fptosi float %175 to i32
  %177 = sitofp i32 %176 to float
  %178 = fsub float %171, %177
  %179 = fptosi float %178 to i32
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DIB_RGB_COLORS, align 4
  %191 = load i32, i32* @SRCCOPY, align 4
  %192 = call i32 @StretchDIBits(i32 %143, i32 %146, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %166, i32 %179, i32 %184, i32 %189, i32 %190, i32 %191)
  br label %477

193:                                              ; preds = %65
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* @MONITOR_LEFT, align 4
  %196 = load i32, i32* @MONITOR_TOP, align 4
  %197 = load i32, i32* @MONITOR_WIDTH, align 4
  %198 = load i32, i32* @MONITOR_HEIGHT, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load float, float* %202, align 4
  %204 = fptosi float %203 to i32
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load float, float* %208, align 4
  %210 = fptosi float %209 to i32
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @DIB_RGB_COLORS, align 4
  %222 = load i32, i32* @SRCCOPY, align 4
  %223 = call i32 @StretchDIBits(i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 0, i32 0, i32 %204, i32 %210, i32 %215, i32 %220, i32 %221, i32 %222)
  br label %477

224:                                              ; preds = %65
  store i32 0, i32* %20, align 4
  br label %225

225:                                              ; preds = %310, %224
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* @MONITOR_HEIGHT, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %314

229:                                              ; preds = %225
  store i32 0, i32* %19, align 4
  br label %230

230:                                              ; preds = %305, %229
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* @MONITOR_WIDTH, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %309

234:                                              ; preds = %230
  %235 = load i32, i32* @MONITOR_WIDTH, align 4
  %236 = load i32, i32* %19, align 4
  %237 = sub nsw i32 %235, %236
  %238 = load i32, i32* %8, align 4
  %239 = icmp sge i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %10, align 4
  br label %246

242:                                              ; preds = %234
  %243 = load i32, i32* @MONITOR_WIDTH, align 4
  %244 = load i32, i32* %19, align 4
  %245 = sub nsw i32 %243, %244
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %242, %240
  %247 = load i32, i32* @MONITOR_HEIGHT, align 4
  %248 = load i32, i32* %20, align 4
  %249 = sub nsw i32 %247, %248
  %250 = load i32, i32* %9, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i32, i32* %9, align 4
  store i32 %253, i32* %12, align 4
  br label %258

254:                                              ; preds = %246
  %255 = load i32, i32* @MONITOR_HEIGHT, align 4
  %256 = load i32, i32* %20, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %12, align 4
  br label %258

258:                                              ; preds = %254, %252
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* @MONITOR_LEFT, align 4
  %261 = load i32, i32* %19, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* @MONITOR_TOP, align 4
  %264 = load i32, i32* %20, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 4
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load float, float* %271, align 4
  %273 = load i32, i32* %10, align 4
  %274 = sitofp i32 %273 to float
  %275 = fmul float %272, %274
  %276 = load i32, i32* %8, align 4
  %277 = sitofp i32 %276 to float
  %278 = fdiv float %275, %277
  %279 = fptosi float %278 to i32
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = load float, float* %283, align 4
  %285 = load i32, i32* %12, align 4
  %286 = sitofp i32 %285 to float
  %287 = fmul float %284, %286
  %288 = load i32, i32* %9, align 4
  %289 = sitofp i32 %288 to float
  %290 = fdiv float %287, %289
  %291 = fptosi float %290 to i32
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 4
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @DIB_RGB_COLORS, align 4
  %303 = load i32, i32* @SRCCOPY, align 4
  %304 = call i32 @StretchDIBits(i32 %259, i32 %262, i32 %265, i32 %266, i32 %267, i32 0, i32 0, i32 %279, i32 %291, i32 %296, i32 %301, i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %258
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %19, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %19, align 4
  br label %230

309:                                              ; preds = %230
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %20, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %20, align 4
  br label %225

314:                                              ; preds = %225
  br label %477

315:                                              ; preds = %65
  %316 = load i32, i32* @MONITOR_WIDTH, align 4
  %317 = load i32, i32* %9, align 4
  %318 = mul nsw i32 %316, %317
  %319 = load i32, i32* @MONITOR_HEIGHT, align 4
  %320 = load i32, i32* %8, align 4
  %321 = mul nsw i32 %319, %320
  %322 = icmp sle i32 %318, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %315
  %324 = load i32, i32* @MONITOR_WIDTH, align 4
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* %8, align 4
  store i32 %325, i32* %15, align 4
  br label %329

326:                                              ; preds = %315
  %327 = load i32, i32* @MONITOR_HEIGHT, align 4
  store i32 %327, i32* %14, align 4
  %328 = load i32, i32* %9, align 4
  store i32 %328, i32* %15, align 4
  br label %329

329:                                              ; preds = %326, %323
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* %15, align 4
  %333 = call i32 @MulDiv(i32 %330, i32 %331, i32 %332)
  store i32 %333, i32* %16, align 4
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %15, align 4
  %337 = call i32 @MulDiv(i32 %334, i32 %335, i32 %336)
  store i32 %337, i32* %17, align 4
  %338 = load i32, i32* @MONITOR_WIDTH, align 4
  %339 = load i32, i32* %16, align 4
  %340 = sub nsw i32 %338, %339
  %341 = sdiv i32 %340, 2
  store i32 %341, i32* %10, align 4
  %342 = load i32, i32* @MONITOR_HEIGHT, align 4
  %343 = load i32, i32* %17, align 4
  %344 = sub nsw i32 %342, %343
  %345 = sdiv i32 %344, 2
  store i32 %345, i32* %12, align 4
  %346 = load i32, i32* %21, align 4
  %347 = load i32, i32* @MONITOR_LEFT, align 4
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* @MONITOR_TOP, align 4
  %351 = load i32, i32* %12, align 4
  %352 = add nsw i32 %350, %351
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %17, align 4
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 4
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 0
  %359 = load float, float* %358, align 4
  %360 = fptosi float %359 to i32
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 4
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 1
  %365 = load float, float* %364, align 4
  %366 = fptosi float %365 to i32
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 4
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @DIB_RGB_COLORS, align 4
  %378 = load i32, i32* @SRCCOPY, align 4
  %379 = call i32 @StretchDIBits(i32 %346, i32 %349, i32 %352, i32 %353, i32 %354, i32 0, i32 0, i32 %360, i32 %366, i32 %371, i32 %376, i32 %377, i32 %378)
  br label %477

380:                                              ; preds = %65
  %381 = load i32, i32* @MONITOR_WIDTH, align 4
  %382 = load i32, i32* %9, align 4
  %383 = mul nsw i32 %381, %382
  %384 = load i32, i32* @MONITOR_HEIGHT, align 4
  %385 = load i32, i32* %8, align 4
  %386 = mul nsw i32 %384, %385
  %387 = icmp sgt i32 %383, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %380
  %389 = load i32, i32* @MONITOR_WIDTH, align 4
  store i32 %389, i32* %14, align 4
  %390 = load i32, i32* %8, align 4
  store i32 %390, i32* %15, align 4
  br label %394

391:                                              ; preds = %380
  %392 = load i32, i32* @MONITOR_HEIGHT, align 4
  store i32 %392, i32* %14, align 4
  %393 = load i32, i32* %9, align 4
  store i32 %393, i32* %15, align 4
  br label %394

394:                                              ; preds = %391, %388
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* %14, align 4
  %397 = load i32, i32* %15, align 4
  %398 = call i32 @MulDiv(i32 %395, i32 %396, i32 %397)
  store i32 %398, i32* %16, align 4
  %399 = load i32, i32* %9, align 4
  %400 = load i32, i32* %14, align 4
  %401 = load i32, i32* %15, align 4
  %402 = call i32 @MulDiv(i32 %399, i32 %400, i32 %401)
  store i32 %402, i32* %17, align 4
  %403 = load i32, i32* %16, align 4
  %404 = load i32, i32* @MONITOR_WIDTH, align 4
  %405 = sub nsw i32 %403, %404
  %406 = sitofp i32 %405 to float
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 4
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 0
  %411 = load float, float* %410, align 4
  %412 = fmul float %406, %411
  %413 = load i32, i32* %16, align 4
  %414 = mul nsw i32 2, %413
  %415 = sitofp i32 %414 to float
  %416 = fdiv float %412, %415
  %417 = fptosi float %416 to i32
  store i32 %417, i32* %11, align 4
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* @MONITOR_HEIGHT, align 4
  %420 = sub nsw i32 %418, %419
  %421 = sitofp i32 %420 to float
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 4
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 1
  %426 = load float, float* %425, align 4
  %427 = fmul float %421, %426
  %428 = load i32, i32* %17, align 4
  %429 = mul nsw i32 2, %428
  %430 = sitofp i32 %429 to float
  %431 = fdiv float %427, %430
  %432 = fptosi float %431 to i32
  store i32 %432, i32* %13, align 4
  %433 = load i32, i32* %21, align 4
  %434 = load i32, i32* @MONITOR_LEFT, align 4
  %435 = load i32, i32* @MONITOR_TOP, align 4
  %436 = load i32, i32* @MONITOR_WIDTH, align 4
  %437 = load i32, i32* @MONITOR_HEIGHT, align 4
  %438 = load i32, i32* %11, align 4
  %439 = load i32, i32* %13, align 4
  %440 = load i32, i32* @MONITOR_WIDTH, align 4
  %441 = sitofp i32 %440 to float
  %442 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i32 0, i32 4
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 0
  %446 = load float, float* %445, align 4
  %447 = fmul float %441, %446
  %448 = load i32, i32* %16, align 4
  %449 = sitofp i32 %448 to float
  %450 = fdiv float %447, %449
  %451 = fptosi float %450 to i32
  %452 = load i32, i32* @MONITOR_HEIGHT, align 4
  %453 = sitofp i32 %452 to float
  %454 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %454, i32 0, i32 4
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 1
  %458 = load float, float* %457, align 4
  %459 = fmul float %453, %458
  %460 = load i32, i32* %17, align 4
  %461 = sitofp i32 %460 to float
  %462 = fdiv float %459, %461
  %463 = fptosi float %462 to i32
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 4
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 4
  %471 = load %struct.TYPE_13__*, %struct.TYPE_13__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @DIB_RGB_COLORS, align 4
  %475 = load i32, i32* @SRCCOPY, align 4
  %476 = call i32 @StretchDIBits(i32 %433, i32 %434, i32 %435, i32 %436, i32 %437, i32 %438, i32 %439, i32 %451, i32 %463, i32 %468, i32 %473, i32 %474, i32 %475)
  br label %477

477:                                              ; preds = %65, %394, %329, %314, %193, %142
  br label %478

478:                                              ; preds = %477, %60
  br label %479

479:                                              ; preds = %478, %52
  %480 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %492, i32 0, i32 3
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i32 0, i32 2
  %498 = load i64, i64* %497, align 8
  %499 = sub nsw i64 %494, %498
  %500 = add nsw i64 %499, 1
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = sub nsw i64 %504, %508
  %510 = add nsw i64 %509, 1
  %511 = load i32, i32* %21, align 4
  %512 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 8
  %515 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %516 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = call i32 @GdiTransparentBlt(i32 %482, i64 %486, i64 %490, i64 %500, i64 %510, i32 %511, i32 0, i32 0, i32 %514, i32 %517, i32 16711935)
  %519 = load i32, i32* %21, align 4
  %520 = load i32, i32* %22, align 4
  %521 = call i32 @SelectObject(i32 %519, i32 %520)
  %522 = load i32, i32* %21, align 4
  %523 = call i32 @DeleteDC(i32 %522)
  %524 = load i32, i32* %3, align 4
  ret i32 %524
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @SetStretchBltMode(i32, i32) #1

declare dso_local i32 @StretchDIBits(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @GdiTransparentBlt(i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
