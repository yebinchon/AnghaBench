; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_rgba_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_logic.c_gl_logicop_rgba_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* }

@PB_SIZE = common dso_local global i32 0, align 4
@ALPHABUF_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Bad function in gl_logicop_rgba_pixels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_logicop_rgba_pixels(%struct.TYPE_12__* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
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
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %30 = load i32, i32* @PB_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load i32, i32* @PB_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %21, align 8
  %37 = load i32, i32* @PB_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %22, align 8
  %40 = load i32, i32* @PB_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %23, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_12__*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_12__*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*)** %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 %46(%struct.TYPE_12__* %47, i64 %48, i32* %49, i32* %50, i32* %33, i32* %36, i32* %39, i32* %42, i32* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ALPHABUF_BIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %9
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = call i32 @gl_read_alpha_pixels(%struct.TYPE_12__* %60, i64 %61, i32* %62, i32* %63, i32* %42, i32* %64)
  br label %66

66:                                               ; preds = %59, %9
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %891 [
    i32 140, label %71
    i32 129, label %100
    i32 139, label %153
    i32 138, label %154
    i32 134, label %203
    i32 136, label %244
    i32 143, label %289
    i32 135, label %338
    i32 132, label %403
    i32 133, label %452
    i32 128, label %517
    i32 137, label %566
    i32 141, label %631
    i32 142, label %696
    i32 130, label %761
    i32 131, label %826
  ]

71:                                               ; preds = %66
  store i64 0, i64* %24, align 8
  br label %72

72:                                               ; preds = %96, %71
  %73 = load i64, i64* %24, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load i32*, i32** %18, align 8
  %78 = load i64, i64* %24, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load i32*, i32** %17, align 8
  %84 = load i64, i64* %24, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 0, i32* %85, align 4
  %86 = load i32*, i32** %16, align 8
  %87 = load i64, i64* %24, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = load i64, i64* %24, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = load i64, i64* %24, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %82, %76
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %24, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %24, align 8
  br label %72

99:                                               ; preds = %72
  br label %894

100:                                              ; preds = %66
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %25, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %26, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %27, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %28, align 4
  store i64 0, i64* %24, align 8
  br label %121

121:                                              ; preds = %149, %100
  %122 = load i64, i64* %24, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %121
  %126 = load i32*, i32** %18, align 8
  %127 = load i64, i64* %24, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %125
  %132 = load i32, i32* %25, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = load i64, i64* %24, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %26, align 4
  %137 = load i32*, i32** %15, align 8
  %138 = load i64, i64* %24, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* %27, align 4
  %141 = load i32*, i32** %16, align 8
  %142 = load i64, i64* %24, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* %28, align 4
  %145 = load i32*, i32** %17, align 8
  %146 = load i64, i64* %24, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %131, %125
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %24, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %24, align 8
  br label %121

152:                                              ; preds = %121
  br label %894

153:                                              ; preds = %66
  br label %894

154:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %155

155:                                              ; preds = %199, %154
  %156 = load i64, i64* %24, align 8
  %157 = load i64, i64* %11, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %202

159:                                              ; preds = %155
  %160 = load i32*, i32** %18, align 8
  %161 = load i64, i64* %24, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %198

165:                                              ; preds = %159
  %166 = load i32*, i32** %14, align 8
  %167 = load i64, i64* %24, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = xor i32 %169, -1
  %171 = load i32*, i32** %14, align 8
  %172 = load i64, i64* %24, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32 %170, i32* %173, align 4
  %174 = load i32*, i32** %15, align 8
  %175 = load i64, i64* %24, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = xor i32 %177, -1
  %179 = load i32*, i32** %15, align 8
  %180 = load i64, i64* %24, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 %178, i32* %181, align 4
  %182 = load i32*, i32** %16, align 8
  %183 = load i64, i64* %24, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = xor i32 %185, -1
  %187 = load i32*, i32** %16, align 8
  %188 = load i64, i64* %24, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 %186, i32* %189, align 4
  %190 = load i32*, i32** %17, align 8
  %191 = load i64, i64* %24, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = xor i32 %193, -1
  %195 = load i32*, i32** %17, align 8
  %196 = load i64, i64* %24, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32 %194, i32* %197, align 4
  br label %198

198:                                              ; preds = %165, %159
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %24, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %24, align 8
  br label %155

202:                                              ; preds = %155
  br label %894

203:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %204

204:                                              ; preds = %240, %203
  %205 = load i64, i64* %24, align 8
  %206 = load i64, i64* %11, align 8
  %207 = icmp ult i64 %205, %206
  br i1 %207, label %208, label %243

208:                                              ; preds = %204
  %209 = load i32*, i32** %18, align 8
  %210 = load i64, i64* %24, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %208
  %215 = load i64, i64* %24, align 8
  %216 = getelementptr inbounds i32, i32* %33, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = load i64, i64* %24, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32 %217, i32* %220, align 4
  %221 = load i64, i64* %24, align 8
  %222 = getelementptr inbounds i32, i32* %36, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %15, align 8
  %225 = load i64, i64* %24, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 %223, i32* %226, align 4
  %227 = load i64, i64* %24, align 8
  %228 = getelementptr inbounds i32, i32* %39, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %16, align 8
  %231 = load i64, i64* %24, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %229, i32* %232, align 4
  %233 = load i64, i64* %24, align 8
  %234 = getelementptr inbounds i32, i32* %42, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %17, align 8
  %237 = load i64, i64* %24, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32 %235, i32* %238, align 4
  br label %239

239:                                              ; preds = %214, %208
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %24, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %24, align 8
  br label %204

243:                                              ; preds = %204
  br label %894

244:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %245

245:                                              ; preds = %285, %244
  %246 = load i64, i64* %24, align 8
  %247 = load i64, i64* %11, align 8
  %248 = icmp ult i64 %246, %247
  br i1 %248, label %249, label %288

249:                                              ; preds = %245
  %250 = load i32*, i32** %18, align 8
  %251 = load i64, i64* %24, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %284

255:                                              ; preds = %249
  %256 = load i64, i64* %24, align 8
  %257 = getelementptr inbounds i32, i32* %33, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = xor i32 %258, -1
  %260 = load i32*, i32** %14, align 8
  %261 = load i64, i64* %24, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32 %259, i32* %262, align 4
  %263 = load i64, i64* %24, align 8
  %264 = getelementptr inbounds i32, i32* %36, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %265, -1
  %267 = load i32*, i32** %15, align 8
  %268 = load i64, i64* %24, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32 %266, i32* %269, align 4
  %270 = load i64, i64* %24, align 8
  %271 = getelementptr inbounds i32, i32* %39, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = xor i32 %272, -1
  %274 = load i32*, i32** %16, align 8
  %275 = load i64, i64* %24, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32 %273, i32* %276, align 4
  %277 = load i64, i64* %24, align 8
  %278 = getelementptr inbounds i32, i32* %42, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = xor i32 %279, -1
  %281 = load i32*, i32** %17, align 8
  %282 = load i64, i64* %24, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32 %280, i32* %283, align 4
  br label %284

284:                                              ; preds = %255, %249
  br label %285

285:                                              ; preds = %284
  %286 = load i64, i64* %24, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %24, align 8
  br label %245

288:                                              ; preds = %245
  br label %894

289:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %290

290:                                              ; preds = %334, %289
  %291 = load i64, i64* %24, align 8
  %292 = load i64, i64* %11, align 8
  %293 = icmp ult i64 %291, %292
  br i1 %293, label %294, label %337

294:                                              ; preds = %290
  %295 = load i32*, i32** %18, align 8
  %296 = load i64, i64* %24, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %333

300:                                              ; preds = %294
  %301 = load i64, i64* %24, align 8
  %302 = getelementptr inbounds i32, i32* %33, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %14, align 8
  %305 = load i64, i64* %24, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = and i32 %307, %303
  store i32 %308, i32* %306, align 4
  %309 = load i64, i64* %24, align 8
  %310 = getelementptr inbounds i32, i32* %36, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32*, i32** %15, align 8
  %313 = load i64, i64* %24, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, %311
  store i32 %316, i32* %314, align 4
  %317 = load i64, i64* %24, align 8
  %318 = getelementptr inbounds i32, i32* %39, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %16, align 8
  %321 = load i64, i64* %24, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %323, %319
  store i32 %324, i32* %322, align 4
  %325 = load i64, i64* %24, align 8
  %326 = getelementptr inbounds i32, i32* %42, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32*, i32** %17, align 8
  %329 = load i64, i64* %24, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, %327
  store i32 %332, i32* %330, align 4
  br label %333

333:                                              ; preds = %300, %294
  br label %334

334:                                              ; preds = %333
  %335 = load i64, i64* %24, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %24, align 8
  br label %290

337:                                              ; preds = %290
  br label %894

338:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %339

339:                                              ; preds = %399, %338
  %340 = load i64, i64* %24, align 8
  %341 = load i64, i64* %11, align 8
  %342 = icmp ult i64 %340, %341
  br i1 %342, label %343, label %402

343:                                              ; preds = %339
  %344 = load i32*, i32** %18, align 8
  %345 = load i64, i64* %24, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %398

349:                                              ; preds = %343
  %350 = load i32*, i32** %14, align 8
  %351 = load i64, i64* %24, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i64, i64* %24, align 8
  %355 = getelementptr inbounds i32, i32* %33, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %353, %356
  %358 = xor i32 %357, -1
  %359 = load i32*, i32** %14, align 8
  %360 = load i64, i64* %24, align 8
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  store i32 %358, i32* %361, align 4
  %362 = load i32*, i32** %15, align 8
  %363 = load i64, i64* %24, align 8
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i64, i64* %24, align 8
  %367 = getelementptr inbounds i32, i32* %36, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %365, %368
  %370 = xor i32 %369, -1
  %371 = load i32*, i32** %15, align 8
  %372 = load i64, i64* %24, align 8
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32 %370, i32* %373, align 4
  %374 = load i32*, i32** %16, align 8
  %375 = load i64, i64* %24, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i64, i64* %24, align 8
  %379 = getelementptr inbounds i32, i32* %39, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %377, %380
  %382 = xor i32 %381, -1
  %383 = load i32*, i32** %16, align 8
  %384 = load i64, i64* %24, align 8
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  store i32 %382, i32* %385, align 4
  %386 = load i32*, i32** %17, align 8
  %387 = load i64, i64* %24, align 8
  %388 = getelementptr inbounds i32, i32* %386, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i64, i64* %24, align 8
  %391 = getelementptr inbounds i32, i32* %42, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = and i32 %389, %392
  %394 = xor i32 %393, -1
  %395 = load i32*, i32** %17, align 8
  %396 = load i64, i64* %24, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  store i32 %394, i32* %397, align 4
  br label %398

398:                                              ; preds = %349, %343
  br label %399

399:                                              ; preds = %398
  %400 = load i64, i64* %24, align 8
  %401 = add i64 %400, 1
  store i64 %401, i64* %24, align 8
  br label %339

402:                                              ; preds = %339
  br label %894

403:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %404

404:                                              ; preds = %448, %403
  %405 = load i64, i64* %24, align 8
  %406 = load i64, i64* %11, align 8
  %407 = icmp ult i64 %405, %406
  br i1 %407, label %408, label %451

408:                                              ; preds = %404
  %409 = load i32*, i32** %18, align 8
  %410 = load i64, i64* %24, align 8
  %411 = getelementptr inbounds i32, i32* %409, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %447

414:                                              ; preds = %408
  %415 = load i64, i64* %24, align 8
  %416 = getelementptr inbounds i32, i32* %33, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32*, i32** %14, align 8
  %419 = load i64, i64* %24, align 8
  %420 = getelementptr inbounds i32, i32* %418, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = or i32 %421, %417
  store i32 %422, i32* %420, align 4
  %423 = load i64, i64* %24, align 8
  %424 = getelementptr inbounds i32, i32* %36, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** %15, align 8
  %427 = load i64, i64* %24, align 8
  %428 = getelementptr inbounds i32, i32* %426, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = or i32 %429, %425
  store i32 %430, i32* %428, align 4
  %431 = load i64, i64* %24, align 8
  %432 = getelementptr inbounds i32, i32* %39, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %16, align 8
  %435 = load i64, i64* %24, align 8
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = or i32 %437, %433
  store i32 %438, i32* %436, align 4
  %439 = load i64, i64* %24, align 8
  %440 = getelementptr inbounds i32, i32* %42, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load i32*, i32** %17, align 8
  %443 = load i64, i64* %24, align 8
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = or i32 %445, %441
  store i32 %446, i32* %444, align 4
  br label %447

447:                                              ; preds = %414, %408
  br label %448

448:                                              ; preds = %447
  %449 = load i64, i64* %24, align 8
  %450 = add i64 %449, 1
  store i64 %450, i64* %24, align 8
  br label %404

451:                                              ; preds = %404
  br label %894

452:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %453

453:                                              ; preds = %513, %452
  %454 = load i64, i64* %24, align 8
  %455 = load i64, i64* %11, align 8
  %456 = icmp ult i64 %454, %455
  br i1 %456, label %457, label %516

457:                                              ; preds = %453
  %458 = load i32*, i32** %18, align 8
  %459 = load i64, i64* %24, align 8
  %460 = getelementptr inbounds i32, i32* %458, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %512

463:                                              ; preds = %457
  %464 = load i32*, i32** %14, align 8
  %465 = load i64, i64* %24, align 8
  %466 = getelementptr inbounds i32, i32* %464, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = load i64, i64* %24, align 8
  %469 = getelementptr inbounds i32, i32* %33, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = or i32 %467, %470
  %472 = xor i32 %471, -1
  %473 = load i32*, i32** %14, align 8
  %474 = load i64, i64* %24, align 8
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  store i32 %472, i32* %475, align 4
  %476 = load i32*, i32** %15, align 8
  %477 = load i64, i64* %24, align 8
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load i64, i64* %24, align 8
  %481 = getelementptr inbounds i32, i32* %36, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = or i32 %479, %482
  %484 = xor i32 %483, -1
  %485 = load i32*, i32** %15, align 8
  %486 = load i64, i64* %24, align 8
  %487 = getelementptr inbounds i32, i32* %485, i64 %486
  store i32 %484, i32* %487, align 4
  %488 = load i32*, i32** %16, align 8
  %489 = load i64, i64* %24, align 8
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = load i64, i64* %24, align 8
  %493 = getelementptr inbounds i32, i32* %39, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = or i32 %491, %494
  %496 = xor i32 %495, -1
  %497 = load i32*, i32** %16, align 8
  %498 = load i64, i64* %24, align 8
  %499 = getelementptr inbounds i32, i32* %497, i64 %498
  store i32 %496, i32* %499, align 4
  %500 = load i32*, i32** %17, align 8
  %501 = load i64, i64* %24, align 8
  %502 = getelementptr inbounds i32, i32* %500, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = load i64, i64* %24, align 8
  %505 = getelementptr inbounds i32, i32* %42, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = or i32 %503, %506
  %508 = xor i32 %507, -1
  %509 = load i32*, i32** %17, align 8
  %510 = load i64, i64* %24, align 8
  %511 = getelementptr inbounds i32, i32* %509, i64 %510
  store i32 %508, i32* %511, align 4
  br label %512

512:                                              ; preds = %463, %457
  br label %513

513:                                              ; preds = %512
  %514 = load i64, i64* %24, align 8
  %515 = add i64 %514, 1
  store i64 %515, i64* %24, align 8
  br label %453

516:                                              ; preds = %453
  br label %894

517:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %518

518:                                              ; preds = %562, %517
  %519 = load i64, i64* %24, align 8
  %520 = load i64, i64* %11, align 8
  %521 = icmp ult i64 %519, %520
  br i1 %521, label %522, label %565

522:                                              ; preds = %518
  %523 = load i32*, i32** %18, align 8
  %524 = load i64, i64* %24, align 8
  %525 = getelementptr inbounds i32, i32* %523, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %561

528:                                              ; preds = %522
  %529 = load i64, i64* %24, align 8
  %530 = getelementptr inbounds i32, i32* %33, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = load i32*, i32** %14, align 8
  %533 = load i64, i64* %24, align 8
  %534 = getelementptr inbounds i32, i32* %532, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = xor i32 %535, %531
  store i32 %536, i32* %534, align 4
  %537 = load i64, i64* %24, align 8
  %538 = getelementptr inbounds i32, i32* %36, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = load i32*, i32** %15, align 8
  %541 = load i64, i64* %24, align 8
  %542 = getelementptr inbounds i32, i32* %540, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = xor i32 %543, %539
  store i32 %544, i32* %542, align 4
  %545 = load i64, i64* %24, align 8
  %546 = getelementptr inbounds i32, i32* %39, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = load i32*, i32** %16, align 8
  %549 = load i64, i64* %24, align 8
  %550 = getelementptr inbounds i32, i32* %548, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = xor i32 %551, %547
  store i32 %552, i32* %550, align 4
  %553 = load i64, i64* %24, align 8
  %554 = getelementptr inbounds i32, i32* %42, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = load i32*, i32** %17, align 8
  %557 = load i64, i64* %24, align 8
  %558 = getelementptr inbounds i32, i32* %556, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = xor i32 %559, %555
  store i32 %560, i32* %558, align 4
  br label %561

561:                                              ; preds = %528, %522
  br label %562

562:                                              ; preds = %561
  %563 = load i64, i64* %24, align 8
  %564 = add i64 %563, 1
  store i64 %564, i64* %24, align 8
  br label %518

565:                                              ; preds = %518
  br label %894

566:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %567

567:                                              ; preds = %627, %566
  %568 = load i64, i64* %24, align 8
  %569 = load i64, i64* %11, align 8
  %570 = icmp ult i64 %568, %569
  br i1 %570, label %571, label %630

571:                                              ; preds = %567
  %572 = load i32*, i32** %18, align 8
  %573 = load i64, i64* %24, align 8
  %574 = getelementptr inbounds i32, i32* %572, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %626

577:                                              ; preds = %571
  %578 = load i32*, i32** %14, align 8
  %579 = load i64, i64* %24, align 8
  %580 = getelementptr inbounds i32, i32* %578, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = load i64, i64* %24, align 8
  %583 = getelementptr inbounds i32, i32* %33, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = xor i32 %581, %584
  %586 = xor i32 %585, -1
  %587 = load i32*, i32** %14, align 8
  %588 = load i64, i64* %24, align 8
  %589 = getelementptr inbounds i32, i32* %587, i64 %588
  store i32 %586, i32* %589, align 4
  %590 = load i32*, i32** %15, align 8
  %591 = load i64, i64* %24, align 8
  %592 = getelementptr inbounds i32, i32* %590, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = load i64, i64* %24, align 8
  %595 = getelementptr inbounds i32, i32* %36, i64 %594
  %596 = load i32, i32* %595, align 4
  %597 = xor i32 %593, %596
  %598 = xor i32 %597, -1
  %599 = load i32*, i32** %15, align 8
  %600 = load i64, i64* %24, align 8
  %601 = getelementptr inbounds i32, i32* %599, i64 %600
  store i32 %598, i32* %601, align 4
  %602 = load i32*, i32** %16, align 8
  %603 = load i64, i64* %24, align 8
  %604 = getelementptr inbounds i32, i32* %602, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = load i64, i64* %24, align 8
  %607 = getelementptr inbounds i32, i32* %39, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = xor i32 %605, %608
  %610 = xor i32 %609, -1
  %611 = load i32*, i32** %16, align 8
  %612 = load i64, i64* %24, align 8
  %613 = getelementptr inbounds i32, i32* %611, i64 %612
  store i32 %610, i32* %613, align 4
  %614 = load i32*, i32** %17, align 8
  %615 = load i64, i64* %24, align 8
  %616 = getelementptr inbounds i32, i32* %614, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = load i64, i64* %24, align 8
  %619 = getelementptr inbounds i32, i32* %42, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = xor i32 %617, %620
  %622 = xor i32 %621, -1
  %623 = load i32*, i32** %17, align 8
  %624 = load i64, i64* %24, align 8
  %625 = getelementptr inbounds i32, i32* %623, i64 %624
  store i32 %622, i32* %625, align 4
  br label %626

626:                                              ; preds = %577, %571
  br label %627

627:                                              ; preds = %626
  %628 = load i64, i64* %24, align 8
  %629 = add i64 %628, 1
  store i64 %629, i64* %24, align 8
  br label %567

630:                                              ; preds = %567
  br label %894

631:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %632

632:                                              ; preds = %692, %631
  %633 = load i64, i64* %24, align 8
  %634 = load i64, i64* %11, align 8
  %635 = icmp ult i64 %633, %634
  br i1 %635, label %636, label %695

636:                                              ; preds = %632
  %637 = load i32*, i32** %18, align 8
  %638 = load i64, i64* %24, align 8
  %639 = getelementptr inbounds i32, i32* %637, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %691

642:                                              ; preds = %636
  %643 = load i32*, i32** %14, align 8
  %644 = load i64, i64* %24, align 8
  %645 = getelementptr inbounds i32, i32* %643, i64 %644
  %646 = load i32, i32* %645, align 4
  %647 = load i64, i64* %24, align 8
  %648 = getelementptr inbounds i32, i32* %33, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = xor i32 %649, -1
  %651 = and i32 %646, %650
  %652 = load i32*, i32** %14, align 8
  %653 = load i64, i64* %24, align 8
  %654 = getelementptr inbounds i32, i32* %652, i64 %653
  store i32 %651, i32* %654, align 4
  %655 = load i32*, i32** %15, align 8
  %656 = load i64, i64* %24, align 8
  %657 = getelementptr inbounds i32, i32* %655, i64 %656
  %658 = load i32, i32* %657, align 4
  %659 = load i64, i64* %24, align 8
  %660 = getelementptr inbounds i32, i32* %36, i64 %659
  %661 = load i32, i32* %660, align 4
  %662 = xor i32 %661, -1
  %663 = and i32 %658, %662
  %664 = load i32*, i32** %15, align 8
  %665 = load i64, i64* %24, align 8
  %666 = getelementptr inbounds i32, i32* %664, i64 %665
  store i32 %663, i32* %666, align 4
  %667 = load i32*, i32** %16, align 8
  %668 = load i64, i64* %24, align 8
  %669 = getelementptr inbounds i32, i32* %667, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = load i64, i64* %24, align 8
  %672 = getelementptr inbounds i32, i32* %39, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = xor i32 %673, -1
  %675 = and i32 %670, %674
  %676 = load i32*, i32** %16, align 8
  %677 = load i64, i64* %24, align 8
  %678 = getelementptr inbounds i32, i32* %676, i64 %677
  store i32 %675, i32* %678, align 4
  %679 = load i32*, i32** %17, align 8
  %680 = load i64, i64* %24, align 8
  %681 = getelementptr inbounds i32, i32* %679, i64 %680
  %682 = load i32, i32* %681, align 4
  %683 = load i64, i64* %24, align 8
  %684 = getelementptr inbounds i32, i32* %42, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = xor i32 %685, -1
  %687 = and i32 %682, %686
  %688 = load i32*, i32** %17, align 8
  %689 = load i64, i64* %24, align 8
  %690 = getelementptr inbounds i32, i32* %688, i64 %689
  store i32 %687, i32* %690, align 4
  br label %691

691:                                              ; preds = %642, %636
  br label %692

692:                                              ; preds = %691
  %693 = load i64, i64* %24, align 8
  %694 = add i64 %693, 1
  store i64 %694, i64* %24, align 8
  br label %632

695:                                              ; preds = %632
  br label %894

696:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %697

697:                                              ; preds = %757, %696
  %698 = load i64, i64* %24, align 8
  %699 = load i64, i64* %11, align 8
  %700 = icmp ult i64 %698, %699
  br i1 %700, label %701, label %760

701:                                              ; preds = %697
  %702 = load i32*, i32** %18, align 8
  %703 = load i64, i64* %24, align 8
  %704 = getelementptr inbounds i32, i32* %702, i64 %703
  %705 = load i32, i32* %704, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %756

707:                                              ; preds = %701
  %708 = load i32*, i32** %14, align 8
  %709 = load i64, i64* %24, align 8
  %710 = getelementptr inbounds i32, i32* %708, i64 %709
  %711 = load i32, i32* %710, align 4
  %712 = xor i32 %711, -1
  %713 = load i64, i64* %24, align 8
  %714 = getelementptr inbounds i32, i32* %33, i64 %713
  %715 = load i32, i32* %714, align 4
  %716 = and i32 %712, %715
  %717 = load i32*, i32** %14, align 8
  %718 = load i64, i64* %24, align 8
  %719 = getelementptr inbounds i32, i32* %717, i64 %718
  store i32 %716, i32* %719, align 4
  %720 = load i32*, i32** %15, align 8
  %721 = load i64, i64* %24, align 8
  %722 = getelementptr inbounds i32, i32* %720, i64 %721
  %723 = load i32, i32* %722, align 4
  %724 = xor i32 %723, -1
  %725 = load i64, i64* %24, align 8
  %726 = getelementptr inbounds i32, i32* %36, i64 %725
  %727 = load i32, i32* %726, align 4
  %728 = and i32 %724, %727
  %729 = load i32*, i32** %15, align 8
  %730 = load i64, i64* %24, align 8
  %731 = getelementptr inbounds i32, i32* %729, i64 %730
  store i32 %728, i32* %731, align 4
  %732 = load i32*, i32** %16, align 8
  %733 = load i64, i64* %24, align 8
  %734 = getelementptr inbounds i32, i32* %732, i64 %733
  %735 = load i32, i32* %734, align 4
  %736 = xor i32 %735, -1
  %737 = load i64, i64* %24, align 8
  %738 = getelementptr inbounds i32, i32* %39, i64 %737
  %739 = load i32, i32* %738, align 4
  %740 = and i32 %736, %739
  %741 = load i32*, i32** %16, align 8
  %742 = load i64, i64* %24, align 8
  %743 = getelementptr inbounds i32, i32* %741, i64 %742
  store i32 %740, i32* %743, align 4
  %744 = load i32*, i32** %17, align 8
  %745 = load i64, i64* %24, align 8
  %746 = getelementptr inbounds i32, i32* %744, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = xor i32 %747, -1
  %749 = load i64, i64* %24, align 8
  %750 = getelementptr inbounds i32, i32* %42, i64 %749
  %751 = load i32, i32* %750, align 4
  %752 = and i32 %748, %751
  %753 = load i32*, i32** %17, align 8
  %754 = load i64, i64* %24, align 8
  %755 = getelementptr inbounds i32, i32* %753, i64 %754
  store i32 %752, i32* %755, align 4
  br label %756

756:                                              ; preds = %707, %701
  br label %757

757:                                              ; preds = %756
  %758 = load i64, i64* %24, align 8
  %759 = add i64 %758, 1
  store i64 %759, i64* %24, align 8
  br label %697

760:                                              ; preds = %697
  br label %894

761:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %762

762:                                              ; preds = %822, %761
  %763 = load i64, i64* %24, align 8
  %764 = load i64, i64* %11, align 8
  %765 = icmp ult i64 %763, %764
  br i1 %765, label %766, label %825

766:                                              ; preds = %762
  %767 = load i32*, i32** %18, align 8
  %768 = load i64, i64* %24, align 8
  %769 = getelementptr inbounds i32, i32* %767, i64 %768
  %770 = load i32, i32* %769, align 4
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %821

772:                                              ; preds = %766
  %773 = load i32*, i32** %14, align 8
  %774 = load i64, i64* %24, align 8
  %775 = getelementptr inbounds i32, i32* %773, i64 %774
  %776 = load i32, i32* %775, align 4
  %777 = load i64, i64* %24, align 8
  %778 = getelementptr inbounds i32, i32* %33, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = xor i32 %779, -1
  %781 = or i32 %776, %780
  %782 = load i32*, i32** %14, align 8
  %783 = load i64, i64* %24, align 8
  %784 = getelementptr inbounds i32, i32* %782, i64 %783
  store i32 %781, i32* %784, align 4
  %785 = load i32*, i32** %15, align 8
  %786 = load i64, i64* %24, align 8
  %787 = getelementptr inbounds i32, i32* %785, i64 %786
  %788 = load i32, i32* %787, align 4
  %789 = load i64, i64* %24, align 8
  %790 = getelementptr inbounds i32, i32* %36, i64 %789
  %791 = load i32, i32* %790, align 4
  %792 = xor i32 %791, -1
  %793 = or i32 %788, %792
  %794 = load i32*, i32** %15, align 8
  %795 = load i64, i64* %24, align 8
  %796 = getelementptr inbounds i32, i32* %794, i64 %795
  store i32 %793, i32* %796, align 4
  %797 = load i32*, i32** %16, align 8
  %798 = load i64, i64* %24, align 8
  %799 = getelementptr inbounds i32, i32* %797, i64 %798
  %800 = load i32, i32* %799, align 4
  %801 = load i64, i64* %24, align 8
  %802 = getelementptr inbounds i32, i32* %39, i64 %801
  %803 = load i32, i32* %802, align 4
  %804 = xor i32 %803, -1
  %805 = or i32 %800, %804
  %806 = load i32*, i32** %16, align 8
  %807 = load i64, i64* %24, align 8
  %808 = getelementptr inbounds i32, i32* %806, i64 %807
  store i32 %805, i32* %808, align 4
  %809 = load i32*, i32** %17, align 8
  %810 = load i64, i64* %24, align 8
  %811 = getelementptr inbounds i32, i32* %809, i64 %810
  %812 = load i32, i32* %811, align 4
  %813 = load i64, i64* %24, align 8
  %814 = getelementptr inbounds i32, i32* %42, i64 %813
  %815 = load i32, i32* %814, align 4
  %816 = xor i32 %815, -1
  %817 = or i32 %812, %816
  %818 = load i32*, i32** %17, align 8
  %819 = load i64, i64* %24, align 8
  %820 = getelementptr inbounds i32, i32* %818, i64 %819
  store i32 %817, i32* %820, align 4
  br label %821

821:                                              ; preds = %772, %766
  br label %822

822:                                              ; preds = %821
  %823 = load i64, i64* %24, align 8
  %824 = add i64 %823, 1
  store i64 %824, i64* %24, align 8
  br label %762

825:                                              ; preds = %762
  br label %894

826:                                              ; preds = %66
  store i64 0, i64* %24, align 8
  br label %827

827:                                              ; preds = %887, %826
  %828 = load i64, i64* %24, align 8
  %829 = load i64, i64* %11, align 8
  %830 = icmp ult i64 %828, %829
  br i1 %830, label %831, label %890

831:                                              ; preds = %827
  %832 = load i32*, i32** %18, align 8
  %833 = load i64, i64* %24, align 8
  %834 = getelementptr inbounds i32, i32* %832, i64 %833
  %835 = load i32, i32* %834, align 4
  %836 = icmp ne i32 %835, 0
  br i1 %836, label %837, label %886

837:                                              ; preds = %831
  %838 = load i32*, i32** %14, align 8
  %839 = load i64, i64* %24, align 8
  %840 = getelementptr inbounds i32, i32* %838, i64 %839
  %841 = load i32, i32* %840, align 4
  %842 = xor i32 %841, -1
  %843 = load i64, i64* %24, align 8
  %844 = getelementptr inbounds i32, i32* %33, i64 %843
  %845 = load i32, i32* %844, align 4
  %846 = or i32 %842, %845
  %847 = load i32*, i32** %14, align 8
  %848 = load i64, i64* %24, align 8
  %849 = getelementptr inbounds i32, i32* %847, i64 %848
  store i32 %846, i32* %849, align 4
  %850 = load i32*, i32** %15, align 8
  %851 = load i64, i64* %24, align 8
  %852 = getelementptr inbounds i32, i32* %850, i64 %851
  %853 = load i32, i32* %852, align 4
  %854 = xor i32 %853, -1
  %855 = load i64, i64* %24, align 8
  %856 = getelementptr inbounds i32, i32* %36, i64 %855
  %857 = load i32, i32* %856, align 4
  %858 = or i32 %854, %857
  %859 = load i32*, i32** %15, align 8
  %860 = load i64, i64* %24, align 8
  %861 = getelementptr inbounds i32, i32* %859, i64 %860
  store i32 %858, i32* %861, align 4
  %862 = load i32*, i32** %16, align 8
  %863 = load i64, i64* %24, align 8
  %864 = getelementptr inbounds i32, i32* %862, i64 %863
  %865 = load i32, i32* %864, align 4
  %866 = xor i32 %865, -1
  %867 = load i64, i64* %24, align 8
  %868 = getelementptr inbounds i32, i32* %39, i64 %867
  %869 = load i32, i32* %868, align 4
  %870 = or i32 %866, %869
  %871 = load i32*, i32** %16, align 8
  %872 = load i64, i64* %24, align 8
  %873 = getelementptr inbounds i32, i32* %871, i64 %872
  store i32 %870, i32* %873, align 4
  %874 = load i32*, i32** %17, align 8
  %875 = load i64, i64* %24, align 8
  %876 = getelementptr inbounds i32, i32* %874, i64 %875
  %877 = load i32, i32* %876, align 4
  %878 = xor i32 %877, -1
  %879 = load i64, i64* %24, align 8
  %880 = getelementptr inbounds i32, i32* %42, i64 %879
  %881 = load i32, i32* %880, align 4
  %882 = or i32 %878, %881
  %883 = load i32*, i32** %17, align 8
  %884 = load i64, i64* %24, align 8
  %885 = getelementptr inbounds i32, i32* %883, i64 %884
  store i32 %882, i32* %885, align 4
  br label %886

886:                                              ; preds = %837, %831
  br label %887

887:                                              ; preds = %886
  %888 = load i64, i64* %24, align 8
  %889 = add i64 %888, 1
  store i64 %889, i64* %24, align 8
  br label %827

890:                                              ; preds = %827
  br label %894

891:                                              ; preds = %66
  %892 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %893 = call i32 @gl_problem(%struct.TYPE_12__* %892, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %29, align 4
  br label %895

894:                                              ; preds = %890, %825, %760, %695, %630, %565, %516, %451, %402, %337, %288, %243, %202, %153, %152, %99
  store i32 0, i32* %29, align 4
  br label %895

895:                                              ; preds = %894, %891
  %896 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %896)
  %897 = load i32, i32* %29, align 4
  switch i32 %897, label %899 [
    i32 0, label %898
    i32 1, label %898
  ]

898:                                              ; preds = %895, %895
  ret void

899:                                              ; preds = %895
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gl_read_alpha_pixels(%struct.TYPE_12__*, i64, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @gl_problem(%struct.TYPE_12__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
