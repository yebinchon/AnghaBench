; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_write_zoomed_color_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_pixel.c_gl_write_zoomed_color_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@GL_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_write_zoomed_color_span(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  %39 = load i32, i32* @MAX_WIDTH, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %29, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %30, align 8
  %43 = load i32, i32* @MAX_WIDTH, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %31, align 8
  %46 = load i32, i32* @MAX_WIDTH, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %32, align 8
  %49 = load i32, i32* @MAX_WIDTH, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %33, align 8
  %52 = load i32, i32* @MAX_WIDTH, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %34, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MAX_WIDTH, align 4
  %61 = call i32 @MIN2(i32 %59, i32 %60)
  store i32 %61, i32* %35, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %62, %66
  %68 = call i64 @ABSF(i32 %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %21, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %10
  store i32 1, i32* %36, align 4
  br label %319

73:                                               ; preds = %10
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sitofp i32 %77 to double
  %79 = fcmp olt double %78, 0.000000e+00
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %21, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %20, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %24, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %89, %93
  %95 = add nsw i32 %88, %94
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %98, %102
  %104 = add nsw i32 %96, %103
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %23, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %84
  store i32 1, i32* %36, align 4
  br label %319

109:                                              ; preds = %84
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %22, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* %23, align 4
  store i32 %114, i32* %37, align 4
  %115 = load i32, i32* %22, align 4
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %37, align 4
  store i32 %116, i32* %22, align 4
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %22, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %23, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 1, i32* %36, align 4
  br label %319

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %22, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %126, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %125
  %134 = load i32, i32* %23, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store i32 1, i32* %36, align 4
  br label %319

142:                                              ; preds = %133, %125
  store i32 0, i32* %28, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %28, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %21, align 4
  br label %151

151:                                              ; preds = %145, %142
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %35, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %35, align 4
  store i32 %156, i32* %21, align 4
  br label %162

157:                                              ; preds = %151
  %158 = load i32, i32* %21, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 1, i32* %36, align 4
  br label %319

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161, %155
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* @MAX_WIDTH, align 4
  %165 = icmp sle i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sitofp i32 %171 to float
  %173 = fcmp oeq float %172, -1.000000e+00
  br i1 %173, label %174, label %230

174:                                              ; preds = %162
  store i32 0, i32* %27, align 4
  br label %175

175:                                              ; preds = %226, %174
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* %21, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %229

179:                                              ; preds = %175
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %28, align 4
  %183 = add nsw i32 %181, %182
  %184 = sub nsw i32 %180, %183
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %26, align 4
  %186 = load i32*, i32** %16, align 8
  %187 = load i32, i32* %26, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %27, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %42, i64 %192
  store i32 %190, i32* %193, align 4
  %194 = load i32*, i32** %17, align 8
  %195 = load i32, i32* %26, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %27, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %45, i64 %200
  store i32 %198, i32* %201, align 4
  %202 = load i32*, i32** %18, align 8
  %203 = load i32, i32* %26, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %27, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %48, i64 %208
  store i32 %206, i32* %209, align 4
  %210 = load i32*, i32** %19, align 8
  %211 = load i32, i32* %26, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %27, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %51, i64 %216
  store i32 %214, i32* %217, align 4
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* %26, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %27, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %54, i64 %224
  store i32 %222, i32* %225, align 4
  br label %226

226:                                              ; preds = %179
  %227 = load i32, i32* %27, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %27, align 4
  br label %175

229:                                              ; preds = %175
  br label %300

230:                                              ; preds = %162
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sitofp i32 %234 to float
  %236 = fdiv float 1.000000e+00, %235
  %237 = fptosi float %236 to i32
  store i32 %237, i32* %38, align 4
  store i32 0, i32* %27, align 4
  br label %238

238:                                              ; preds = %296, %230
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* %21, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %299

242:                                              ; preds = %238
  %243 = load i32, i32* %27, align 4
  %244 = load i32, i32* %28, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* %38, align 4
  %247 = mul nsw i32 %245, %246
  store i32 %247, i32* %26, align 4
  %248 = load i32, i32* %26, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %242
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %26, align 4
  %253 = add nsw i32 %251, %252
  %254 = sub nsw i32 %253, 1
  store i32 %254, i32* %26, align 4
  br label %255

255:                                              ; preds = %250, %242
  %256 = load i32*, i32** %16, align 8
  %257 = load i32, i32* %26, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %27, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %42, i64 %262
  store i32 %260, i32* %263, align 4
  %264 = load i32*, i32** %17, align 8
  %265 = load i32, i32* %26, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %27, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %45, i64 %270
  store i32 %268, i32* %271, align 4
  %272 = load i32*, i32** %18, align 8
  %273 = load i32, i32* %26, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %27, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %48, i64 %278
  store i32 %276, i32* %279, align 4
  %280 = load i32*, i32** %19, align 8
  %281 = load i32, i32* %26, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %27, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %51, i64 %286
  store i32 %284, i32* %287, align 4
  %288 = load i32*, i32** %15, align 8
  %289 = load i32, i32* %26, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %27, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %54, i64 %294
  store i32 %292, i32* %295, align 4
  br label %296

296:                                              ; preds = %255
  %297 = load i32, i32* %27, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %27, align 4
  br label %238

299:                                              ; preds = %238
  br label %300

300:                                              ; preds = %299, %229
  %301 = load i32, i32* %22, align 4
  store i32 %301, i32* %25, align 4
  br label %302

302:                                              ; preds = %315, %300
  %303 = load i32, i32* %25, align 4
  %304 = load i32, i32* %23, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %318

306:                                              ; preds = %302
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %308 = load i32, i32* %21, align 4
  %309 = load i32, i32* %13, align 4
  %310 = load i32, i32* %28, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %25, align 4
  %313 = load i32, i32* @GL_BITMAP, align 4
  %314 = call i32 @gl_write_color_span(%struct.TYPE_8__* %307, i32 %308, i32 %311, i32 %312, i32* %54, i32* %42, i32* %45, i32* %48, i32* %51, i32 %313)
  br label %315

315:                                              ; preds = %306
  %316 = load i32, i32* %25, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %25, align 4
  br label %302

318:                                              ; preds = %302
  store i32 0, i32* %36, align 4
  br label %319

319:                                              ; preds = %318, %160, %141, %124, %108, %72
  %320 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %320)
  %321 = load i32, i32* %36, align 4
  switch i32 %321, label %323 [
    i32 0, label %322
    i32 1, label %322
  ]

322:                                              ; preds = %319, %319
  ret void

323:                                              ; preds = %319
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MIN2(i32, i32) #2

declare dso_local i64 @ABSF(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @gl_write_color_span(%struct.TYPE_8__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
