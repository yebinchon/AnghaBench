; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_rgba_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_rgba_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Bad function in gl_logicop_rgba_span\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_logicop_rgba_span(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %30 = load i32, i32* @MAX_WIDTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load i32, i32* @MAX_WIDTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %21, align 8
  %37 = load i32, i32* @MAX_WIDTH, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %22, align 8
  %40 = load i32, i32* @MAX_WIDTH, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %23, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @gl_read_color_span(%struct.TYPE_9__* %43, i64 %44, i32 %45, i32 %46, i32* %33, i32* %36, i32* %39, i32* %42)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %872 [
    i32 140, label %52
    i32 129, label %81
    i32 139, label %134
    i32 138, label %135
    i32 134, label %184
    i32 136, label %225
    i32 143, label %270
    i32 135, label %319
    i32 132, label %384
    i32 133, label %433
    i32 128, label %498
    i32 137, label %547
    i32 141, label %612
    i32 142, label %677
    i32 130, label %742
    i32 131, label %807
  ]

52:                                               ; preds = %9
  store i64 0, i64* %24, align 8
  br label %53

53:                                               ; preds = %77, %52
  %54 = load i64, i64* %24, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load i32*, i32** %18, align 8
  %59 = load i64, i64* %24, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load i32*, i32** %17, align 8
  %65 = load i64, i64* %24, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = load i64, i64* %24, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i64, i64* %24, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = load i64, i64* %24, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %63, %57
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %24, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %24, align 8
  br label %53

80:                                               ; preds = %53
  br label %875

81:                                               ; preds = %9
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %25, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %26, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %27, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %28, align 4
  store i64 0, i64* %24, align 8
  br label %102

102:                                              ; preds = %130, %81
  %103 = load i64, i64* %24, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %102
  %107 = load i32*, i32** %18, align 8
  %108 = load i64, i64* %24, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load i32, i32* %25, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load i64, i64* %24, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = load i64, i64* %24, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %27, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = load i64, i64* %24, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %28, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = load i64, i64* %24, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %112, %106
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %24, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %24, align 8
  br label %102

133:                                              ; preds = %102
  br label %875

134:                                              ; preds = %9
  br label %875

135:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %136

136:                                              ; preds = %180, %135
  %137 = load i64, i64* %24, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %183

140:                                              ; preds = %136
  %141 = load i32*, i32** %18, align 8
  %142 = load i64, i64* %24, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %179

146:                                              ; preds = %140
  %147 = load i32*, i32** %14, align 8
  %148 = load i64, i64* %24, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, -1
  %152 = load i32*, i32** %14, align 8
  %153 = load i64, i64* %24, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %151, i32* %154, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = load i64, i64* %24, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %158, -1
  %160 = load i32*, i32** %15, align 8
  %161 = load i64, i64* %24, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 %159, i32* %162, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = load i64, i64* %24, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = xor i32 %166, -1
  %168 = load i32*, i32** %16, align 8
  %169 = load i64, i64* %24, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 %167, i32* %170, align 4
  %171 = load i32*, i32** %17, align 8
  %172 = load i64, i64* %24, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = xor i32 %174, -1
  %176 = load i32*, i32** %17, align 8
  %177 = load i64, i64* %24, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %175, i32* %178, align 4
  br label %179

179:                                              ; preds = %146, %140
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %24, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %24, align 8
  br label %136

183:                                              ; preds = %136
  br label %875

184:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %185

185:                                              ; preds = %221, %184
  %186 = load i64, i64* %24, align 8
  %187 = load i64, i64* %11, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %224

189:                                              ; preds = %185
  %190 = load i32*, i32** %18, align 8
  %191 = load i64, i64* %24, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %220

195:                                              ; preds = %189
  %196 = load i64, i64* %24, align 8
  %197 = getelementptr inbounds i32, i32* %33, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %14, align 8
  %200 = load i64, i64* %24, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32 %198, i32* %201, align 4
  %202 = load i64, i64* %24, align 8
  %203 = getelementptr inbounds i32, i32* %36, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %15, align 8
  %206 = load i64, i64* %24, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 %204, i32* %207, align 4
  %208 = load i64, i64* %24, align 8
  %209 = getelementptr inbounds i32, i32* %39, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %16, align 8
  %212 = load i64, i64* %24, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %210, i32* %213, align 4
  %214 = load i64, i64* %24, align 8
  %215 = getelementptr inbounds i32, i32* %42, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %17, align 8
  %218 = load i64, i64* %24, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32 %216, i32* %219, align 4
  br label %220

220:                                              ; preds = %195, %189
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %24, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %24, align 8
  br label %185

224:                                              ; preds = %185
  br label %875

225:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %226

226:                                              ; preds = %266, %225
  %227 = load i64, i64* %24, align 8
  %228 = load i64, i64* %11, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %269

230:                                              ; preds = %226
  %231 = load i32*, i32** %18, align 8
  %232 = load i64, i64* %24, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %265

236:                                              ; preds = %230
  %237 = load i64, i64* %24, align 8
  %238 = getelementptr inbounds i32, i32* %33, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %239, -1
  %241 = load i32*, i32** %14, align 8
  %242 = load i64, i64* %24, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32 %240, i32* %243, align 4
  %244 = load i64, i64* %24, align 8
  %245 = getelementptr inbounds i32, i32* %36, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = xor i32 %246, -1
  %248 = load i32*, i32** %15, align 8
  %249 = load i64, i64* %24, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 %247, i32* %250, align 4
  %251 = load i64, i64* %24, align 8
  %252 = getelementptr inbounds i32, i32* %39, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %253, -1
  %255 = load i32*, i32** %16, align 8
  %256 = load i64, i64* %24, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32 %254, i32* %257, align 4
  %258 = load i64, i64* %24, align 8
  %259 = getelementptr inbounds i32, i32* %42, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = xor i32 %260, -1
  %262 = load i32*, i32** %17, align 8
  %263 = load i64, i64* %24, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32 %261, i32* %264, align 4
  br label %265

265:                                              ; preds = %236, %230
  br label %266

266:                                              ; preds = %265
  %267 = load i64, i64* %24, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %24, align 8
  br label %226

269:                                              ; preds = %226
  br label %875

270:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %271

271:                                              ; preds = %315, %270
  %272 = load i64, i64* %24, align 8
  %273 = load i64, i64* %11, align 8
  %274 = icmp ult i64 %272, %273
  br i1 %274, label %275, label %318

275:                                              ; preds = %271
  %276 = load i32*, i32** %18, align 8
  %277 = load i64, i64* %24, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %314

281:                                              ; preds = %275
  %282 = load i64, i64* %24, align 8
  %283 = getelementptr inbounds i32, i32* %33, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %14, align 8
  %286 = load i64, i64* %24, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, %284
  store i32 %289, i32* %287, align 4
  %290 = load i64, i64* %24, align 8
  %291 = getelementptr inbounds i32, i32* %36, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %15, align 8
  %294 = load i64, i64* %24, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, %292
  store i32 %297, i32* %295, align 4
  %298 = load i64, i64* %24, align 8
  %299 = getelementptr inbounds i32, i32* %39, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %16, align 8
  %302 = load i64, i64* %24, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, %300
  store i32 %305, i32* %303, align 4
  %306 = load i64, i64* %24, align 8
  %307 = getelementptr inbounds i32, i32* %42, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %17, align 8
  %310 = load i64, i64* %24, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, %308
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %281, %275
  br label %315

315:                                              ; preds = %314
  %316 = load i64, i64* %24, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %24, align 8
  br label %271

318:                                              ; preds = %271
  br label %875

319:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %320

320:                                              ; preds = %380, %319
  %321 = load i64, i64* %24, align 8
  %322 = load i64, i64* %11, align 8
  %323 = icmp ult i64 %321, %322
  br i1 %323, label %324, label %383

324:                                              ; preds = %320
  %325 = load i32*, i32** %18, align 8
  %326 = load i64, i64* %24, align 8
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %379

330:                                              ; preds = %324
  %331 = load i32*, i32** %14, align 8
  %332 = load i64, i64* %24, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i64, i64* %24, align 8
  %336 = getelementptr inbounds i32, i32* %33, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %334, %337
  %339 = xor i32 %338, -1
  %340 = load i32*, i32** %14, align 8
  %341 = load i64, i64* %24, align 8
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  store i32 %339, i32* %342, align 4
  %343 = load i32*, i32** %15, align 8
  %344 = load i64, i64* %24, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i64, i64* %24, align 8
  %348 = getelementptr inbounds i32, i32* %36, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %346, %349
  %351 = xor i32 %350, -1
  %352 = load i32*, i32** %15, align 8
  %353 = load i64, i64* %24, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  store i32 %351, i32* %354, align 4
  %355 = load i32*, i32** %16, align 8
  %356 = load i64, i64* %24, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load i64, i64* %24, align 8
  %360 = getelementptr inbounds i32, i32* %39, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %358, %361
  %363 = xor i32 %362, -1
  %364 = load i32*, i32** %16, align 8
  %365 = load i64, i64* %24, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  store i32 %363, i32* %366, align 4
  %367 = load i32*, i32** %17, align 8
  %368 = load i64, i64* %24, align 8
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i64, i64* %24, align 8
  %372 = getelementptr inbounds i32, i32* %42, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %370, %373
  %375 = xor i32 %374, -1
  %376 = load i32*, i32** %17, align 8
  %377 = load i64, i64* %24, align 8
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  store i32 %375, i32* %378, align 4
  br label %379

379:                                              ; preds = %330, %324
  br label %380

380:                                              ; preds = %379
  %381 = load i64, i64* %24, align 8
  %382 = add i64 %381, 1
  store i64 %382, i64* %24, align 8
  br label %320

383:                                              ; preds = %320
  br label %875

384:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %385

385:                                              ; preds = %429, %384
  %386 = load i64, i64* %24, align 8
  %387 = load i64, i64* %11, align 8
  %388 = icmp ult i64 %386, %387
  br i1 %388, label %389, label %432

389:                                              ; preds = %385
  %390 = load i32*, i32** %18, align 8
  %391 = load i64, i64* %24, align 8
  %392 = getelementptr inbounds i32, i32* %390, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %428

395:                                              ; preds = %389
  %396 = load i64, i64* %24, align 8
  %397 = getelementptr inbounds i32, i32* %33, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load i32*, i32** %14, align 8
  %400 = load i64, i64* %24, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %402, %398
  store i32 %403, i32* %401, align 4
  %404 = load i64, i64* %24, align 8
  %405 = getelementptr inbounds i32, i32* %36, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** %15, align 8
  %408 = load i64, i64* %24, align 8
  %409 = getelementptr inbounds i32, i32* %407, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = or i32 %410, %406
  store i32 %411, i32* %409, align 4
  %412 = load i64, i64* %24, align 8
  %413 = getelementptr inbounds i32, i32* %39, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load i32*, i32** %16, align 8
  %416 = load i64, i64* %24, align 8
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = or i32 %418, %414
  store i32 %419, i32* %417, align 4
  %420 = load i64, i64* %24, align 8
  %421 = getelementptr inbounds i32, i32* %42, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load i32*, i32** %17, align 8
  %424 = load i64, i64* %24, align 8
  %425 = getelementptr inbounds i32, i32* %423, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = or i32 %426, %422
  store i32 %427, i32* %425, align 4
  br label %428

428:                                              ; preds = %395, %389
  br label %429

429:                                              ; preds = %428
  %430 = load i64, i64* %24, align 8
  %431 = add i64 %430, 1
  store i64 %431, i64* %24, align 8
  br label %385

432:                                              ; preds = %385
  br label %875

433:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %434

434:                                              ; preds = %494, %433
  %435 = load i64, i64* %24, align 8
  %436 = load i64, i64* %11, align 8
  %437 = icmp ult i64 %435, %436
  br i1 %437, label %438, label %497

438:                                              ; preds = %434
  %439 = load i32*, i32** %18, align 8
  %440 = load i64, i64* %24, align 8
  %441 = getelementptr inbounds i32, i32* %439, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %493

444:                                              ; preds = %438
  %445 = load i32*, i32** %14, align 8
  %446 = load i64, i64* %24, align 8
  %447 = getelementptr inbounds i32, i32* %445, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = load i64, i64* %24, align 8
  %450 = getelementptr inbounds i32, i32* %33, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = or i32 %448, %451
  %453 = xor i32 %452, -1
  %454 = load i32*, i32** %14, align 8
  %455 = load i64, i64* %24, align 8
  %456 = getelementptr inbounds i32, i32* %454, i64 %455
  store i32 %453, i32* %456, align 4
  %457 = load i32*, i32** %15, align 8
  %458 = load i64, i64* %24, align 8
  %459 = getelementptr inbounds i32, i32* %457, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = load i64, i64* %24, align 8
  %462 = getelementptr inbounds i32, i32* %36, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = or i32 %460, %463
  %465 = xor i32 %464, -1
  %466 = load i32*, i32** %15, align 8
  %467 = load i64, i64* %24, align 8
  %468 = getelementptr inbounds i32, i32* %466, i64 %467
  store i32 %465, i32* %468, align 4
  %469 = load i32*, i32** %16, align 8
  %470 = load i64, i64* %24, align 8
  %471 = getelementptr inbounds i32, i32* %469, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = load i64, i64* %24, align 8
  %474 = getelementptr inbounds i32, i32* %39, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = or i32 %472, %475
  %477 = xor i32 %476, -1
  %478 = load i32*, i32** %16, align 8
  %479 = load i64, i64* %24, align 8
  %480 = getelementptr inbounds i32, i32* %478, i64 %479
  store i32 %477, i32* %480, align 4
  %481 = load i32*, i32** %17, align 8
  %482 = load i64, i64* %24, align 8
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = load i64, i64* %24, align 8
  %486 = getelementptr inbounds i32, i32* %42, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = or i32 %484, %487
  %489 = xor i32 %488, -1
  %490 = load i32*, i32** %17, align 8
  %491 = load i64, i64* %24, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  store i32 %489, i32* %492, align 4
  br label %493

493:                                              ; preds = %444, %438
  br label %494

494:                                              ; preds = %493
  %495 = load i64, i64* %24, align 8
  %496 = add i64 %495, 1
  store i64 %496, i64* %24, align 8
  br label %434

497:                                              ; preds = %434
  br label %875

498:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %499

499:                                              ; preds = %543, %498
  %500 = load i64, i64* %24, align 8
  %501 = load i64, i64* %11, align 8
  %502 = icmp ult i64 %500, %501
  br i1 %502, label %503, label %546

503:                                              ; preds = %499
  %504 = load i32*, i32** %18, align 8
  %505 = load i64, i64* %24, align 8
  %506 = getelementptr inbounds i32, i32* %504, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %542

509:                                              ; preds = %503
  %510 = load i64, i64* %24, align 8
  %511 = getelementptr inbounds i32, i32* %33, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = load i32*, i32** %14, align 8
  %514 = load i64, i64* %24, align 8
  %515 = getelementptr inbounds i32, i32* %513, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = xor i32 %516, %512
  store i32 %517, i32* %515, align 4
  %518 = load i64, i64* %24, align 8
  %519 = getelementptr inbounds i32, i32* %36, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = load i32*, i32** %15, align 8
  %522 = load i64, i64* %24, align 8
  %523 = getelementptr inbounds i32, i32* %521, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = xor i32 %524, %520
  store i32 %525, i32* %523, align 4
  %526 = load i64, i64* %24, align 8
  %527 = getelementptr inbounds i32, i32* %39, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = load i32*, i32** %16, align 8
  %530 = load i64, i64* %24, align 8
  %531 = getelementptr inbounds i32, i32* %529, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = xor i32 %532, %528
  store i32 %533, i32* %531, align 4
  %534 = load i64, i64* %24, align 8
  %535 = getelementptr inbounds i32, i32* %42, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = load i32*, i32** %17, align 8
  %538 = load i64, i64* %24, align 8
  %539 = getelementptr inbounds i32, i32* %537, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = xor i32 %540, %536
  store i32 %541, i32* %539, align 4
  br label %542

542:                                              ; preds = %509, %503
  br label %543

543:                                              ; preds = %542
  %544 = load i64, i64* %24, align 8
  %545 = add i64 %544, 1
  store i64 %545, i64* %24, align 8
  br label %499

546:                                              ; preds = %499
  br label %875

547:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %548

548:                                              ; preds = %608, %547
  %549 = load i64, i64* %24, align 8
  %550 = load i64, i64* %11, align 8
  %551 = icmp ult i64 %549, %550
  br i1 %551, label %552, label %611

552:                                              ; preds = %548
  %553 = load i32*, i32** %18, align 8
  %554 = load i64, i64* %24, align 8
  %555 = getelementptr inbounds i32, i32* %553, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %607

558:                                              ; preds = %552
  %559 = load i32*, i32** %14, align 8
  %560 = load i64, i64* %24, align 8
  %561 = getelementptr inbounds i32, i32* %559, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = load i64, i64* %24, align 8
  %564 = getelementptr inbounds i32, i32* %33, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = xor i32 %562, %565
  %567 = xor i32 %566, -1
  %568 = load i32*, i32** %14, align 8
  %569 = load i64, i64* %24, align 8
  %570 = getelementptr inbounds i32, i32* %568, i64 %569
  store i32 %567, i32* %570, align 4
  %571 = load i32*, i32** %15, align 8
  %572 = load i64, i64* %24, align 8
  %573 = getelementptr inbounds i32, i32* %571, i64 %572
  %574 = load i32, i32* %573, align 4
  %575 = load i64, i64* %24, align 8
  %576 = getelementptr inbounds i32, i32* %36, i64 %575
  %577 = load i32, i32* %576, align 4
  %578 = xor i32 %574, %577
  %579 = xor i32 %578, -1
  %580 = load i32*, i32** %15, align 8
  %581 = load i64, i64* %24, align 8
  %582 = getelementptr inbounds i32, i32* %580, i64 %581
  store i32 %579, i32* %582, align 4
  %583 = load i32*, i32** %16, align 8
  %584 = load i64, i64* %24, align 8
  %585 = getelementptr inbounds i32, i32* %583, i64 %584
  %586 = load i32, i32* %585, align 4
  %587 = load i64, i64* %24, align 8
  %588 = getelementptr inbounds i32, i32* %39, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = xor i32 %586, %589
  %591 = xor i32 %590, -1
  %592 = load i32*, i32** %16, align 8
  %593 = load i64, i64* %24, align 8
  %594 = getelementptr inbounds i32, i32* %592, i64 %593
  store i32 %591, i32* %594, align 4
  %595 = load i32*, i32** %17, align 8
  %596 = load i64, i64* %24, align 8
  %597 = getelementptr inbounds i32, i32* %595, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = load i64, i64* %24, align 8
  %600 = getelementptr inbounds i32, i32* %42, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = xor i32 %598, %601
  %603 = xor i32 %602, -1
  %604 = load i32*, i32** %17, align 8
  %605 = load i64, i64* %24, align 8
  %606 = getelementptr inbounds i32, i32* %604, i64 %605
  store i32 %603, i32* %606, align 4
  br label %607

607:                                              ; preds = %558, %552
  br label %608

608:                                              ; preds = %607
  %609 = load i64, i64* %24, align 8
  %610 = add i64 %609, 1
  store i64 %610, i64* %24, align 8
  br label %548

611:                                              ; preds = %548
  br label %875

612:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %613

613:                                              ; preds = %673, %612
  %614 = load i64, i64* %24, align 8
  %615 = load i64, i64* %11, align 8
  %616 = icmp ult i64 %614, %615
  br i1 %616, label %617, label %676

617:                                              ; preds = %613
  %618 = load i32*, i32** %18, align 8
  %619 = load i64, i64* %24, align 8
  %620 = getelementptr inbounds i32, i32* %618, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %672

623:                                              ; preds = %617
  %624 = load i32*, i32** %14, align 8
  %625 = load i64, i64* %24, align 8
  %626 = getelementptr inbounds i32, i32* %624, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = load i64, i64* %24, align 8
  %629 = getelementptr inbounds i32, i32* %33, i64 %628
  %630 = load i32, i32* %629, align 4
  %631 = xor i32 %630, -1
  %632 = and i32 %627, %631
  %633 = load i32*, i32** %14, align 8
  %634 = load i64, i64* %24, align 8
  %635 = getelementptr inbounds i32, i32* %633, i64 %634
  store i32 %632, i32* %635, align 4
  %636 = load i32*, i32** %15, align 8
  %637 = load i64, i64* %24, align 8
  %638 = getelementptr inbounds i32, i32* %636, i64 %637
  %639 = load i32, i32* %638, align 4
  %640 = load i64, i64* %24, align 8
  %641 = getelementptr inbounds i32, i32* %36, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = xor i32 %642, -1
  %644 = and i32 %639, %643
  %645 = load i32*, i32** %15, align 8
  %646 = load i64, i64* %24, align 8
  %647 = getelementptr inbounds i32, i32* %645, i64 %646
  store i32 %644, i32* %647, align 4
  %648 = load i32*, i32** %16, align 8
  %649 = load i64, i64* %24, align 8
  %650 = getelementptr inbounds i32, i32* %648, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = load i64, i64* %24, align 8
  %653 = getelementptr inbounds i32, i32* %39, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = xor i32 %654, -1
  %656 = and i32 %651, %655
  %657 = load i32*, i32** %16, align 8
  %658 = load i64, i64* %24, align 8
  %659 = getelementptr inbounds i32, i32* %657, i64 %658
  store i32 %656, i32* %659, align 4
  %660 = load i32*, i32** %17, align 8
  %661 = load i64, i64* %24, align 8
  %662 = getelementptr inbounds i32, i32* %660, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = load i64, i64* %24, align 8
  %665 = getelementptr inbounds i32, i32* %42, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = xor i32 %666, -1
  %668 = and i32 %663, %667
  %669 = load i32*, i32** %17, align 8
  %670 = load i64, i64* %24, align 8
  %671 = getelementptr inbounds i32, i32* %669, i64 %670
  store i32 %668, i32* %671, align 4
  br label %672

672:                                              ; preds = %623, %617
  br label %673

673:                                              ; preds = %672
  %674 = load i64, i64* %24, align 8
  %675 = add i64 %674, 1
  store i64 %675, i64* %24, align 8
  br label %613

676:                                              ; preds = %613
  br label %875

677:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %678

678:                                              ; preds = %738, %677
  %679 = load i64, i64* %24, align 8
  %680 = load i64, i64* %11, align 8
  %681 = icmp ult i64 %679, %680
  br i1 %681, label %682, label %741

682:                                              ; preds = %678
  %683 = load i32*, i32** %18, align 8
  %684 = load i64, i64* %24, align 8
  %685 = getelementptr inbounds i32, i32* %683, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %737

688:                                              ; preds = %682
  %689 = load i32*, i32** %14, align 8
  %690 = load i64, i64* %24, align 8
  %691 = getelementptr inbounds i32, i32* %689, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = xor i32 %692, -1
  %694 = load i64, i64* %24, align 8
  %695 = getelementptr inbounds i32, i32* %33, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = and i32 %693, %696
  %698 = load i32*, i32** %14, align 8
  %699 = load i64, i64* %24, align 8
  %700 = getelementptr inbounds i32, i32* %698, i64 %699
  store i32 %697, i32* %700, align 4
  %701 = load i32*, i32** %15, align 8
  %702 = load i64, i64* %24, align 8
  %703 = getelementptr inbounds i32, i32* %701, i64 %702
  %704 = load i32, i32* %703, align 4
  %705 = xor i32 %704, -1
  %706 = load i64, i64* %24, align 8
  %707 = getelementptr inbounds i32, i32* %36, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = and i32 %705, %708
  %710 = load i32*, i32** %15, align 8
  %711 = load i64, i64* %24, align 8
  %712 = getelementptr inbounds i32, i32* %710, i64 %711
  store i32 %709, i32* %712, align 4
  %713 = load i32*, i32** %16, align 8
  %714 = load i64, i64* %24, align 8
  %715 = getelementptr inbounds i32, i32* %713, i64 %714
  %716 = load i32, i32* %715, align 4
  %717 = xor i32 %716, -1
  %718 = load i64, i64* %24, align 8
  %719 = getelementptr inbounds i32, i32* %39, i64 %718
  %720 = load i32, i32* %719, align 4
  %721 = and i32 %717, %720
  %722 = load i32*, i32** %16, align 8
  %723 = load i64, i64* %24, align 8
  %724 = getelementptr inbounds i32, i32* %722, i64 %723
  store i32 %721, i32* %724, align 4
  %725 = load i32*, i32** %17, align 8
  %726 = load i64, i64* %24, align 8
  %727 = getelementptr inbounds i32, i32* %725, i64 %726
  %728 = load i32, i32* %727, align 4
  %729 = xor i32 %728, -1
  %730 = load i64, i64* %24, align 8
  %731 = getelementptr inbounds i32, i32* %42, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = and i32 %729, %732
  %734 = load i32*, i32** %17, align 8
  %735 = load i64, i64* %24, align 8
  %736 = getelementptr inbounds i32, i32* %734, i64 %735
  store i32 %733, i32* %736, align 4
  br label %737

737:                                              ; preds = %688, %682
  br label %738

738:                                              ; preds = %737
  %739 = load i64, i64* %24, align 8
  %740 = add i64 %739, 1
  store i64 %740, i64* %24, align 8
  br label %678

741:                                              ; preds = %678
  br label %875

742:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %743

743:                                              ; preds = %803, %742
  %744 = load i64, i64* %24, align 8
  %745 = load i64, i64* %11, align 8
  %746 = icmp ult i64 %744, %745
  br i1 %746, label %747, label %806

747:                                              ; preds = %743
  %748 = load i32*, i32** %18, align 8
  %749 = load i64, i64* %24, align 8
  %750 = getelementptr inbounds i32, i32* %748, i64 %749
  %751 = load i32, i32* %750, align 4
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %802

753:                                              ; preds = %747
  %754 = load i32*, i32** %14, align 8
  %755 = load i64, i64* %24, align 8
  %756 = getelementptr inbounds i32, i32* %754, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = load i64, i64* %24, align 8
  %759 = getelementptr inbounds i32, i32* %33, i64 %758
  %760 = load i32, i32* %759, align 4
  %761 = xor i32 %760, -1
  %762 = or i32 %757, %761
  %763 = load i32*, i32** %14, align 8
  %764 = load i64, i64* %24, align 8
  %765 = getelementptr inbounds i32, i32* %763, i64 %764
  store i32 %762, i32* %765, align 4
  %766 = load i32*, i32** %15, align 8
  %767 = load i64, i64* %24, align 8
  %768 = getelementptr inbounds i32, i32* %766, i64 %767
  %769 = load i32, i32* %768, align 4
  %770 = load i64, i64* %24, align 8
  %771 = getelementptr inbounds i32, i32* %36, i64 %770
  %772 = load i32, i32* %771, align 4
  %773 = xor i32 %772, -1
  %774 = or i32 %769, %773
  %775 = load i32*, i32** %15, align 8
  %776 = load i64, i64* %24, align 8
  %777 = getelementptr inbounds i32, i32* %775, i64 %776
  store i32 %774, i32* %777, align 4
  %778 = load i32*, i32** %16, align 8
  %779 = load i64, i64* %24, align 8
  %780 = getelementptr inbounds i32, i32* %778, i64 %779
  %781 = load i32, i32* %780, align 4
  %782 = load i64, i64* %24, align 8
  %783 = getelementptr inbounds i32, i32* %39, i64 %782
  %784 = load i32, i32* %783, align 4
  %785 = xor i32 %784, -1
  %786 = or i32 %781, %785
  %787 = load i32*, i32** %16, align 8
  %788 = load i64, i64* %24, align 8
  %789 = getelementptr inbounds i32, i32* %787, i64 %788
  store i32 %786, i32* %789, align 4
  %790 = load i32*, i32** %17, align 8
  %791 = load i64, i64* %24, align 8
  %792 = getelementptr inbounds i32, i32* %790, i64 %791
  %793 = load i32, i32* %792, align 4
  %794 = load i64, i64* %24, align 8
  %795 = getelementptr inbounds i32, i32* %42, i64 %794
  %796 = load i32, i32* %795, align 4
  %797 = xor i32 %796, -1
  %798 = or i32 %793, %797
  %799 = load i32*, i32** %17, align 8
  %800 = load i64, i64* %24, align 8
  %801 = getelementptr inbounds i32, i32* %799, i64 %800
  store i32 %798, i32* %801, align 4
  br label %802

802:                                              ; preds = %753, %747
  br label %803

803:                                              ; preds = %802
  %804 = load i64, i64* %24, align 8
  %805 = add i64 %804, 1
  store i64 %805, i64* %24, align 8
  br label %743

806:                                              ; preds = %743
  br label %875

807:                                              ; preds = %9
  store i64 0, i64* %24, align 8
  br label %808

808:                                              ; preds = %868, %807
  %809 = load i64, i64* %24, align 8
  %810 = load i64, i64* %11, align 8
  %811 = icmp ult i64 %809, %810
  br i1 %811, label %812, label %871

812:                                              ; preds = %808
  %813 = load i32*, i32** %18, align 8
  %814 = load i64, i64* %24, align 8
  %815 = getelementptr inbounds i32, i32* %813, i64 %814
  %816 = load i32, i32* %815, align 4
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %867

818:                                              ; preds = %812
  %819 = load i32*, i32** %14, align 8
  %820 = load i64, i64* %24, align 8
  %821 = getelementptr inbounds i32, i32* %819, i64 %820
  %822 = load i32, i32* %821, align 4
  %823 = xor i32 %822, -1
  %824 = load i64, i64* %24, align 8
  %825 = getelementptr inbounds i32, i32* %33, i64 %824
  %826 = load i32, i32* %825, align 4
  %827 = or i32 %823, %826
  %828 = load i32*, i32** %14, align 8
  %829 = load i64, i64* %24, align 8
  %830 = getelementptr inbounds i32, i32* %828, i64 %829
  store i32 %827, i32* %830, align 4
  %831 = load i32*, i32** %15, align 8
  %832 = load i64, i64* %24, align 8
  %833 = getelementptr inbounds i32, i32* %831, i64 %832
  %834 = load i32, i32* %833, align 4
  %835 = xor i32 %834, -1
  %836 = load i64, i64* %24, align 8
  %837 = getelementptr inbounds i32, i32* %36, i64 %836
  %838 = load i32, i32* %837, align 4
  %839 = or i32 %835, %838
  %840 = load i32*, i32** %15, align 8
  %841 = load i64, i64* %24, align 8
  %842 = getelementptr inbounds i32, i32* %840, i64 %841
  store i32 %839, i32* %842, align 4
  %843 = load i32*, i32** %16, align 8
  %844 = load i64, i64* %24, align 8
  %845 = getelementptr inbounds i32, i32* %843, i64 %844
  %846 = load i32, i32* %845, align 4
  %847 = xor i32 %846, -1
  %848 = load i64, i64* %24, align 8
  %849 = getelementptr inbounds i32, i32* %39, i64 %848
  %850 = load i32, i32* %849, align 4
  %851 = or i32 %847, %850
  %852 = load i32*, i32** %16, align 8
  %853 = load i64, i64* %24, align 8
  %854 = getelementptr inbounds i32, i32* %852, i64 %853
  store i32 %851, i32* %854, align 4
  %855 = load i32*, i32** %17, align 8
  %856 = load i64, i64* %24, align 8
  %857 = getelementptr inbounds i32, i32* %855, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = xor i32 %858, -1
  %860 = load i64, i64* %24, align 8
  %861 = getelementptr inbounds i32, i32* %42, i64 %860
  %862 = load i32, i32* %861, align 4
  %863 = or i32 %859, %862
  %864 = load i32*, i32** %17, align 8
  %865 = load i64, i64* %24, align 8
  %866 = getelementptr inbounds i32, i32* %864, i64 %865
  store i32 %863, i32* %866, align 4
  br label %867

867:                                              ; preds = %818, %812
  br label %868

868:                                              ; preds = %867
  %869 = load i64, i64* %24, align 8
  %870 = add i64 %869, 1
  store i64 %870, i64* %24, align 8
  br label %808

871:                                              ; preds = %808
  br label %875

872:                                              ; preds = %9
  %873 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %874 = call i32 @gl_problem(%struct.TYPE_9__* %873, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %29, align 4
  br label %876

875:                                              ; preds = %871, %806, %741, %676, %611, %546, %497, %432, %383, %318, %269, %224, %183, %134, %133, %80
  store i32 0, i32* %29, align 4
  br label %876

876:                                              ; preds = %875, %872
  %877 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %877)
  %878 = load i32, i32* %29, align 4
  switch i32 %878, label %880 [
    i32 0, label %879
    i32 1, label %879
  ]

879:                                              ; preds = %876, %876
  ret void

880:                                              ; preds = %876
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_read_color_span(%struct.TYPE_9__*, i64, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_problem(%struct.TYPE_9__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
