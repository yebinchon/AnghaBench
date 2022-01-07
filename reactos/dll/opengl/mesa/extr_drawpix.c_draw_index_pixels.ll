; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_draw_index_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_drawpix.c_draw_index_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { double, double, i64, i64, i32*, i32*, i32*, i32*, i64*, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { float* }
%struct.TYPE_12__ = type { i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@DEPTH_SCALE = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Internal: draw_index_pixels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i64, i64, i32, i32*)* @draw_index_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_index_pixels(%struct.TYPE_16__* %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %34 = load i32, i32* @MAX_WIDTH, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %16, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %17, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fcmp une double %41, 1.000000e+00
  br i1 %42, label %49, label %43

43:                                               ; preds = %5
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = fcmp une double %47, 1.000000e+00
  br label %49

49:                                               ; preds = %43, %5
  %50 = phi i1 [ true, %5 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, 5.000000e-01
  %59 = fptosi float %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 1
  %65 = load float, float* %64, align 4
  %66 = fadd float %65, 5.000000e-01
  %67 = fptosi float %66 to i64
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %13, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %49
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 2
  %80 = load float, float* %79, align 4
  %81 = load i32, i32* @DEPTH_SCALE, align 4
  %82 = sitofp i32 %81 to float
  %83 = fmul float %80, %82
  %84 = fptosi float %83 to i32
  store i32 %84, i32* %19, align 4
  store i64 0, i64* %14, align 8
  br label %85

85:                                               ; preds = %93, %74
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %19, align 4
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds i32, i32* %37, i64 %91
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %14, align 8
  br label %85

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %49
  store i64 0, i64* %14, align 8
  br label %98

98:                                               ; preds = %495, %97
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %500

102:                                              ; preds = %98
  %103 = load i32, i32* @MAX_WIDTH, align 4
  %104 = zext i32 %103 to i64
  %105 = call i8* @llvm.stacksave()
  store i8* %105, i8** %20, align 8
  %106 = alloca i64, i64 %104, align 16
  store i64 %104, i64* %21, align 8
  %107 = load i32, i32* %9, align 4
  switch i32 %107, label %256 [
    i32 130, label %108
    i32 134, label %129
    i32 128, label %150
    i32 131, label %171
    i32 129, label %192
    i32 132, label %213
    i32 135, label %234
    i32 133, label %235
  ]

108:                                              ; preds = %102
  %109 = load i32*, i32** %10, align 8
  %110 = bitcast i32* %109 to i64*
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %7, align 8
  %113 = mul i64 %111, %112
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  store i64* %114, i64** %22, align 8
  store i64 0, i64* %15, align 8
  br label %115

115:                                              ; preds = %125, %108
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %7, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i64*, i64** %22, align 8
  %121 = getelementptr inbounds i64, i64* %120, i32 1
  store i64* %121, i64** %22, align 8
  %122 = load i64, i64* %120, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i64, i64* %106, i64 %123
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119
  %126 = load i64, i64* %15, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %15, align 8
  br label %115

128:                                              ; preds = %115
  br label %260

129:                                              ; preds = %102
  %130 = load i32*, i32** %10, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %7, align 8
  %133 = mul i64 %131, %132
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32* %134, i32** %23, align 8
  store i64 0, i64* %15, align 8
  br label %135

135:                                              ; preds = %146, %129
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %7, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i32*, i32** %23, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %23, align 8
  %142 = load i32, i32* %140, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds i64, i64* %106, i64 %144
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %139
  %147 = load i64, i64* %15, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %15, align 8
  br label %135

149:                                              ; preds = %135
  br label %260

150:                                              ; preds = %102
  %151 = load i32*, i32** %10, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %7, align 8
  %154 = mul i64 %152, %153
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32* %155, i32** %24, align 8
  store i64 0, i64* %15, align 8
  br label %156

156:                                              ; preds = %167, %150
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i32*, i32** %24, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %24, align 8
  %163 = load i32, i32* %161, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds i64, i64* %106, i64 %165
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %160
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %15, align 8
  br label %156

170:                                              ; preds = %156
  br label %260

171:                                              ; preds = %102
  %172 = load i32*, i32** %10, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %7, align 8
  %175 = mul i64 %173, %174
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32* %176, i32** %25, align 8
  store i64 0, i64* %15, align 8
  br label %177

177:                                              ; preds = %188, %171
  %178 = load i64, i64* %15, align 8
  %179 = load i64, i64* %7, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = load i32*, i32** %25, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %25, align 8
  %184 = load i32, i32* %182, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %15, align 8
  %187 = getelementptr inbounds i64, i64* %106, i64 %186
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %181
  %189 = load i64, i64* %15, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %15, align 8
  br label %177

191:                                              ; preds = %177
  br label %260

192:                                              ; preds = %102
  %193 = load i32*, i32** %10, align 8
  %194 = bitcast i32* %193 to i64*
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %7, align 8
  %197 = mul i64 %195, %196
  %198 = getelementptr inbounds i64, i64* %194, i64 %197
  store i64* %198, i64** %26, align 8
  store i64 0, i64* %15, align 8
  br label %199

199:                                              ; preds = %209, %192
  %200 = load i64, i64* %15, align 8
  %201 = load i64, i64* %7, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = load i64*, i64** %26, align 8
  %205 = getelementptr inbounds i64, i64* %204, i32 1
  store i64* %205, i64** %26, align 8
  %206 = load i64, i64* %204, align 8
  %207 = load i64, i64* %15, align 8
  %208 = getelementptr inbounds i64, i64* %106, i64 %207
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %203
  %210 = load i64, i64* %15, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %15, align 8
  br label %199

212:                                              ; preds = %199
  br label %260

213:                                              ; preds = %102
  %214 = load i32*, i32** %10, align 8
  %215 = bitcast i32* %214 to i64*
  %216 = load i64, i64* %14, align 8
  %217 = load i64, i64* %7, align 8
  %218 = mul i64 %216, %217
  %219 = getelementptr inbounds i64, i64* %215, i64 %218
  store i64* %219, i64** %27, align 8
  store i64 0, i64* %15, align 8
  br label %220

220:                                              ; preds = %230, %213
  %221 = load i64, i64* %15, align 8
  %222 = load i64, i64* %7, align 8
  %223 = icmp ult i64 %221, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %220
  %225 = load i64*, i64** %27, align 8
  %226 = getelementptr inbounds i64, i64* %225, i32 1
  store i64* %226, i64** %27, align 8
  %227 = load i64, i64* %225, align 8
  %228 = load i64, i64* %15, align 8
  %229 = getelementptr inbounds i64, i64* %106, i64 %228
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %224
  %231 = load i64, i64* %15, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %15, align 8
  br label %220

233:                                              ; preds = %220
  br label %260

234:                                              ; preds = %102
  br label %260

235:                                              ; preds = %102
  %236 = load i32*, i32** %10, align 8
  %237 = load i64, i64* %14, align 8
  %238 = load i64, i64* %7, align 8
  %239 = mul i64 %237, %238
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32* %240, i32** %28, align 8
  store i64 0, i64* %15, align 8
  br label %241

241:                                              ; preds = %252, %235
  %242 = load i64, i64* %15, align 8
  %243 = load i64, i64* %7, align 8
  %244 = icmp ult i64 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %241
  %246 = load i32*, i32** %28, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %28, align 8
  %248 = load i32, i32* %246, align 4
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %15, align 8
  %251 = getelementptr inbounds i64, i64* %106, i64 %250
  store i64 %249, i64* %251, align 8
  br label %252

252:                                              ; preds = %245
  %253 = load i64, i64* %15, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %15, align 8
  br label %241

255:                                              ; preds = %241
  br label %260

256:                                              ; preds = %102
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %258 = load i32, i32* @GL_INVALID_ENUM, align 4
  %259 = call i32 @gl_error(%struct.TYPE_16__* %257, i32 %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %260

260:                                              ; preds = %256, %255, %234, %233, %212, %191, %170, %149, %128
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %260
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %330

272:                                              ; preds = %266, %260
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = icmp uge i64 %276, 0
  br i1 %277, label %278, label %303

278:                                              ; preds = %272
  store i64 0, i64* %15, align 8
  br label %279

279:                                              ; preds = %299, %278
  %280 = load i64, i64* %15, align 8
  %281 = load i64, i64* %7, align 8
  %282 = icmp ult i64 %280, %281
  br i1 %282, label %283, label %302

283:                                              ; preds = %279
  %284 = load i64, i64* %15, align 8
  %285 = getelementptr inbounds i64, i64* %106, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = shl i64 %286, %290
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %291, %295
  %297 = load i64, i64* %15, align 8
  %298 = getelementptr inbounds i64, i64* %106, i64 %297
  store i64 %296, i64* %298, align 8
  br label %299

299:                                              ; preds = %283
  %300 = load i64, i64* %15, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %15, align 8
  br label %279

302:                                              ; preds = %279
  br label %329

303:                                              ; preds = %272
  store i64 0, i64* %15, align 8
  br label %304

304:                                              ; preds = %325, %303
  %305 = load i64, i64* %15, align 8
  %306 = load i64, i64* %7, align 8
  %307 = icmp ult i64 %305, %306
  br i1 %307, label %308, label %328

308:                                              ; preds = %304
  %309 = load i64, i64* %15, align 8
  %310 = getelementptr inbounds i64, i64* %106, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = sub i64 0, %315
  %317 = lshr i64 %311, %316
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %317, %321
  %323 = load i64, i64* %15, align 8
  %324 = getelementptr inbounds i64, i64* %106, i64 %323
  store i64 %322, i64* %324, align 8
  br label %325

325:                                              ; preds = %308
  %326 = load i64, i64* %15, align 8
  %327 = add i64 %326, 1
  store i64 %327, i64* %15, align 8
  br label %304

328:                                              ; preds = %304
  br label %329

329:                                              ; preds = %328, %302
  br label %330

330:                                              ; preds = %329, %266
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %449

337:                                              ; preds = %330
  %338 = load i32, i32* @MAX_WIDTH, align 4
  %339 = zext i32 %338 to i64
  %340 = call i8* @llvm.stacksave()
  store i8* %340, i8** %29, align 8
  %341 = alloca i64, i64 %339, align 16
  store i64 %339, i64* %30, align 8
  %342 = load i32, i32* @MAX_WIDTH, align 4
  %343 = zext i32 %342 to i64
  %344 = alloca i64, i64 %343, align 16
  store i64 %343, i64* %31, align 8
  %345 = load i32, i32* @MAX_WIDTH, align 4
  %346 = zext i32 %345 to i64
  %347 = alloca i64, i64 %346, align 16
  store i64 %346, i64* %32, align 8
  %348 = load i32, i32* @MAX_WIDTH, align 4
  %349 = zext i32 %348 to i64
  %350 = alloca i64, i64 %349, align 16
  store i64 %349, i64* %33, align 8
  store i64 0, i64* %15, align 8
  br label %351

351:                                              ; preds = %428, %337
  %352 = load i64, i64* %15, align 8
  %353 = load i64, i64* %7, align 8
  %354 = icmp ult i64 %352, %353
  br i1 %354, label %355, label %431

355:                                              ; preds = %351
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 4
  %359 = load i32*, i32** %358, align 8
  %360 = load i64, i64* %15, align 8
  %361 = getelementptr inbounds i64, i64* %106, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds i32, i32* %359, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = mul nsw i32 %364, %369
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %15, align 8
  %373 = getelementptr inbounds i64, i64* %341, i64 %372
  store i64 %371, i64* %373, align 8
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 5
  %377 = load i32*, i32** %376, align 8
  %378 = load i64, i64* %15, align 8
  %379 = getelementptr inbounds i64, i64* %106, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = mul nsw i32 %382, %387
  %389 = sext i32 %388 to i64
  %390 = load i64, i64* %15, align 8
  %391 = getelementptr inbounds i64, i64* %344, i64 %390
  store i64 %389, i64* %391, align 8
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 6
  %395 = load i32*, i32** %394, align 8
  %396 = load i64, i64* %15, align 8
  %397 = getelementptr inbounds i64, i64* %106, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds i32, i32* %395, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = mul nsw i32 %400, %405
  %407 = sext i32 %406 to i64
  %408 = load i64, i64* %15, align 8
  %409 = getelementptr inbounds i64, i64* %347, i64 %408
  store i64 %407, i64* %409, align 8
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 7
  %413 = load i32*, i32** %412, align 8
  %414 = load i64, i64* %15, align 8
  %415 = getelementptr inbounds i64, i64* %106, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = getelementptr inbounds i32, i32* %413, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = mul nsw i32 %418, %423
  %425 = sext i32 %424 to i64
  %426 = load i64, i64* %15, align 8
  %427 = getelementptr inbounds i64, i64* %350, i64 %426
  store i64 %425, i64* %427, align 8
  br label %428

428:                                              ; preds = %355
  %429 = load i64, i64* %15, align 8
  %430 = add i64 %429, 1
  store i64 %430, i64* %15, align 8
  br label %351

431:                                              ; preds = %351
  %432 = load i32, i32* %18, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %431
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %436 = load i64, i64* %7, align 8
  %437 = load i64, i64* %11, align 8
  %438 = load i64, i64* %12, align 8
  %439 = load i64, i64* %13, align 8
  %440 = call i32 @gl_write_zoomed_color_span(%struct.TYPE_16__* %435, i64 %436, i64 %437, i64 %438, i32* %37, i64* %341, i64* %344, i64* %347, i64* %350, i64 %439)
  br label %447

441:                                              ; preds = %431
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %443 = load i64, i64* %7, align 8
  %444 = load i64, i64* %11, align 8
  %445 = load i64, i64* %12, align 8
  %446 = call i32 @gl_write_color_span(%struct.TYPE_16__* %442, i64 %443, i64 %444, i64 %445, i32* %37, i64* %341, i64* %344, i64* %347, i64* %350, i32 135)
  br label %447

447:                                              ; preds = %441, %434
  %448 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %448)
  br label %493

449:                                              ; preds = %330
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i32 0, i32 9
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %476

455:                                              ; preds = %449
  store i64 0, i64* %15, align 8
  br label %456

456:                                              ; preds = %472, %455
  %457 = load i64, i64* %15, align 8
  %458 = load i64, i64* %7, align 8
  %459 = icmp ult i64 %457, %458
  br i1 %459, label %460, label %475

460:                                              ; preds = %456
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %462, i32 0, i32 8
  %464 = load i64*, i64** %463, align 8
  %465 = load i64, i64* %15, align 8
  %466 = getelementptr inbounds i64, i64* %106, i64 %465
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds i64, i64* %464, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* %15, align 8
  %471 = getelementptr inbounds i64, i64* %106, i64 %470
  store i64 %469, i64* %471, align 8
  br label %472

472:                                              ; preds = %460
  %473 = load i64, i64* %15, align 8
  %474 = add i64 %473, 1
  store i64 %474, i64* %15, align 8
  br label %456

475:                                              ; preds = %456
  br label %476

476:                                              ; preds = %475, %449
  %477 = load i32, i32* %18, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %486

479:                                              ; preds = %476
  %480 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %481 = load i64, i64* %7, align 8
  %482 = load i64, i64* %11, align 8
  %483 = load i64, i64* %12, align 8
  %484 = load i64, i64* %13, align 8
  %485 = call i32 @gl_write_zoomed_index_span(%struct.TYPE_16__* %480, i64 %481, i64 %482, i64 %483, i32* %37, i64* %106, i64 %484)
  br label %492

486:                                              ; preds = %476
  %487 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %488 = load i64, i64* %7, align 8
  %489 = load i64, i64* %11, align 8
  %490 = load i64, i64* %12, align 8
  %491 = call i32 @gl_write_index_span(%struct.TYPE_16__* %487, i64 %488, i64 %489, i64 %490, i32* %37, i64* %106, i32 135)
  br label %492

492:                                              ; preds = %486, %479
  br label %493

493:                                              ; preds = %492, %447
  %494 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %494)
  br label %495

495:                                              ; preds = %493
  %496 = load i64, i64* %14, align 8
  %497 = add i64 %496, 1
  store i64 %497, i64* %14, align 8
  %498 = load i64, i64* %12, align 8
  %499 = add nsw i64 %498, 1
  store i64 %499, i64* %12, align 8
  br label %98

500:                                              ; preds = %98
  %501 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %501)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_error(%struct.TYPE_16__*, i32, i8*) #2

declare dso_local i32 @gl_write_zoomed_color_span(%struct.TYPE_16__*, i64, i64, i64, i32*, i64*, i64*, i64*, i64*, i64) #2

declare dso_local i32 @gl_write_color_span(%struct.TYPE_16__*, i64, i64, i64, i32*, i64*, i64*, i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @gl_write_zoomed_index_span(%struct.TYPE_16__*, i64, i64, i64, i32*, i64*, i64) #2

declare dso_local i32 @gl_write_index_span(%struct.TYPE_16__*, i64, i64, i64, i32*, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
