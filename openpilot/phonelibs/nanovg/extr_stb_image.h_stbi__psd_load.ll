; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__psd_load.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__psd_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"not PSD\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Corrupt PSD image\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"wrong version\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unsupported version of PSD image\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"wrong channel count\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Unsupported number of channels in PSD image\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unsupported bit depth\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"PSD bit depth is not 8 or 16 bit\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"wrong color format\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"PSD is not in RGB color format\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"bad compression\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"PSD has an unknown compression format\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32)* @stbi__psd_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__psd_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
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
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @stbi__get32be(i32* %27)
  %29 = icmp ne i32 %28, 943870035
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %6, align 8
  br label %308

32:                                               ; preds = %5
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @stbi__get16be(i32* %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32* %37, i32** %6, align 8
  br label %308

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @stbi__skip(i32* %39, i32 6)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @stbi__get16be(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 16
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %38
  %49 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32* %49, i32** %6, align 8
  br label %308

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @stbi__get32be(i32* %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @stbi__get32be(i32* %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @stbi__get16be(i32* %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 8
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 16
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32* %63, i32** %6, align 8
  br label %308

64:                                               ; preds = %59, %50
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @stbi__get16be(i32* %65)
  %67 = icmp ne i32 %66, 3
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32* %69, i32** %6, align 8
  br label %308

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @stbi__get32be(i32* %72)
  %74 = call i32 @stbi__skip(i32* %71, i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @stbi__get32be(i32* %76)
  %78 = call i32 @stbi__skip(i32* %75, i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @stbi__get32be(i32* %80)
  %82 = call i32 @stbi__skip(i32* %79, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @stbi__get16be(i32* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  store i32* %88, i32** %6, align 8
  br label %308

89:                                               ; preds = %70
  %90 = load i32, i32* %20, align 4
  %91 = mul nsw i32 4, %90
  %92 = load i32, i32* %21, align 4
  %93 = mul nsw i32 %91, %92
  %94 = call i64 @stbi__malloc(i32 %93)
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %22, align 8
  %96 = load i32*, i32** %22, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  %99 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32* %99, i32** %6, align 8
  br label %308

100:                                              ; preds = %89
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %21, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %209

106:                                              ; preds = %100
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %13, align 4
  %110 = mul nsw i32 %108, %109
  %111 = mul nsw i32 %110, 2
  %112 = call i32 @stbi__skip(i32* %107, i32 %111)
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %205, %106
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %114, 4
  br i1 %115, label %116, label %208

116:                                              ; preds = %113
  %117 = load i32*, i32** %22, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %23, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %116
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 3
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 255, i32 0
  %134 = load i32*, i32** %23, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  %138 = load i32*, i32** %23, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  store i32* %139, i32** %23, align 8
  br label %125

140:                                              ; preds = %125
  br label %204

141:                                              ; preds = %116
  store i32 0, i32* %17, align 4
  br label %142

142:                                              ; preds = %202, %141
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %203

146:                                              ; preds = %142
  %147 = load i32*, i32** %7, align 8
  %148 = call i8* @stbi__get8(i32* %147)
  %149 = ptrtoint i8* %148 to i32
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp eq i32 %150, 128
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %202

153:                                              ; preds = %146
  %154 = load i32, i32* %18, align 4
  %155 = icmp slt i32 %154, 128
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %165, %156
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i32*, i32** %7, align 8
  %167 = call i8* @stbi__get8(i32* %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %23, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32*, i32** %23, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  store i32* %171, i32** %23, align 8
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %18, align 4
  br label %162

174:                                              ; preds = %162
  br label %201

175:                                              ; preds = %153
  %176 = load i32, i32* %18, align 4
  %177 = icmp sgt i32 %176, 128
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = load i32, i32* %18, align 4
  %180 = xor i32 %179, 255
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = add nsw i32 %181, 2
  store i32 %182, i32* %18, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = call i8* @stbi__get8(i32* %183)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %24, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %17, align 4
  br label %189

189:                                              ; preds = %192, %178
  %190 = load i32, i32* %18, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i32, i32* %24, align 4
  %194 = load i32*, i32** %23, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i32*, i32** %23, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  store i32* %196, i32** %23, align 8
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %18, align 4
  br label %189

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %175
  br label %201

201:                                              ; preds = %200, %174
  br label %202

202:                                              ; preds = %201, %152
  br label %142

203:                                              ; preds = %142
  br label %204

204:                                              ; preds = %203, %140
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %113

208:                                              ; preds = %113
  br label %280

209:                                              ; preds = %100
  store i32 0, i32* %15, align 4
  br label %210

210:                                              ; preds = %276, %209
  %211 = load i32, i32* %15, align 4
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %213, label %279

213:                                              ; preds = %210
  %214 = load i32*, i32** %22, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32* %217, i32** %25, align 8
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %239

221:                                              ; preds = %213
  %222 = load i32, i32* %15, align 4
  %223 = icmp eq i32 %222, 3
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 255, i32 0
  store i32 %225, i32* %26, align 4
  store i32 0, i32* %16, align 4
  br label %226

226:                                              ; preds = %233, %221
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = load i32, i32* %26, align 4
  %232 = load i32*, i32** %25, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  %236 = load i32*, i32** %25, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  store i32* %237, i32** %25, align 8
  br label %226

238:                                              ; preds = %226
  br label %275

239:                                              ; preds = %213
  %240 = load i32, i32* %19, align 4
  %241 = icmp eq i32 %240, 16
  br i1 %241, label %242, label %258

242:                                              ; preds = %239
  store i32 0, i32* %16, align 4
  br label %243

243:                                              ; preds = %252, %242
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %12, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = load i32*, i32** %7, align 8
  %249 = call i32 @stbi__get16be(i32* %248)
  %250 = ashr i32 %249, 8
  %251 = load i32*, i32** %25, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %247
  %253 = load i32, i32* %16, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %16, align 4
  %255 = load i32*, i32** %25, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  store i32* %256, i32** %25, align 8
  br label %243

257:                                              ; preds = %243
  br label %274

258:                                              ; preds = %239
  store i32 0, i32* %16, align 4
  br label %259

259:                                              ; preds = %268, %258
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %259
  %264 = load i32*, i32** %7, align 8
  %265 = call i8* @stbi__get8(i32* %264)
  %266 = ptrtoint i8* %265 to i32
  %267 = load i32*, i32** %25, align 8
  store i32 %266, i32* %267, align 4
  br label %268

268:                                              ; preds = %263
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %16, align 4
  %271 = load i32*, i32** %25, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  store i32* %272, i32** %25, align 8
  br label %259

273:                                              ; preds = %259
  br label %274

274:                                              ; preds = %273, %257
  br label %275

275:                                              ; preds = %274, %238
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %15, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %15, align 4
  br label %210

279:                                              ; preds = %210
  br label %280

280:                                              ; preds = %279, %208
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %297

283:                                              ; preds = %280
  %284 = load i32, i32* %11, align 4
  %285 = icmp ne i32 %284, 4
  br i1 %285, label %286, label %297

286:                                              ; preds = %283
  %287 = load i32*, i32** %22, align 8
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* %21, align 4
  %291 = call i32* @stbi__convert_format(i32* %287, i32 4, i32 %288, i32 %289, i32 %290)
  store i32* %291, i32** %22, align 8
  %292 = load i32*, i32** %22, align 8
  %293 = icmp eq i32* %292, null
  br i1 %293, label %294, label %296

294:                                              ; preds = %286
  %295 = load i32*, i32** %22, align 8
  store i32* %295, i32** %6, align 8
  br label %308

296:                                              ; preds = %286
  br label %297

297:                                              ; preds = %296, %283, %280
  %298 = load i32*, i32** %10, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32*, i32** %10, align 8
  store i32 4, i32* %301, align 4
  br label %302

302:                                              ; preds = %300, %297
  %303 = load i32, i32* %21, align 4
  %304 = load i32*, i32** %9, align 8
  store i32 %303, i32* %304, align 4
  %305 = load i32, i32* %20, align 4
  %306 = load i32*, i32** %8, align 8
  store i32 %305, i32* %306, align 4
  %307 = load i32*, i32** %22, align 8
  store i32* %307, i32** %6, align 8
  br label %308

308:                                              ; preds = %302, %294, %98, %87, %68, %62, %48, %36, %30
  %309 = load i32*, i32** %6, align 8
  ret i32* %309
}

declare dso_local i32 @stbi__get32be(i32*) #1

declare dso_local i32* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__get16be(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i8* @stbi__get8(i32*) #1

declare dso_local i32* @stbi__convert_format(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
