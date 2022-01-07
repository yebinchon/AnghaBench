; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_read_index_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_read_index_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i64*, i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*, i64, i64, i64, i64*)* }
%struct.TYPE_9__ = type { i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glReadPixels\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"glReadPixels(type)\00", align 1
@MAX_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64, i64, i64, i64, i32, i32*)* @read_index_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_index_pixels(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %7
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %41 = call i32 @gl_error(%struct.TYPE_13__* %39, i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %469

42:                                               ; preds = %7
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @gl_sizeof_type(i32 %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = icmp ule i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = load i32, i32* @GL_INVALID_ENUM, align 4
  %50 = call i32 @gl_error(%struct.TYPE_13__* %48, i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %469

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %17, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %20, align 8
  br label %68

66:                                               ; preds = %51
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %20, align 8
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %17, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %20, align 8
  store i64 %73, i64* %19, align 8
  br label %84

74:                                               ; preds = %68
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %18, align 8
  %77 = udiv i64 %75, %76
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %20, align 8
  %80 = mul i64 %78, %79
  %81 = load i64, i64* %17, align 8
  %82 = call i64 @CEILING(i64 %80, i64 %81)
  %83 = mul i64 %77, %82
  store i64 %83, i64* %19, align 8
  br label %84

84:                                               ; preds = %74, %72
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %19, align 8
  %90 = mul i64 %88, %89
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %90, %94
  store i64 %95, i64* %21, align 8
  store i64 0, i64* %16, align 8
  br label %96

96:                                               ; preds = %464, %84
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %469

100:                                              ; preds = %96
  %101 = load i32, i32* @MAX_WIDTH, align 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %22, align 8
  %104 = alloca i64, i64 %102, align 16
  store i64 %102, i64* %23, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_13__*, i64, i64, i64, i64*)*, i32 (%struct.TYPE_13__*, i64, i64, i64, i64*)** %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 %108(%struct.TYPE_13__* %109, i64 %110, i64 %111, i64 %112, i64* %104)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %100
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %185

125:                                              ; preds = %119, %100
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ult i64 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %125
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 0, %135
  store i64 %136, i64* %24, align 8
  store i64 0, i64* %15, align 8
  br label %137

137:                                              ; preds = %154, %131
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load i64, i64* %15, align 8
  %143 = getelementptr inbounds i64, i64* %104, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %24, align 8
  %146 = lshr i64 %144, %145
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %146, %150
  %152 = load i64, i64* %15, align 8
  %153 = getelementptr inbounds i64, i64* %104, i64 %152
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %141
  %155 = load i64, i64* %15, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %15, align 8
  br label %137

157:                                              ; preds = %137
  br label %184

158:                                              ; preds = %125
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %24, align 8
  store i64 0, i64* %15, align 8
  br label %163

163:                                              ; preds = %180, %158
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %11, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %163
  %168 = load i64, i64* %15, align 8
  %169 = getelementptr inbounds i64, i64* %104, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %24, align 8
  %172 = shl i64 %170, %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %172, %176
  %178 = load i64, i64* %15, align 8
  %179 = getelementptr inbounds i64, i64* %104, i64 %178
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %167
  %181 = load i64, i64* %15, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %15, align 8
  br label %163

183:                                              ; preds = %163
  br label %184

184:                                              ; preds = %183, %157
  br label %185

185:                                              ; preds = %184, %119
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %212

191:                                              ; preds = %185
  store i64 0, i64* %15, align 8
  br label %192

192:                                              ; preds = %208, %191
  %193 = load i64, i64* %15, align 8
  %194 = load i64, i64* %11, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %192
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* %15, align 8
  %202 = getelementptr inbounds i64, i64* %104, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i64, i64* %200, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %15, align 8
  %207 = getelementptr inbounds i64, i64* %104, i64 %206
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %196
  %209 = load i64, i64* %15, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %15, align 8
  br label %192

211:                                              ; preds = %192
  br label %212

212:                                              ; preds = %211, %185
  %213 = load i32, i32* %13, align 4
  switch i32 %213, label %458 [
    i32 130, label %214
    i32 134, label %237
    i32 128, label %260
    i32 131, label %299
    i32 129, label %338
    i32 132, label %378
    i32 133, label %418
  ]

214:                                              ; preds = %212
  %215 = load i32*, i32** %14, align 8
  %216 = load i64, i64* %21, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i64, i64* %16, align 8
  %219 = load i64, i64* %19, align 8
  %220 = mul i64 %218, %219
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32* %221, i32** %25, align 8
  store i64 0, i64* %15, align 8
  br label %222

222:                                              ; preds = %233, %214
  %223 = load i64, i64* %15, align 8
  %224 = load i64, i64* %11, align 8
  %225 = icmp slt i64 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load i64, i64* %15, align 8
  %228 = getelementptr inbounds i64, i64* %104, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = load i32*, i32** %25, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %25, align 8
  store i32 %230, i32* %231, align 4
  br label %233

233:                                              ; preds = %226
  %234 = load i64, i64* %15, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %15, align 8
  br label %222

236:                                              ; preds = %222
  br label %462

237:                                              ; preds = %212
  %238 = load i32*, i32** %14, align 8
  %239 = load i64, i64* %21, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i64, i64* %16, align 8
  %242 = load i64, i64* %19, align 8
  %243 = mul i64 %241, %242
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32* %244, i32** %26, align 8
  store i64 0, i64* %15, align 8
  br label %245

245:                                              ; preds = %256, %237
  %246 = load i64, i64* %15, align 8
  %247 = load i64, i64* %11, align 8
  %248 = icmp slt i64 %246, %247
  br i1 %248, label %249, label %259

249:                                              ; preds = %245
  %250 = load i64, i64* %15, align 8
  %251 = getelementptr inbounds i64, i64* %104, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = load i32*, i32** %26, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %26, align 8
  store i32 %253, i32* %254, align 4
  br label %256

256:                                              ; preds = %249
  %257 = load i64, i64* %15, align 8
  %258 = add nsw i64 %257, 1
  store i64 %258, i64* %15, align 8
  br label %245

259:                                              ; preds = %245
  br label %462

260:                                              ; preds = %212
  %261 = load i32*, i32** %14, align 8
  %262 = load i64, i64* %21, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i64, i64* %16, align 8
  %265 = load i64, i64* %19, align 8
  %266 = mul i64 %264, %265
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32* %267, i32** %27, align 8
  store i64 0, i64* %15, align 8
  br label %268

268:                                              ; preds = %279, %260
  %269 = load i64, i64* %15, align 8
  %270 = load i64, i64* %11, align 8
  %271 = icmp slt i64 %269, %270
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = load i64, i64* %15, align 8
  %274 = getelementptr inbounds i64, i64* %104, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = load i32*, i32** %27, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %27, align 8
  store i32 %276, i32* %277, align 4
  br label %279

279:                                              ; preds = %272
  %280 = load i64, i64* %15, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %15, align 8
  br label %268

282:                                              ; preds = %268
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %282
  %289 = load i32*, i32** %14, align 8
  %290 = load i64, i64* %21, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i64, i64* %16, align 8
  %293 = load i64, i64* %19, align 8
  %294 = mul i64 %292, %293
  %295 = getelementptr inbounds i32, i32* %291, i64 %294
  %296 = load i64, i64* %11, align 8
  %297 = call i32 @gl_swap2(i32* %295, i64 %296)
  br label %298

298:                                              ; preds = %288, %282
  br label %462

299:                                              ; preds = %212
  %300 = load i32*, i32** %14, align 8
  %301 = load i64, i64* %21, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = load i64, i64* %16, align 8
  %304 = load i64, i64* %19, align 8
  %305 = mul i64 %303, %304
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  store i32* %306, i32** %28, align 8
  store i64 0, i64* %15, align 8
  br label %307

307:                                              ; preds = %318, %299
  %308 = load i64, i64* %15, align 8
  %309 = load i64, i64* %11, align 8
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %311, label %321

311:                                              ; preds = %307
  %312 = load i64, i64* %15, align 8
  %313 = getelementptr inbounds i64, i64* %104, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = load i32*, i32** %28, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 1
  store i32* %317, i32** %28, align 8
  store i32 %315, i32* %316, align 4
  br label %318

318:                                              ; preds = %311
  %319 = load i64, i64* %15, align 8
  %320 = add nsw i64 %319, 1
  store i64 %320, i64* %15, align 8
  br label %307

321:                                              ; preds = %307
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %321
  %328 = load i32*, i32** %14, align 8
  %329 = load i64, i64* %21, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i64, i64* %16, align 8
  %332 = load i64, i64* %19, align 8
  %333 = mul i64 %331, %332
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  %335 = load i64, i64* %11, align 8
  %336 = call i32 @gl_swap2(i32* %334, i64 %335)
  br label %337

337:                                              ; preds = %327, %321
  br label %462

338:                                              ; preds = %212
  %339 = load i32*, i32** %14, align 8
  %340 = bitcast i32* %339 to i64*
  %341 = load i64, i64* %21, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  %343 = load i64, i64* %16, align 8
  %344 = load i64, i64* %19, align 8
  %345 = mul i64 %343, %344
  %346 = getelementptr inbounds i64, i64* %342, i64 %345
  store i64* %346, i64** %29, align 8
  store i64 0, i64* %15, align 8
  br label %347

347:                                              ; preds = %357, %338
  %348 = load i64, i64* %15, align 8
  %349 = load i64, i64* %11, align 8
  %350 = icmp slt i64 %348, %349
  br i1 %350, label %351, label %360

351:                                              ; preds = %347
  %352 = load i64, i64* %15, align 8
  %353 = getelementptr inbounds i64, i64* %104, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = load i64*, i64** %29, align 8
  %356 = getelementptr inbounds i64, i64* %355, i32 1
  store i64* %356, i64** %29, align 8
  store i64 %354, i64* %355, align 8
  br label %357

357:                                              ; preds = %351
  %358 = load i64, i64* %15, align 8
  %359 = add nsw i64 %358, 1
  store i64 %359, i64* %15, align 8
  br label %347

360:                                              ; preds = %347
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %360
  %367 = load i32*, i32** %14, align 8
  %368 = bitcast i32* %367 to i64*
  %369 = load i64, i64* %21, align 8
  %370 = getelementptr inbounds i64, i64* %368, i64 %369
  %371 = load i64, i64* %16, align 8
  %372 = load i64, i64* %19, align 8
  %373 = mul i64 %371, %372
  %374 = getelementptr inbounds i64, i64* %370, i64 %373
  %375 = load i64, i64* %11, align 8
  %376 = call i32 @gl_swap4(i64* %374, i64 %375)
  br label %377

377:                                              ; preds = %366, %360
  br label %462

378:                                              ; preds = %212
  %379 = load i32*, i32** %14, align 8
  %380 = bitcast i32* %379 to i64*
  %381 = load i64, i64* %21, align 8
  %382 = getelementptr inbounds i64, i64* %380, i64 %381
  %383 = load i64, i64* %16, align 8
  %384 = load i64, i64* %19, align 8
  %385 = mul i64 %383, %384
  %386 = getelementptr inbounds i64, i64* %382, i64 %385
  store i64* %386, i64** %30, align 8
  store i64 0, i64* %15, align 8
  br label %387

387:                                              ; preds = %397, %378
  %388 = load i64, i64* %15, align 8
  %389 = load i64, i64* %11, align 8
  %390 = icmp slt i64 %388, %389
  br i1 %390, label %391, label %400

391:                                              ; preds = %387
  %392 = load i64, i64* %15, align 8
  %393 = getelementptr inbounds i64, i64* %104, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = load i64*, i64** %30, align 8
  %396 = getelementptr inbounds i64, i64* %395, i32 1
  store i64* %396, i64** %30, align 8
  store i64 %394, i64* %395, align 8
  br label %397

397:                                              ; preds = %391
  %398 = load i64, i64* %15, align 8
  %399 = add nsw i64 %398, 1
  store i64 %399, i64* %15, align 8
  br label %387

400:                                              ; preds = %387
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %417

406:                                              ; preds = %400
  %407 = load i32*, i32** %14, align 8
  %408 = bitcast i32* %407 to i64*
  %409 = load i64, i64* %21, align 8
  %410 = getelementptr inbounds i64, i64* %408, i64 %409
  %411 = load i64, i64* %16, align 8
  %412 = load i64, i64* %19, align 8
  %413 = mul i64 %411, %412
  %414 = getelementptr inbounds i64, i64* %410, i64 %413
  %415 = load i64, i64* %11, align 8
  %416 = call i32 @gl_swap4(i64* %414, i64 %415)
  br label %417

417:                                              ; preds = %406, %400
  br label %462

418:                                              ; preds = %212
  %419 = load i32*, i32** %14, align 8
  %420 = load i64, i64* %21, align 8
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  %422 = load i64, i64* %16, align 8
  %423 = load i64, i64* %19, align 8
  %424 = mul i64 %422, %423
  %425 = getelementptr inbounds i32, i32* %421, i64 %424
  store i32* %425, i32** %31, align 8
  store i64 0, i64* %15, align 8
  br label %426

426:                                              ; preds = %437, %418
  %427 = load i64, i64* %15, align 8
  %428 = load i64, i64* %11, align 8
  %429 = icmp slt i64 %427, %428
  br i1 %429, label %430, label %440

430:                                              ; preds = %426
  %431 = load i64, i64* %15, align 8
  %432 = getelementptr inbounds i64, i64* %104, i64 %431
  %433 = load i64, i64* %432, align 8
  %434 = trunc i64 %433 to i32
  %435 = load i32*, i32** %31, align 8
  %436 = getelementptr inbounds i32, i32* %435, i32 1
  store i32* %436, i32** %31, align 8
  store i32 %434, i32* %435, align 4
  br label %437

437:                                              ; preds = %430
  %438 = load i64, i64* %15, align 8
  %439 = add nsw i64 %438, 1
  store i64 %439, i64* %15, align 8
  br label %426

440:                                              ; preds = %426
  %441 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 8
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %457

446:                                              ; preds = %440
  %447 = load i32*, i32** %14, align 8
  %448 = bitcast i32* %447 to i64*
  %449 = load i64, i64* %21, align 8
  %450 = getelementptr inbounds i64, i64* %448, i64 %449
  %451 = load i64, i64* %16, align 8
  %452 = load i64, i64* %19, align 8
  %453 = mul i64 %451, %452
  %454 = getelementptr inbounds i64, i64* %450, i64 %453
  %455 = load i64, i64* %11, align 8
  %456 = call i32 @gl_swap4(i64* %454, i64 %455)
  br label %457

457:                                              ; preds = %446, %440
  br label %462

458:                                              ; preds = %212
  %459 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %460 = load i32, i32* @GL_INVALID_ENUM, align 4
  %461 = call i32 @gl_error(%struct.TYPE_13__* %459, i32 %460, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %462

462:                                              ; preds = %458, %457, %417, %377, %337, %298, %259, %236
  %463 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %463)
  br label %464

464:                                              ; preds = %462
  %465 = load i64, i64* %16, align 8
  %466 = add nsw i64 %465, 1
  store i64 %466, i64* %16, align 8
  %467 = load i64, i64* %10, align 8
  %468 = add nsw i64 %467, 1
  store i64 %468, i64* %10, align 8
  br label %96

469:                                              ; preds = %38, %47, %96
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i64 @gl_sizeof_type(i32) #1

declare dso_local i64 @CEILING(i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gl_swap2(i32*, i64) #1

declare dso_local i32 @gl_swap4(i64*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
