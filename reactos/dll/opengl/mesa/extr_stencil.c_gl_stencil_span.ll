; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_gl_stencil_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_stencil.c_gl_stencil_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Bad stencil func in gl_stencil_span\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_stencil_span(%struct.TYPE_7__* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @MAX_WIDTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32* @STENCIL_ADDRESS(i32 %24, i32 %25)
  store i32* %26, i32** %18, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %374 [
    i32 129, label %31
    i32 130, label %56
    i32 131, label %107
    i32 132, label %158
    i32 133, label %209
    i32 134, label %260
    i32 128, label %311
    i32 135, label %362
  ]

31:                                               ; preds = %5
  store i64 0, i64* %15, align 8
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i32, i32* %23, i64 %46
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds i32, i32* %23, i64 %49
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %15, align 8
  br label %32

55:                                               ; preds = %32
  store i32 1, i32* %14, align 4
  br label %377

56:                                               ; preds = %5
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %60, %64
  store i32 %65, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %66

66:                                               ; preds = %103, %56
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load i32*, i32** %18, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %80, %84
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i32, i32* %23, i64 %90
  store i32 0, i32* %91, align 4
  br label %98

92:                                               ; preds = %76
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds i32, i32* %23, i64 %93
  store i32 1, i32* %94, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %89
  br label %102

99:                                               ; preds = %70
  %100 = load i64, i64* %15, align 8
  %101 = getelementptr inbounds i32, i32* %23, i64 %100
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %98
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %15, align 8
  br label %66

106:                                              ; preds = %66
  br label %377

107:                                              ; preds = %5
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %111, %115
  store i32 %116, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %117

117:                                              ; preds = %154, %107
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %117
  %122 = load i32*, i32** %11, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %121
  %128 = load i32*, i32** %18, align 8
  %129 = load i64, i64* %15, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %131, %135
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %17, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load i64, i64* %15, align 8
  %142 = getelementptr inbounds i32, i32* %23, i64 %141
  store i32 0, i32* %142, align 4
  br label %149

143:                                              ; preds = %127
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds i32, i32* %23, i64 %144
  store i32 1, i32* %145, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %140
  br label %153

150:                                              ; preds = %121
  %151 = load i64, i64* %15, align 8
  %152 = getelementptr inbounds i32, i32* %23, i64 %151
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %149
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %15, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %15, align 8
  br label %117

157:                                              ; preds = %117
  br label %377

158:                                              ; preds = %5
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %162, %166
  store i32 %167, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %168

168:                                              ; preds = %205, %158
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* %8, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %208

172:                                              ; preds = %168
  %173 = load i32*, i32** %11, align 8
  %174 = load i64, i64* %15, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %172
  %179 = load i32*, i32** %18, align 8
  %180 = load i64, i64* %15, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %182, %186
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %178
  %192 = load i64, i64* %15, align 8
  %193 = getelementptr inbounds i32, i32* %23, i64 %192
  store i32 0, i32* %193, align 4
  br label %200

194:                                              ; preds = %178
  %195 = load i64, i64* %15, align 8
  %196 = getelementptr inbounds i32, i32* %23, i64 %195
  store i32 1, i32* %196, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = load i64, i64* %15, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 0, i32* %199, align 4
  br label %200

200:                                              ; preds = %194, %191
  br label %204

201:                                              ; preds = %172
  %202 = load i64, i64* %15, align 8
  %203 = getelementptr inbounds i32, i32* %23, i64 %202
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %200
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %15, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %15, align 8
  br label %168

208:                                              ; preds = %168
  br label %377

209:                                              ; preds = %5
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %213, %217
  store i32 %218, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %219

219:                                              ; preds = %256, %209
  %220 = load i64, i64* %15, align 8
  %221 = load i64, i64* %8, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %259

223:                                              ; preds = %219
  %224 = load i32*, i32** %11, align 8
  %225 = load i64, i64* %15, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %252

229:                                              ; preds = %223
  %230 = load i32*, i32** %18, align 8
  %231 = load i64, i64* %15, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %233, %237
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %17, align 4
  %241 = icmp sge i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %229
  %243 = load i64, i64* %15, align 8
  %244 = getelementptr inbounds i32, i32* %23, i64 %243
  store i32 0, i32* %244, align 4
  br label %251

245:                                              ; preds = %229
  %246 = load i64, i64* %15, align 8
  %247 = getelementptr inbounds i32, i32* %23, i64 %246
  store i32 1, i32* %247, align 4
  %248 = load i32*, i32** %11, align 8
  %249 = load i64, i64* %15, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 0, i32* %250, align 4
  br label %251

251:                                              ; preds = %245, %242
  br label %255

252:                                              ; preds = %223
  %253 = load i64, i64* %15, align 8
  %254 = getelementptr inbounds i32, i32* %23, i64 %253
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %251
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %15, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %15, align 8
  br label %219

259:                                              ; preds = %219
  br label %377

260:                                              ; preds = %5
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %264, %268
  store i32 %269, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %270

270:                                              ; preds = %307, %260
  %271 = load i64, i64* %15, align 8
  %272 = load i64, i64* %8, align 8
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %274, label %310

274:                                              ; preds = %270
  %275 = load i32*, i32** %11, align 8
  %276 = load i64, i64* %15, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %303

280:                                              ; preds = %274
  %281 = load i32*, i32** %18, align 8
  %282 = load i64, i64* %15, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %284, %288
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* %17, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %280
  %294 = load i64, i64* %15, align 8
  %295 = getelementptr inbounds i32, i32* %23, i64 %294
  store i32 0, i32* %295, align 4
  br label %302

296:                                              ; preds = %280
  %297 = load i64, i64* %15, align 8
  %298 = getelementptr inbounds i32, i32* %23, i64 %297
  store i32 1, i32* %298, align 4
  %299 = load i32*, i32** %11, align 8
  %300 = load i64, i64* %15, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32 0, i32* %301, align 4
  br label %302

302:                                              ; preds = %296, %293
  br label %306

303:                                              ; preds = %274
  %304 = load i64, i64* %15, align 8
  %305 = getelementptr inbounds i32, i32* %23, i64 %304
  store i32 0, i32* %305, align 4
  br label %306

306:                                              ; preds = %303, %302
  br label %307

307:                                              ; preds = %306
  %308 = load i64, i64* %15, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %15, align 8
  br label %270

310:                                              ; preds = %270
  br label %377

311:                                              ; preds = %5
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %315, %319
  store i32 %320, i32* %16, align 4
  store i64 0, i64* %15, align 8
  br label %321

321:                                              ; preds = %358, %311
  %322 = load i64, i64* %15, align 8
  %323 = load i64, i64* %8, align 8
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %361

325:                                              ; preds = %321
  %326 = load i32*, i32** %11, align 8
  %327 = load i64, i64* %15, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %354

331:                                              ; preds = %325
  %332 = load i32*, i32** %18, align 8
  %333 = load i64, i64* %15, align 8
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = and i32 %335, %339
  store i32 %340, i32* %17, align 4
  %341 = load i32, i32* %16, align 4
  %342 = load i32, i32* %17, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %331
  %345 = load i64, i64* %15, align 8
  %346 = getelementptr inbounds i32, i32* %23, i64 %345
  store i32 0, i32* %346, align 4
  br label %353

347:                                              ; preds = %331
  %348 = load i64, i64* %15, align 8
  %349 = getelementptr inbounds i32, i32* %23, i64 %348
  store i32 1, i32* %349, align 4
  %350 = load i32*, i32** %11, align 8
  %351 = load i64, i64* %15, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32 0, i32* %352, align 4
  br label %353

353:                                              ; preds = %347, %344
  br label %357

354:                                              ; preds = %325
  %355 = load i64, i64* %15, align 8
  %356 = getelementptr inbounds i32, i32* %23, i64 %355
  store i32 0, i32* %356, align 4
  br label %357

357:                                              ; preds = %354, %353
  br label %358

358:                                              ; preds = %357
  %359 = load i64, i64* %15, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %15, align 8
  br label %321

361:                                              ; preds = %321
  br label %377

362:                                              ; preds = %5
  store i64 0, i64* %15, align 8
  br label %363

363:                                              ; preds = %370, %362
  %364 = load i64, i64* %15, align 8
  %365 = load i64, i64* %8, align 8
  %366 = icmp ult i64 %364, %365
  br i1 %366, label %367, label %373

367:                                              ; preds = %363
  %368 = load i64, i64* %15, align 8
  %369 = getelementptr inbounds i32, i32* %23, i64 %368
  store i32 0, i32* %369, align 4
  br label %370

370:                                              ; preds = %367
  %371 = load i64, i64* %15, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %15, align 8
  br label %363

373:                                              ; preds = %363
  br label %377

374:                                              ; preds = %5
  %375 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %376 = call i32 @gl_problem(%struct.TYPE_7__* %375, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %391

377:                                              ; preds = %373, %361, %310, %259, %208, %157, %106, %55
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %379 = load i64, i64* %8, align 8
  %380 = load i32, i32* %9, align 4
  %381 = load i32, i32* %10, align 4
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @apply_stencil_op_to_span(%struct.TYPE_7__* %378, i64 %379, i32 %380, i32 %381, i32 %385, i32* %23)
  %387 = load i32, i32* %14, align 4
  %388 = icmp ne i32 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i32 0, i32 1
  store i32 %390, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %391

391:                                              ; preds = %377, %374
  %392 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %392)
  %393 = load i32, i32* %6, align 4
  ret i32 %393
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @STENCIL_ADDRESS(i32, i32) #2

declare dso_local i32 @gl_problem(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @apply_stencil_op_to_span(%struct.TYPE_7__*, i64, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
