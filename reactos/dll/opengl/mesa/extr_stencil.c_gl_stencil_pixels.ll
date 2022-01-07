; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_gl_stencil_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_gl_stencil_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@PB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Bad stencil func in gl_stencil_pixels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_stencil_pixels(%struct.TYPE_7__* %0, i64 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load i32, i32* @PB_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %418 [
    i32 129, label %33
    i32 130, label %58
    i32 131, label %116
    i32 132, label %174
    i32 133, label %232
    i32 134, label %290
    i32 128, label %348
    i32 135, label %406
  ]

33:                                               ; preds = %5
  store i64 0, i64* %16, align 8
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* %16, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %16, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds i32, i32* %28, i64 %48
  store i32 1, i32* %49, align 4
  br label %53

50:                                               ; preds = %38
  %51 = load i64, i64* %16, align 8
  %52 = getelementptr inbounds i32, i32* %28, i64 %51
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %16, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %16, align 8
  br label %34

57:                                               ; preds = %34
  store i32 1, i32* %17, align 4
  br label %421

58:                                               ; preds = %5
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %62, %66
  store i32 %67, i32* %14, align 4
  store i64 0, i64* %16, align 8
  br label %68

68:                                               ; preds = %112, %58
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %16, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* %16, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i64, i64* %16, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @STENCIL_ADDRESS(i32 %82, i32 %86)
  store i32* %87, i32** %18, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %89, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %78
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i32, i32* %28, i64 %99
  store i32 0, i32* %100, align 4
  br label %107

101:                                              ; preds = %78
  %102 = load i64, i64* %16, align 8
  %103 = getelementptr inbounds i32, i32* %28, i64 %102
  store i32 1, i32* %103, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load i64, i64* %16, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %98
  br label %111

108:                                              ; preds = %72
  %109 = load i64, i64* %16, align 8
  %110 = getelementptr inbounds i32, i32* %28, i64 %109
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %107
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %16, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %16, align 8
  br label %68

115:                                              ; preds = %68
  br label %421

116:                                              ; preds = %5
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %120, %124
  store i32 %125, i32* %14, align 4
  store i64 0, i64* %16, align 8
  br label %126

126:                                              ; preds = %170, %116
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %173

130:                                              ; preds = %126
  %131 = load i32*, i32** %11, align 8
  %132 = load i64, i64* %16, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %130
  %137 = load i32*, i32** %9, align 8
  %138 = load i64, i64* %16, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = load i64, i64* %16, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32* @STENCIL_ADDRESS(i32 %140, i32 %144)
  store i32* %145, i32** %19, align 8
  %146 = load i32*, i32** %19, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %147, %151
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp sle i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %136
  %157 = load i64, i64* %16, align 8
  %158 = getelementptr inbounds i32, i32* %28, i64 %157
  store i32 0, i32* %158, align 4
  br label %165

159:                                              ; preds = %136
  %160 = load i64, i64* %16, align 8
  %161 = getelementptr inbounds i32, i32* %28, i64 %160
  store i32 1, i32* %161, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = load i64, i64* %16, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %159, %156
  br label %169

166:                                              ; preds = %130
  %167 = load i64, i64* %16, align 8
  %168 = getelementptr inbounds i32, i32* %28, i64 %167
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %165
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %16, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %16, align 8
  br label %126

173:                                              ; preds = %126
  br label %421

174:                                              ; preds = %5
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %178, %182
  store i32 %183, i32* %14, align 4
  store i64 0, i64* %16, align 8
  br label %184

184:                                              ; preds = %228, %174
  %185 = load i64, i64* %16, align 8
  %186 = load i64, i64* %8, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %231

188:                                              ; preds = %184
  %189 = load i32*, i32** %11, align 8
  %190 = load i64, i64* %16, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %188
  %195 = load i32*, i32** %9, align 8
  %196 = load i64, i64* %16, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %10, align 8
  %200 = load i64, i64* %16, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32* @STENCIL_ADDRESS(i32 %198, i32 %202)
  store i32* %203, i32** %20, align 8
  %204 = load i32*, i32** %20, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %205, %209
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %15, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %194
  %215 = load i64, i64* %16, align 8
  %216 = getelementptr inbounds i32, i32* %28, i64 %215
  store i32 0, i32* %216, align 4
  br label %223

217:                                              ; preds = %194
  %218 = load i64, i64* %16, align 8
  %219 = getelementptr inbounds i32, i32* %28, i64 %218
  store i32 1, i32* %219, align 4
  %220 = load i32*, i32** %11, align 8
  %221 = load i64, i64* %16, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 0, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %214
  br label %227

224:                                              ; preds = %188
  %225 = load i64, i64* %16, align 8
  %226 = getelementptr inbounds i32, i32* %28, i64 %225
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %224, %223
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %16, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %16, align 8
  br label %184

231:                                              ; preds = %184
  br label %421

232:                                              ; preds = %5
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %236, %240
  store i32 %241, i32* %14, align 4
  store i64 0, i64* %16, align 8
  br label %242

242:                                              ; preds = %286, %232
  %243 = load i64, i64* %16, align 8
  %244 = load i64, i64* %8, align 8
  %245 = icmp ult i64 %243, %244
  br i1 %245, label %246, label %289

246:                                              ; preds = %242
  %247 = load i32*, i32** %11, align 8
  %248 = load i64, i64* %16, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %282

252:                                              ; preds = %246
  %253 = load i32*, i32** %9, align 8
  %254 = load i64, i64* %16, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = load i64, i64* %16, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32* @STENCIL_ADDRESS(i32 %256, i32 %260)
  store i32* %261, i32** %21, align 8
  %262 = load i32*, i32** %21, align 8
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %263, %267
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* %15, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %252
  %273 = load i64, i64* %16, align 8
  %274 = getelementptr inbounds i32, i32* %28, i64 %273
  store i32 0, i32* %274, align 4
  br label %281

275:                                              ; preds = %252
  %276 = load i64, i64* %16, align 8
  %277 = getelementptr inbounds i32, i32* %28, i64 %276
  store i32 1, i32* %277, align 4
  %278 = load i32*, i32** %11, align 8
  %279 = load i64, i64* %16, align 8
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32 0, i32* %280, align 4
  br label %281

281:                                              ; preds = %275, %272
  br label %285

282:                                              ; preds = %246
  %283 = load i64, i64* %16, align 8
  %284 = getelementptr inbounds i32, i32* %28, i64 %283
  store i32 0, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %281
  br label %286

286:                                              ; preds = %285
  %287 = load i64, i64* %16, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %16, align 8
  br label %242

289:                                              ; preds = %242
  br label %421

290:                                              ; preds = %5
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %294, %298
  store i32 %299, i32* %14, align 4
  store i64 0, i64* %16, align 8
  br label %300

300:                                              ; preds = %344, %290
  %301 = load i64, i64* %16, align 8
  %302 = load i64, i64* %8, align 8
  %303 = icmp ult i64 %301, %302
  br i1 %303, label %304, label %347

304:                                              ; preds = %300
  %305 = load i32*, i32** %11, align 8
  %306 = load i64, i64* %16, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %340

310:                                              ; preds = %304
  %311 = load i32*, i32** %9, align 8
  %312 = load i64, i64* %16, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %10, align 8
  %316 = load i64, i64* %16, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32* @STENCIL_ADDRESS(i32 %314, i32 %318)
  store i32* %319, i32** %22, align 8
  %320 = load i32*, i32** %22, align 8
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = and i32 %321, %325
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* %14, align 4
  %328 = load i32, i32* %15, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %310
  %331 = load i64, i64* %16, align 8
  %332 = getelementptr inbounds i32, i32* %28, i64 %331
  store i32 0, i32* %332, align 4
  br label %339

333:                                              ; preds = %310
  %334 = load i64, i64* %16, align 8
  %335 = getelementptr inbounds i32, i32* %28, i64 %334
  store i32 1, i32* %335, align 4
  %336 = load i32*, i32** %11, align 8
  %337 = load i64, i64* %16, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32 0, i32* %338, align 4
  br label %339

339:                                              ; preds = %333, %330
  br label %343

340:                                              ; preds = %304
  %341 = load i64, i64* %16, align 8
  %342 = getelementptr inbounds i32, i32* %28, i64 %341
  store i32 0, i32* %342, align 4
  br label %343

343:                                              ; preds = %340, %339
  br label %344

344:                                              ; preds = %343
  %345 = load i64, i64* %16, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %16, align 8
  br label %300

347:                                              ; preds = %300
  br label %421

348:                                              ; preds = %5
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %352, %356
  store i32 %357, i32* %14, align 4
  store i64 0, i64* %16, align 8
  br label %358

358:                                              ; preds = %402, %348
  %359 = load i64, i64* %16, align 8
  %360 = load i64, i64* %8, align 8
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %362, label %405

362:                                              ; preds = %358
  %363 = load i32*, i32** %11, align 8
  %364 = load i64, i64* %16, align 8
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %398

368:                                              ; preds = %362
  %369 = load i32*, i32** %9, align 8
  %370 = load i64, i64* %16, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32*, i32** %10, align 8
  %374 = load i64, i64* %16, align 8
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = call i32* @STENCIL_ADDRESS(i32 %372, i32 %376)
  store i32* %377, i32** %23, align 8
  %378 = load i32*, i32** %23, align 8
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = and i32 %379, %383
  store i32 %384, i32* %15, align 4
  %385 = load i32, i32* %14, align 4
  %386 = load i32, i32* %15, align 4
  %387 = icmp ne i32 %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %368
  %389 = load i64, i64* %16, align 8
  %390 = getelementptr inbounds i32, i32* %28, i64 %389
  store i32 0, i32* %390, align 4
  br label %397

391:                                              ; preds = %368
  %392 = load i64, i64* %16, align 8
  %393 = getelementptr inbounds i32, i32* %28, i64 %392
  store i32 1, i32* %393, align 4
  %394 = load i32*, i32** %11, align 8
  %395 = load i64, i64* %16, align 8
  %396 = getelementptr inbounds i32, i32* %394, i64 %395
  store i32 0, i32* %396, align 4
  br label %397

397:                                              ; preds = %391, %388
  br label %401

398:                                              ; preds = %362
  %399 = load i64, i64* %16, align 8
  %400 = getelementptr inbounds i32, i32* %28, i64 %399
  store i32 0, i32* %400, align 4
  br label %401

401:                                              ; preds = %398, %397
  br label %402

402:                                              ; preds = %401
  %403 = load i64, i64* %16, align 8
  %404 = add i64 %403, 1
  store i64 %404, i64* %16, align 8
  br label %358

405:                                              ; preds = %358
  br label %421

406:                                              ; preds = %5
  store i64 0, i64* %16, align 8
  br label %407

407:                                              ; preds = %414, %406
  %408 = load i64, i64* %16, align 8
  %409 = load i64, i64* %8, align 8
  %410 = icmp ult i64 %408, %409
  br i1 %410, label %411, label %417

411:                                              ; preds = %407
  %412 = load i64, i64* %16, align 8
  %413 = getelementptr inbounds i32, i32* %28, i64 %412
  store i32 0, i32* %413, align 4
  br label %414

414:                                              ; preds = %411
  %415 = load i64, i64* %16, align 8
  %416 = add i64 %415, 1
  store i64 %416, i64* %16, align 8
  br label %407

417:                                              ; preds = %407
  br label %421

418:                                              ; preds = %5
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %420 = call i32 @gl_problem(%struct.TYPE_7__* %419, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %435

421:                                              ; preds = %417, %405, %347, %289, %231, %173, %115, %57
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %423 = load i64, i64* %8, align 8
  %424 = load i32*, i32** %9, align 8
  %425 = load i32*, i32** %10, align 8
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @apply_stencil_op_to_pixels(%struct.TYPE_7__* %422, i64 %423, i32* %424, i32* %425, i32 %429, i32* %28)
  %431 = load i32, i32* %17, align 4
  %432 = icmp ne i32 %431, 0
  %433 = zext i1 %432 to i64
  %434 = select i1 %432, i32 0, i32 1
  store i32 %434, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %435

435:                                              ; preds = %421, %418
  %436 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %436)
  %437 = load i32, i32* %6, align 4
  ret i32 %437
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @STENCIL_ADDRESS(i32, i32) #2

declare dso_local i32 @gl_problem(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @apply_stencil_op_to_pixels(%struct.TYPE_7__*, i64, i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
