; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_draw_depth_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_draw_depth_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { double, double, double, double }
%struct.TYPE_12__ = type { i32*, i64, i64* }

@MAX_WIDTH = common dso_local global i32 0, align 4
@MAX_DEPTH = common dso_local global i64 0, align 8
@GL_BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bad type in draw_depth_pixels\00", align 1
@DEPTH_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i64, i64, i32, i32*)* @draw_depth_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_depth_pixels(%struct.TYPE_14__* %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i64*, align 8
  %44 = alloca i64*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %47 = load i32, i32* @MAX_WIDTH, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %14, align 8
  %50 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %15, align 8
  %51 = load i32, i32* @MAX_WIDTH, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %16, align 8
  %54 = load i32, i32* @MAX_WIDTH, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %17, align 8
  %57 = load i32, i32* @MAX_WIDTH, align 4
  %58 = zext i32 %57 to i64
  %59 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %18, align 8
  %60 = load i32, i32* @MAX_WIDTH, align 4
  %61 = zext i32 %60 to i64
  %62 = alloca i64, i64 %61, align 16
  store i64 %61, i64* %19, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fcmp une double %66, 0.000000e+00
  br i1 %67, label %74, label %68

68:                                               ; preds = %5
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fcmp une double %72, 1.000000e+00
  br label %74

74:                                               ; preds = %68, %5
  %75 = phi i1 [ true, %5 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %20, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load double, double* %79, align 8
  %81 = fcmp une double %80, 1.000000e+00
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load double, double* %85, align 8
  %87 = fcmp une double %86, 1.000000e+00
  br label %88

88:                                               ; preds = %82, %74
  %89 = phi i1 [ true, %74 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %21, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to float
  %98 = fadd float %97, 5.000000e-01
  %99 = fptosi float %98 to i64
  store i64 %99, i64* %11, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to float
  %107 = fadd float %106, 5.000000e-01
  %108 = fptosi float %107 to i64
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %13, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %181

116:                                              ; preds = %88
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %122, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %22, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %135, %140
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %23, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %148, %153
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %24, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %25, align 8
  %169 = load i64, i64* %22, align 8
  %170 = load i64, i64* %7, align 8
  %171 = call i32 @MEMSET(i32* %50, i64 %169, i64 %170)
  %172 = load i64, i64* %23, align 8
  %173 = load i64, i64* %7, align 8
  %174 = call i32 @MEMSET(i32* %53, i64 %172, i64 %173)
  %175 = load i64, i64* %24, align 8
  %176 = load i64, i64* %7, align 8
  %177 = call i32 @MEMSET(i32* %56, i64 %175, i64 %176)
  %178 = load i64, i64* %25, align 8
  %179 = load i64, i64* %7, align 8
  %180 = call i32 @MEMSET(i32* %59, i64 %178, i64 %179)
  br label %197

181:                                              ; preds = %88
  store i64 0, i64* %26, align 8
  br label %182

182:                                              ; preds = %193, %181
  %183 = load i64, i64* %26, align 8
  %184 = load i64, i64* %7, align 8
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %182
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %26, align 8
  %192 = getelementptr inbounds i64, i64* %62, i64 %191
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %186
  %194 = load i64, i64* %26, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %26, align 8
  br label %182

196:                                              ; preds = %182
  br label %197

197:                                              ; preds = %196, %116
  %198 = load i32, i32* %9, align 4
  %199 = icmp eq i32 %198, 129
  br i1 %199, label %200, label %270

200:                                              ; preds = %197
  %201 = load i32, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %270, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %21, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %270, label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %270

213:                                              ; preds = %206
  store i64 0, i64* %29, align 8
  %214 = load i64, i64* @MAX_DEPTH, align 8
  store i64 %214, i64* %30, align 8
  br label %215

215:                                              ; preds = %219, %213
  %216 = load i64, i64* %30, align 8
  %217 = and i64 %216, 2147483648
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load i64, i64* %30, align 8
  %221 = shl i64 %220, 1
  store i64 %221, i64* %30, align 8
  %222 = load i64, i64* %29, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %29, align 8
  br label %215

224:                                              ; preds = %215
  store i64 0, i64* %28, align 8
  br label %225

225:                                              ; preds = %264, %224
  %226 = load i64, i64* %28, align 8
  %227 = load i64, i64* %8, align 8
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %229, label %269

229:                                              ; preds = %225
  %230 = load i32, i32* @MAX_WIDTH, align 4
  %231 = zext i32 %230 to i64
  %232 = call i8* @llvm.stacksave()
  store i8* %232, i8** %31, align 8
  %233 = alloca i64, i64 %231, align 16
  store i64 %231, i64* %32, align 8
  %234 = load i32*, i32** %10, align 8
  %235 = bitcast i32* %234 to i64*
  %236 = load i64, i64* %28, align 8
  %237 = load i64, i64* %7, align 8
  %238 = mul i64 %236, %237
  %239 = getelementptr inbounds i64, i64* %235, i64 %238
  store i64* %239, i64** %33, align 8
  store i64 0, i64* %27, align 8
  br label %240

240:                                              ; preds = %253, %229
  %241 = load i64, i64* %27, align 8
  %242 = load i64, i64* %7, align 8
  %243 = icmp ult i64 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %240
  %245 = load i64*, i64** %33, align 8
  %246 = load i64, i64* %27, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %29, align 8
  %250 = lshr i64 %248, %249
  %251 = load i64, i64* %27, align 8
  %252 = getelementptr inbounds i64, i64* %233, i64 %251
  store i64 %250, i64* %252, align 8
  br label %253

253:                                              ; preds = %244
  %254 = load i64, i64* %27, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %27, align 8
  br label %240

256:                                              ; preds = %240
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = load i64, i64* %7, align 8
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i32, i32* @GL_BITMAP, align 4
  %262 = call i32 @gl_write_color_span(%struct.TYPE_14__* %257, i64 %258, i64 %259, i64 %260, i64* %233, i32* %50, i32* %53, i32* %56, i32* %59, i32 %261)
  %263 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %263)
  br label %264

264:                                              ; preds = %256
  %265 = load i64, i64* %28, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %28, align 8
  %267 = load i64, i64* %12, align 8
  %268 = add nsw i64 %267, 1
  store i64 %268, i64* %12, align 8
  br label %225

269:                                              ; preds = %225
  br label %548

270:                                              ; preds = %206, %203, %200, %197
  store i64 0, i64* %34, align 8
  br label %271

271:                                              ; preds = %542, %270
  %272 = load i64, i64* %34, align 8
  %273 = load i64, i64* %8, align 8
  %274 = icmp ult i64 %272, %273
  br i1 %274, label %275, label %547

275:                                              ; preds = %271
  %276 = load i32, i32* @MAX_WIDTH, align 4
  %277 = zext i32 %276 to i64
  %278 = call i8* @llvm.stacksave()
  store i8* %278, i8** %36, align 8
  %279 = alloca i32, i64 %277, align 16
  store i64 %277, i64* %37, align 8
  %280 = load i32, i32* @MAX_WIDTH, align 4
  %281 = zext i32 %280 to i64
  %282 = alloca i64, i64 %281, align 16
  store i64 %281, i64* %38, align 8
  %283 = load i32, i32* %9, align 4
  switch i32 %283, label %434 [
    i32 130, label %284
    i32 134, label %305
    i32 128, label %326
    i32 131, label %347
    i32 129, label %368
    i32 132, label %391
    i32 133, label %414
  ]

284:                                              ; preds = %275
  %285 = load i32*, i32** %10, align 8
  %286 = load i64, i64* %34, align 8
  %287 = load i64, i64* %7, align 8
  %288 = mul i64 %286, %287
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  store i32* %289, i32** %39, align 8
  store i64 0, i64* %35, align 8
  br label %290

290:                                              ; preds = %301, %284
  %291 = load i64, i64* %35, align 8
  %292 = load i64, i64* %7, align 8
  %293 = icmp ult i64 %291, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %290
  %295 = load i32*, i32** %39, align 8
  %296 = getelementptr inbounds i32, i32* %295, i32 1
  store i32* %296, i32** %39, align 8
  %297 = load i32, i32* %295, align 4
  %298 = call i32 @UBYTE_TO_FLOAT(i32 %297)
  %299 = load i64, i64* %35, align 8
  %300 = getelementptr inbounds i32, i32* %279, i64 %299
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %294
  %302 = load i64, i64* %35, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %35, align 8
  br label %290

304:                                              ; preds = %290
  br label %437

305:                                              ; preds = %275
  %306 = load i32*, i32** %10, align 8
  %307 = load i64, i64* %34, align 8
  %308 = load i64, i64* %7, align 8
  %309 = mul i64 %307, %308
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32* %310, i32** %40, align 8
  store i64 0, i64* %35, align 8
  br label %311

311:                                              ; preds = %322, %305
  %312 = load i64, i64* %35, align 8
  %313 = load i64, i64* %7, align 8
  %314 = icmp ult i64 %312, %313
  br i1 %314, label %315, label %325

315:                                              ; preds = %311
  %316 = load i32*, i32** %40, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 1
  store i32* %317, i32** %40, align 8
  %318 = load i32, i32* %316, align 4
  %319 = call i32 @BYTE_TO_FLOAT(i32 %318)
  %320 = load i64, i64* %35, align 8
  %321 = getelementptr inbounds i32, i32* %279, i64 %320
  store i32 %319, i32* %321, align 4
  br label %322

322:                                              ; preds = %315
  %323 = load i64, i64* %35, align 8
  %324 = add i64 %323, 1
  store i64 %324, i64* %35, align 8
  br label %311

325:                                              ; preds = %311
  br label %437

326:                                              ; preds = %275
  %327 = load i32*, i32** %10, align 8
  %328 = load i64, i64* %34, align 8
  %329 = load i64, i64* %7, align 8
  %330 = mul i64 %328, %329
  %331 = getelementptr inbounds i32, i32* %327, i64 %330
  store i32* %331, i32** %41, align 8
  store i64 0, i64* %35, align 8
  br label %332

332:                                              ; preds = %343, %326
  %333 = load i64, i64* %35, align 8
  %334 = load i64, i64* %7, align 8
  %335 = icmp ult i64 %333, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %332
  %337 = load i32*, i32** %41, align 8
  %338 = getelementptr inbounds i32, i32* %337, i32 1
  store i32* %338, i32** %41, align 8
  %339 = load i32, i32* %337, align 4
  %340 = call i32 @USHORT_TO_FLOAT(i32 %339)
  %341 = load i64, i64* %35, align 8
  %342 = getelementptr inbounds i32, i32* %279, i64 %341
  store i32 %340, i32* %342, align 4
  br label %343

343:                                              ; preds = %336
  %344 = load i64, i64* %35, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %35, align 8
  br label %332

346:                                              ; preds = %332
  br label %437

347:                                              ; preds = %275
  %348 = load i32*, i32** %10, align 8
  %349 = load i64, i64* %34, align 8
  %350 = load i64, i64* %7, align 8
  %351 = mul i64 %349, %350
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  store i32* %352, i32** %42, align 8
  store i64 0, i64* %35, align 8
  br label %353

353:                                              ; preds = %364, %347
  %354 = load i64, i64* %35, align 8
  %355 = load i64, i64* %7, align 8
  %356 = icmp ult i64 %354, %355
  br i1 %356, label %357, label %367

357:                                              ; preds = %353
  %358 = load i32*, i32** %42, align 8
  %359 = getelementptr inbounds i32, i32* %358, i32 1
  store i32* %359, i32** %42, align 8
  %360 = load i32, i32* %358, align 4
  %361 = call i32 @SHORT_TO_FLOAT(i32 %360)
  %362 = load i64, i64* %35, align 8
  %363 = getelementptr inbounds i32, i32* %279, i64 %362
  store i32 %361, i32* %363, align 4
  br label %364

364:                                              ; preds = %357
  %365 = load i64, i64* %35, align 8
  %366 = add i64 %365, 1
  store i64 %366, i64* %35, align 8
  br label %353

367:                                              ; preds = %353
  br label %437

368:                                              ; preds = %275
  %369 = load i32*, i32** %10, align 8
  %370 = bitcast i32* %369 to i64*
  %371 = load i64, i64* %34, align 8
  %372 = load i64, i64* %7, align 8
  %373 = mul i64 %371, %372
  %374 = getelementptr inbounds i64, i64* %370, i64 %373
  store i64* %374, i64** %43, align 8
  store i64 0, i64* %35, align 8
  br label %375

375:                                              ; preds = %387, %368
  %376 = load i64, i64* %35, align 8
  %377 = load i64, i64* %7, align 8
  %378 = icmp ult i64 %376, %377
  br i1 %378, label %379, label %390

379:                                              ; preds = %375
  %380 = load i64*, i64** %43, align 8
  %381 = getelementptr inbounds i64, i64* %380, i32 1
  store i64* %381, i64** %43, align 8
  %382 = load i64, i64* %380, align 8
  %383 = trunc i64 %382 to i32
  %384 = call i32 @UINT_TO_FLOAT(i32 %383)
  %385 = load i64, i64* %35, align 8
  %386 = getelementptr inbounds i32, i32* %279, i64 %385
  store i32 %384, i32* %386, align 4
  br label %387

387:                                              ; preds = %379
  %388 = load i64, i64* %35, align 8
  %389 = add i64 %388, 1
  store i64 %389, i64* %35, align 8
  br label %375

390:                                              ; preds = %375
  br label %437

391:                                              ; preds = %275
  %392 = load i32*, i32** %10, align 8
  %393 = bitcast i32* %392 to i64*
  %394 = load i64, i64* %34, align 8
  %395 = load i64, i64* %7, align 8
  %396 = mul i64 %394, %395
  %397 = getelementptr inbounds i64, i64* %393, i64 %396
  store i64* %397, i64** %44, align 8
  store i64 0, i64* %35, align 8
  br label %398

398:                                              ; preds = %410, %391
  %399 = load i64, i64* %35, align 8
  %400 = load i64, i64* %7, align 8
  %401 = icmp ult i64 %399, %400
  br i1 %401, label %402, label %413

402:                                              ; preds = %398
  %403 = load i64*, i64** %44, align 8
  %404 = getelementptr inbounds i64, i64* %403, i32 1
  store i64* %404, i64** %44, align 8
  %405 = load i64, i64* %403, align 8
  %406 = trunc i64 %405 to i32
  %407 = call i32 @INT_TO_FLOAT(i32 %406)
  %408 = load i64, i64* %35, align 8
  %409 = getelementptr inbounds i32, i32* %279, i64 %408
  store i32 %407, i32* %409, align 4
  br label %410

410:                                              ; preds = %402
  %411 = load i64, i64* %35, align 8
  %412 = add i64 %411, 1
  store i64 %412, i64* %35, align 8
  br label %398

413:                                              ; preds = %398
  br label %437

414:                                              ; preds = %275
  %415 = load i32*, i32** %10, align 8
  %416 = load i64, i64* %34, align 8
  %417 = load i64, i64* %7, align 8
  %418 = mul i64 %416, %417
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  store i32* %419, i32** %45, align 8
  store i64 0, i64* %35, align 8
  br label %420

420:                                              ; preds = %430, %414
  %421 = load i64, i64* %35, align 8
  %422 = load i64, i64* %7, align 8
  %423 = icmp ult i64 %421, %422
  br i1 %423, label %424, label %433

424:                                              ; preds = %420
  %425 = load i32*, i32** %45, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 1
  store i32* %426, i32** %45, align 8
  %427 = load i32, i32* %425, align 4
  %428 = load i64, i64* %35, align 8
  %429 = getelementptr inbounds i32, i32* %279, i64 %428
  store i32 %427, i32* %429, align 4
  br label %430

430:                                              ; preds = %424
  %431 = load i64, i64* %35, align 8
  %432 = add i64 %431, 1
  store i64 %432, i64* %35, align 8
  br label %420

433:                                              ; preds = %420
  br label %437

434:                                              ; preds = %275
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %436 = call i32 @gl_problem(%struct.TYPE_14__* %435, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %46, align 4
  br label %538

437:                                              ; preds = %433, %413, %390, %367, %346, %325, %304
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = load double, double* %440, align 8
  %442 = fcmp une double %441, 1.000000e+00
  br i1 %442, label %449, label %443

443:                                              ; preds = %437
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 0
  %447 = load double, double* %446, align 8
  %448 = fcmp une double %447, 0.000000e+00
  br i1 %448, label %449, label %476

449:                                              ; preds = %443, %437
  store i64 0, i64* %35, align 8
  br label %450

450:                                              ; preds = %472, %449
  %451 = load i64, i64* %35, align 8
  %452 = load i64, i64* %7, align 8
  %453 = icmp ult i64 %451, %452
  br i1 %453, label %454, label %475

454:                                              ; preds = %450
  %455 = load i64, i64* %35, align 8
  %456 = getelementptr inbounds i32, i32* %279, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = sitofp i32 %457 to double
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 1
  %462 = load double, double* %461, align 8
  %463 = fmul double %458, %462
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 0
  %467 = load double, double* %466, align 8
  %468 = fadd double %463, %467
  %469 = fptosi double %468 to i32
  %470 = load i64, i64* %35, align 8
  %471 = getelementptr inbounds i32, i32* %279, i64 %470
  store i32 %469, i32* %471, align 4
  br label %472

472:                                              ; preds = %454
  %473 = load i64, i64* %35, align 8
  %474 = add i64 %473, 1
  store i64 %474, i64* %35, align 8
  br label %450

475:                                              ; preds = %450
  br label %476

476:                                              ; preds = %475, %443
  store i64 0, i64* %35, align 8
  br label %477

477:                                              ; preds = %491, %476
  %478 = load i64, i64* %35, align 8
  %479 = load i64, i64* %7, align 8
  %480 = icmp ult i64 %478, %479
  br i1 %480, label %481, label %494

481:                                              ; preds = %477
  %482 = load i64, i64* %35, align 8
  %483 = getelementptr inbounds i32, i32* %279, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @CLAMP(i32 %484, float 0.000000e+00, float 1.000000e+00)
  %486 = load i32, i32* @DEPTH_SCALE, align 4
  %487 = mul nsw i32 %485, %486
  %488 = sext i32 %487 to i64
  %489 = load i64, i64* %35, align 8
  %490 = getelementptr inbounds i64, i64* %282, i64 %489
  store i64 %488, i64* %490, align 8
  br label %491

491:                                              ; preds = %481
  %492 = load i64, i64* %35, align 8
  %493 = add i64 %492, 1
  store i64 %493, i64* %35, align 8
  br label %477

494:                                              ; preds = %477
  %495 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 0
  %497 = load %struct.TYPE_13__*, %struct.TYPE_13__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i32 0, i32 4
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %519

501:                                              ; preds = %494
  %502 = load i32, i32* %21, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %511

504:                                              ; preds = %501
  %505 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %506 = load i64, i64* %7, align 8
  %507 = load i64, i64* %11, align 8
  %508 = load i64, i64* %12, align 8
  %509 = load i64, i64* %13, align 8
  %510 = call i32 @gl_write_zoomed_color_span(%struct.TYPE_14__* %505, i64 %506, i64 %507, i64 %508, i64* %282, i32* %50, i32* %53, i32* %56, i32* %59, i64 %509)
  br label %518

511:                                              ; preds = %501
  %512 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %513 = load i64, i64* %7, align 8
  %514 = load i64, i64* %11, align 8
  %515 = load i64, i64* %12, align 8
  %516 = load i32, i32* @GL_BITMAP, align 4
  %517 = call i32 @gl_write_color_span(%struct.TYPE_14__* %512, i64 %513, i64 %514, i64 %515, i64* %282, i32* %50, i32* %53, i32* %56, i32* %59, i32 %516)
  br label %518

518:                                              ; preds = %511, %504
  br label %537

519:                                              ; preds = %494
  %520 = load i32, i32* %21, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %529

522:                                              ; preds = %519
  %523 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %524 = load i64, i64* %7, align 8
  %525 = load i64, i64* %11, align 8
  %526 = load i64, i64* %12, align 8
  %527 = load i32, i32* @GL_BITMAP, align 4
  %528 = call i32 @gl_write_zoomed_index_span(%struct.TYPE_14__* %523, i64 %524, i64 %525, i64 %526, i64* %282, i64* %62, i32 %527)
  br label %536

529:                                              ; preds = %519
  %530 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %531 = load i64, i64* %7, align 8
  %532 = load i64, i64* %11, align 8
  %533 = load i64, i64* %12, align 8
  %534 = load i32, i32* @GL_BITMAP, align 4
  %535 = call i32 @gl_write_index_span(%struct.TYPE_14__* %530, i64 %531, i64 %532, i64 %533, i64* %282, i64* %62, i32 %534)
  br label %536

536:                                              ; preds = %529, %522
  br label %537

537:                                              ; preds = %536, %518
  store i32 0, i32* %46, align 4
  br label %538

538:                                              ; preds = %537, %434
  %539 = load i8*, i8** %36, align 8
  call void @llvm.stackrestore(i8* %539)
  %540 = load i32, i32* %46, align 4
  switch i32 %540, label %549 [
    i32 0, label %541
  ]

541:                                              ; preds = %538
  br label %542

542:                                              ; preds = %541
  %543 = load i64, i64* %34, align 8
  %544 = add i64 %543, 1
  store i64 %544, i64* %34, align 8
  %545 = load i64, i64* %12, align 8
  %546 = add nsw i64 %545, 1
  store i64 %546, i64* %12, align 8
  br label %271

547:                                              ; preds = %271
  br label %548

548:                                              ; preds = %547, %269
  store i32 0, i32* %46, align 4
  br label %549

549:                                              ; preds = %548, %538
  %550 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %550)
  %551 = load i32, i32* %46, align 4
  switch i32 %551, label %553 [
    i32 0, label %552
    i32 1, label %552
  ]

552:                                              ; preds = %549, %549
  ret void

553:                                              ; preds = %549
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MEMSET(i32*, i64, i64) #2

declare dso_local i32 @gl_write_color_span(%struct.TYPE_14__*, i64, i64, i64, i64*, i32*, i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @UBYTE_TO_FLOAT(i32) #2

declare dso_local i32 @BYTE_TO_FLOAT(i32) #2

declare dso_local i32 @USHORT_TO_FLOAT(i32) #2

declare dso_local i32 @SHORT_TO_FLOAT(i32) #2

declare dso_local i32 @UINT_TO_FLOAT(i32) #2

declare dso_local i32 @INT_TO_FLOAT(i32) #2

declare dso_local i32 @gl_problem(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @CLAMP(i32, float, float) #2

declare dso_local i32 @gl_write_zoomed_color_span(%struct.TYPE_14__*, i64, i64, i64, i64*, i32*, i32*, i32*, i32*, i64) #2

declare dso_local i32 @gl_write_zoomed_index_span(%struct.TYPE_14__*, i64, i64, i64, i64*, i64*, i32) #2

declare dso_local i32 @gl_write_index_span(%struct.TYPE_14__*, i64, i64, i64, i64*, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
