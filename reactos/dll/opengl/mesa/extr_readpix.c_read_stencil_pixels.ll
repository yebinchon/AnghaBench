; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_read_stencil_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_readpix.c_read_stencil_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i64, i64*, i64 }
%struct.TYPE_8__ = type { i64 }

@GL_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glReadPixels\00", align 1
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"glReadPixels(type)\00", align 1
@MAX_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64, i64, i64, i64, i32, i32*)* @read_stencil_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_stencil_pixels(%struct.TYPE_11__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %7
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = load i32, i32* @GL_INVALID_OPERATION, align 4
  %42 = call i32 @gl_error(%struct.TYPE_11__* %40, i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %449

43:                                               ; preds = %7
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %49, %43
  %56 = phi i1 [ true, %43 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i64 @gl_sizeof_type(i32 %58)
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = icmp ule i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = load i32, i32* @GL_INVALID_ENUM, align 4
  %65 = call i32 @gl_error(%struct.TYPE_11__* %63, i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %449

66:                                               ; preds = %55
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %17, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %20, align 8
  br label %83

81:                                               ; preds = %66
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %20, align 8
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %17, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* %20, align 8
  store i64 %88, i64* %19, align 8
  br label %99

89:                                               ; preds = %83
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = udiv i64 %90, %91
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %20, align 8
  %95 = mul i64 %93, %94
  %96 = load i64, i64* %17, align 8
  %97 = call i64 @CEILING(i64 %95, i64 %96)
  %98 = mul i64 %92, %97
  store i64 %98, i64* %19, align 8
  br label %99

99:                                               ; preds = %89, %87
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %19, align 8
  %105 = mul i64 %103, %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %105, %109
  store i64 %110, i64* %21, align 8
  store i64 0, i64* %16, align 8
  br label %111

111:                                              ; preds = %444, %99
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %449

115:                                              ; preds = %111
  %116 = load i32, i32* @MAX_WIDTH, align 4
  %117 = zext i32 %116 to i64
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %23, align 8
  %119 = alloca i64, i64 %117, align 16
  store i64 %117, i64* %24, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @gl_read_stencil_span(%struct.TYPE_11__* %120, i64 %121, i64 %122, i64 %123, i64* %119)
  %125 = load i32, i32* %22, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %187

127:                                              ; preds = %115
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %127
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 0, %137
  store i64 %138, i64* %25, align 8
  store i64 0, i64* %15, align 8
  br label %139

139:                                              ; preds = %156, %133
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %11, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds i64, i64* %119, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %25, align 8
  %148 = lshr i64 %146, %147
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %148, %152
  %154 = load i64, i64* %15, align 8
  %155 = getelementptr inbounds i64, i64* %119, i64 %154
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %143
  %157 = load i64, i64* %15, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %15, align 8
  br label %139

159:                                              ; preds = %139
  br label %186

160:                                              ; preds = %127
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %25, align 8
  store i64 0, i64* %15, align 8
  br label %165

165:                                              ; preds = %182, %160
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* %11, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %165
  %170 = load i64, i64* %15, align 8
  %171 = getelementptr inbounds i64, i64* %119, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %25, align 8
  %174 = shl i64 %172, %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %174, %178
  %180 = load i64, i64* %15, align 8
  %181 = getelementptr inbounds i64, i64* %119, i64 %180
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %169
  %183 = load i64, i64* %15, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %15, align 8
  br label %165

185:                                              ; preds = %165
  br label %186

186:                                              ; preds = %185, %159
  br label %187

187:                                              ; preds = %186, %115
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  store i64 0, i64* %15, align 8
  br label %194

194:                                              ; preds = %210, %193
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* %11, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %15, align 8
  %204 = getelementptr inbounds i64, i64* %119, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i64, i64* %202, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %15, align 8
  %209 = getelementptr inbounds i64, i64* %119, i64 %208
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %198
  %211 = load i64, i64* %15, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %15, align 8
  br label %194

213:                                              ; preds = %194
  br label %214

214:                                              ; preds = %213, %187
  %215 = load i32, i32* %13, align 4
  switch i32 %215, label %438 [
    i32 130, label %216
    i32 134, label %228
    i32 128, label %240
    i32 131, label %279
    i32 129, label %318
    i32 132, label %358
    i32 133, label %398
  ]

216:                                              ; preds = %214
  %217 = load i32*, i32** %14, align 8
  %218 = bitcast i32* %217 to i64*
  %219 = load i64, i64* %21, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %16, align 8
  %222 = load i64, i64* %19, align 8
  %223 = mul i64 %221, %222
  %224 = getelementptr inbounds i64, i64* %220, i64 %223
  store i64* %224, i64** %26, align 8
  %225 = load i64*, i64** %26, align 8
  %226 = load i64, i64* %11, align 8
  %227 = call i32 @MEMCPY(i64* %225, i64* %119, i64 %226)
  br label %442

228:                                              ; preds = %214
  %229 = load i32*, i32** %14, align 8
  %230 = bitcast i32* %229 to i64*
  %231 = load i64, i64* %21, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %16, align 8
  %234 = load i64, i64* %19, align 8
  %235 = mul i64 %233, %234
  %236 = getelementptr inbounds i64, i64* %232, i64 %235
  store i64* %236, i64** %27, align 8
  %237 = load i64*, i64** %27, align 8
  %238 = load i64, i64* %11, align 8
  %239 = call i32 @MEMCPY(i64* %237, i64* %119, i64 %238)
  br label %442

240:                                              ; preds = %214
  %241 = load i32*, i32** %14, align 8
  %242 = load i64, i64* %21, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i64, i64* %16, align 8
  %245 = load i64, i64* %19, align 8
  %246 = mul i64 %244, %245
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  store i32* %247, i32** %28, align 8
  store i64 0, i64* %15, align 8
  br label %248

248:                                              ; preds = %259, %240
  %249 = load i64, i64* %15, align 8
  %250 = load i64, i64* %11, align 8
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = load i64, i64* %15, align 8
  %254 = getelementptr inbounds i64, i64* %119, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = load i32*, i32** %28, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %28, align 8
  store i32 %256, i32* %257, align 4
  br label %259

259:                                              ; preds = %252
  %260 = load i64, i64* %15, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %15, align 8
  br label %248

262:                                              ; preds = %248
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %262
  %269 = load i32*, i32** %14, align 8
  %270 = load i64, i64* %21, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i64, i64* %16, align 8
  %273 = load i64, i64* %19, align 8
  %274 = mul i64 %272, %273
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i64, i64* %11, align 8
  %277 = call i32 @gl_swap2(i32* %275, i64 %276)
  br label %278

278:                                              ; preds = %268, %262
  br label %442

279:                                              ; preds = %214
  %280 = load i32*, i32** %14, align 8
  %281 = load i64, i64* %21, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i64, i64* %16, align 8
  %284 = load i64, i64* %19, align 8
  %285 = mul i64 %283, %284
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  store i32* %286, i32** %29, align 8
  store i64 0, i64* %15, align 8
  br label %287

287:                                              ; preds = %298, %279
  %288 = load i64, i64* %15, align 8
  %289 = load i64, i64* %11, align 8
  %290 = icmp slt i64 %288, %289
  br i1 %290, label %291, label %301

291:                                              ; preds = %287
  %292 = load i64, i64* %15, align 8
  %293 = getelementptr inbounds i64, i64* %119, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = load i32*, i32** %29, align 8
  %297 = getelementptr inbounds i32, i32* %296, i32 1
  store i32* %297, i32** %29, align 8
  store i32 %295, i32* %296, align 4
  br label %298

298:                                              ; preds = %291
  %299 = load i64, i64* %15, align 8
  %300 = add nsw i64 %299, 1
  store i64 %300, i64* %15, align 8
  br label %287

301:                                              ; preds = %287
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %301
  %308 = load i32*, i32** %14, align 8
  %309 = load i64, i64* %21, align 8
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  %311 = load i64, i64* %16, align 8
  %312 = load i64, i64* %19, align 8
  %313 = mul i64 %311, %312
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = load i64, i64* %11, align 8
  %316 = call i32 @gl_swap2(i32* %314, i64 %315)
  br label %317

317:                                              ; preds = %307, %301
  br label %442

318:                                              ; preds = %214
  %319 = load i32*, i32** %14, align 8
  %320 = bitcast i32* %319 to i64*
  %321 = load i64, i64* %21, align 8
  %322 = getelementptr inbounds i64, i64* %320, i64 %321
  %323 = load i64, i64* %16, align 8
  %324 = load i64, i64* %19, align 8
  %325 = mul i64 %323, %324
  %326 = getelementptr inbounds i64, i64* %322, i64 %325
  store i64* %326, i64** %30, align 8
  store i64 0, i64* %15, align 8
  br label %327

327:                                              ; preds = %337, %318
  %328 = load i64, i64* %15, align 8
  %329 = load i64, i64* %11, align 8
  %330 = icmp slt i64 %328, %329
  br i1 %330, label %331, label %340

331:                                              ; preds = %327
  %332 = load i64, i64* %15, align 8
  %333 = getelementptr inbounds i64, i64* %119, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = load i64*, i64** %30, align 8
  %336 = getelementptr inbounds i64, i64* %335, i32 1
  store i64* %336, i64** %30, align 8
  store i64 %334, i64* %335, align 8
  br label %337

337:                                              ; preds = %331
  %338 = load i64, i64* %15, align 8
  %339 = add nsw i64 %338, 1
  store i64 %339, i64* %15, align 8
  br label %327

340:                                              ; preds = %327
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %357

346:                                              ; preds = %340
  %347 = load i32*, i32** %14, align 8
  %348 = bitcast i32* %347 to i64*
  %349 = load i64, i64* %21, align 8
  %350 = getelementptr inbounds i64, i64* %348, i64 %349
  %351 = load i64, i64* %16, align 8
  %352 = load i64, i64* %19, align 8
  %353 = mul i64 %351, %352
  %354 = getelementptr inbounds i64, i64* %350, i64 %353
  %355 = load i64, i64* %11, align 8
  %356 = call i32 @gl_swap4(i64* %354, i64 %355)
  br label %357

357:                                              ; preds = %346, %340
  br label %442

358:                                              ; preds = %214
  %359 = load i32*, i32** %14, align 8
  %360 = bitcast i32* %359 to i64*
  %361 = load i64, i64* %21, align 8
  %362 = getelementptr inbounds i64, i64* %360, i64 %361
  %363 = load i64, i64* %16, align 8
  %364 = load i64, i64* %19, align 8
  %365 = mul i64 %363, %364
  %366 = getelementptr inbounds i64, i64* %362, i64 %365
  store i64* %366, i64** %31, align 8
  store i64 0, i64* %15, align 8
  br label %367

367:                                              ; preds = %377, %358
  %368 = load i64, i64* %15, align 8
  %369 = load i64, i64* %11, align 8
  %370 = icmp slt i64 %368, %369
  br i1 %370, label %371, label %380

371:                                              ; preds = %367
  %372 = load i64, i64* %15, align 8
  %373 = getelementptr inbounds i64, i64* %119, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = load i64*, i64** %31, align 8
  %376 = getelementptr inbounds i64, i64* %375, i32 1
  store i64* %376, i64** %31, align 8
  store i64 %374, i64* %375, align 8
  br label %377

377:                                              ; preds = %371
  %378 = load i64, i64* %15, align 8
  %379 = add nsw i64 %378, 1
  store i64 %379, i64* %15, align 8
  br label %367

380:                                              ; preds = %367
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %397

386:                                              ; preds = %380
  %387 = load i32*, i32** %14, align 8
  %388 = bitcast i32* %387 to i64*
  %389 = load i64, i64* %21, align 8
  %390 = getelementptr inbounds i64, i64* %388, i64 %389
  %391 = load i64, i64* %16, align 8
  %392 = load i64, i64* %19, align 8
  %393 = mul i64 %391, %392
  %394 = getelementptr inbounds i64, i64* %390, i64 %393
  %395 = load i64, i64* %11, align 8
  %396 = call i32 @gl_swap4(i64* %394, i64 %395)
  br label %397

397:                                              ; preds = %386, %380
  br label %442

398:                                              ; preds = %214
  %399 = load i32*, i32** %14, align 8
  %400 = load i64, i64* %21, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  %402 = load i64, i64* %16, align 8
  %403 = load i64, i64* %19, align 8
  %404 = mul i64 %402, %403
  %405 = getelementptr inbounds i32, i32* %401, i64 %404
  store i32* %405, i32** %32, align 8
  store i64 0, i64* %15, align 8
  br label %406

406:                                              ; preds = %417, %398
  %407 = load i64, i64* %15, align 8
  %408 = load i64, i64* %11, align 8
  %409 = icmp slt i64 %407, %408
  br i1 %409, label %410, label %420

410:                                              ; preds = %406
  %411 = load i64, i64* %15, align 8
  %412 = getelementptr inbounds i64, i64* %119, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = trunc i64 %413 to i32
  %415 = load i32*, i32** %32, align 8
  %416 = getelementptr inbounds i32, i32* %415, i32 1
  store i32* %416, i32** %32, align 8
  store i32 %414, i32* %415, align 4
  br label %417

417:                                              ; preds = %410
  %418 = load i64, i64* %15, align 8
  %419 = add nsw i64 %418, 1
  store i64 %419, i64* %15, align 8
  br label %406

420:                                              ; preds = %406
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 8
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %437

426:                                              ; preds = %420
  %427 = load i32*, i32** %14, align 8
  %428 = bitcast i32* %427 to i64*
  %429 = load i64, i64* %21, align 8
  %430 = getelementptr inbounds i64, i64* %428, i64 %429
  %431 = load i64, i64* %16, align 8
  %432 = load i64, i64* %19, align 8
  %433 = mul i64 %431, %432
  %434 = getelementptr inbounds i64, i64* %430, i64 %433
  %435 = load i64, i64* %11, align 8
  %436 = call i32 @gl_swap4(i64* %434, i64 %435)
  br label %437

437:                                              ; preds = %426, %420
  br label %442

438:                                              ; preds = %214
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %440 = load i32, i32* @GL_INVALID_ENUM, align 4
  %441 = call i32 @gl_error(%struct.TYPE_11__* %439, i32 %440, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %442

442:                                              ; preds = %438, %437, %397, %357, %317, %278, %228, %216
  %443 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %443)
  br label %444

444:                                              ; preds = %442
  %445 = load i64, i64* %16, align 8
  %446 = add nsw i64 %445, 1
  store i64 %446, i64* %16, align 8
  %447 = load i64, i64* %10, align 8
  %448 = add nsw i64 %447, 1
  store i64 %448, i64* %10, align 8
  br label %111

449:                                              ; preds = %39, %62, %111
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @gl_sizeof_type(i32) #1

declare dso_local i64 @CEILING(i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gl_read_stencil_span(%struct.TYPE_11__*, i64, i64, i64, i64*) #1

declare dso_local i32 @MEMCPY(i64*, i64*, i64) #1

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
