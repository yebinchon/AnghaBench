; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__hdr_load.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__hdr_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBI__HDR_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"#?RADIANCE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"not HDR\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Corrupt HDR image\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"FORMAT=32-bit_rle_rgbe\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unsupported format\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unsupported HDR format\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-Y \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"unsupported data layout\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"+X \00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"invalid decoded scanline length\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"corrupt HDR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32*, i32*, i32*, i32*, i32)* @stbi__hdr_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @stbi__hdr_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [4 x float], align 16
  %31 = alloca [4 x float], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %32 = load i32, i32* @STBI__HDR_BUFLEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %12, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i8* @stbi__hdr_gettoken(i32* %36, i8* %35)
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = call float* @stbi__errpf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store float* %41, float** %6, align 8
  store i32 1, i32* %29, align 4
  br label %335

42:                                               ; preds = %5
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @stbi__hdr_gettoken(i32* %44, i8* %35)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %58

52:                                               ; preds = %43
  %53 = load i8*, i8** %14, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  br label %57

57:                                               ; preds = %56, %52
  br label %43

58:                                               ; preds = %51
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call float* @stbi__errpf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store float* %62, float** %6, align 8
  store i32 1, i32* %29, align 4
  br label %335

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @stbi__hdr_gettoken(i32* %64, i8* %35)
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call float* @stbi__errpf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store float* %70, float** %6, align 8
  store i32 1, i32* %29, align 4
  br label %335

71:                                               ; preds = %63
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = call i64 @strtol(i8* %74, i8** %14, i32 10)
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %82, %71
  %78 = load i8*, i8** %14, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %14, align 8
  br label %77

85:                                               ; preds = %77
  %86 = load i8*, i8** %14, align 8
  %87 = call i64 @strncmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call float* @stbi__errpf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store float* %90, float** %6, align 8
  store i32 1, i32* %29, align 4
  br label %335

91:                                               ; preds = %85
  %92 = load i8*, i8** %14, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = call i64 @strtol(i8* %94, i8** null, i32 10)
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32*, i32** %10, align 8
  store i32 3, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %91
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 3, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %16, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i64 @stbi__malloc(i32 %117)
  %119 = inttoptr i64 %118 to float*
  store float* %119, float** %19, align 8
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %125, label %122

122:                                              ; preds = %109
  %123 = load i32, i32* %16, align 4
  %124 = icmp sge i32 %123, 32768
  br i1 %124, label %125, label %164

125:                                              ; preds = %122, %109
  store i32 0, i32* %24, align 4
  br label %126

126:                                              ; preds = %160, %125
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  store i32 0, i32* %23, align 4
  br label %131

131:                                              ; preds = %156, %130
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %185, %135
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 0
  %139 = call i32 @stbi__getn(i32* %137, float* %138, i32 4)
  %140 = load float*, float** %19, align 8
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %16, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %11, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %140, i64 %146
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %147, i64 %151
  %153 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 0
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @stbi__hdr_convert(float* %152, float* %153, i32 %154)
  br label %156

156:                                              ; preds = %136
  %157 = load i32, i32* %23, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %23, align 4
  br label %131

159:                                              ; preds = %131
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %24, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %24, align 4
  br label %126

163:                                              ; preds = %126
  br label %333

164:                                              ; preds = %122
  store float* null, float** %18, align 8
  store i32 0, i32* %24, align 4
  br label %165

165:                                              ; preds = %327, %164
  %166 = load i32, i32* %24, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %330

169:                                              ; preds = %165
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @stbi__get8(i32* %170)
  store i32 %171, i32* %26, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @stbi__get8(i32* %172)
  store i32 %173, i32* %27, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @stbi__get8(i32* %174)
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %26, align 4
  %177 = icmp ne i32 %176, 2
  br i1 %177, label %185, label %178

178:                                              ; preds = %169
  %179 = load i32, i32* %27, align 4
  %180 = icmp ne i32 %179, 2
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %20, align 4
  %183 = and i32 %182, 128
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %181, %178, %169
  %186 = load i32, i32* %26, align 4
  %187 = sitofp i32 %186 to float
  %188 = getelementptr inbounds [4 x float], [4 x float]* %31, i64 0, i64 0
  store float %187, float* %188, align 16
  %189 = load i32, i32* %27, align 4
  %190 = sitofp i32 %189 to float
  %191 = getelementptr inbounds [4 x float], [4 x float]* %31, i64 0, i64 1
  store float %190, float* %191, align 4
  %192 = load i32, i32* %20, align 4
  %193 = sitofp i32 %192 to float
  %194 = getelementptr inbounds [4 x float], [4 x float]* %31, i64 0, i64 2
  store float %193, float* %194, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @stbi__get8(i32* %195)
  %197 = sitofp i32 %196 to float
  %198 = getelementptr inbounds [4 x float], [4 x float]* %31, i64 0, i64 3
  store float %197, float* %198, align 4
  %199 = load float*, float** %19, align 8
  %200 = getelementptr inbounds [4 x float], [4 x float]* %31, i64 0, i64 0
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @stbi__hdr_convert(float* %199, float* %200, i32 %201)
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %203 = load float*, float** %18, align 8
  %204 = call i32 @STBI_FREE(float* %203)
  br label %136

205:                                              ; preds = %181
  %206 = load i32, i32* %20, align 4
  %207 = shl i32 %206, 8
  store i32 %207, i32* %20, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 @stbi__get8(i32* %208)
  %210 = load i32, i32* %20, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %20, align 4
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* %16, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %205
  %216 = load float*, float** %19, align 8
  %217 = call i32 @STBI_FREE(float* %216)
  %218 = load float*, float** %18, align 8
  %219 = call i32 @STBI_FREE(float* %218)
  %220 = call float* @stbi__errpf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store float* %220, float** %6, align 8
  store i32 1, i32* %29, align 4
  br label %335

221:                                              ; preds = %205
  %222 = load float*, float** %18, align 8
  %223 = icmp eq float* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load i32, i32* %16, align 4
  %226 = mul nsw i32 %225, 4
  %227 = call i64 @stbi__malloc(i32 %226)
  %228 = inttoptr i64 %227 to float*
  store float* %228, float** %18, align 8
  br label %229

229:                                              ; preds = %224, %221
  store i32 0, i32* %25, align 4
  br label %230

230:                                              ; preds = %297, %229
  %231 = load i32, i32* %25, align 4
  %232 = icmp slt i32 %231, 4
  br i1 %232, label %233, label %300

233:                                              ; preds = %230
  store i32 0, i32* %23, align 4
  br label %234

234:                                              ; preds = %295, %233
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %16, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %296

238:                                              ; preds = %234
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @stbi__get8(i32* %239)
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %21, align 1
  %242 = load i8, i8* %21, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp sgt i32 %243, 128
  br i1 %244, label %245, label %273

245:                                              ; preds = %238
  %246 = load i32*, i32** %7, align 8
  %247 = call i32 @stbi__get8(i32* %246)
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %22, align 1
  %249 = load i8, i8* %21, align 1
  %250 = zext i8 %249 to i32
  %251 = sub nsw i32 %250, 128
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %21, align 1
  store i32 0, i32* %28, align 4
  br label %253

253:                                              ; preds = %269, %245
  %254 = load i32, i32* %28, align 4
  %255 = load i8, i8* %21, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %258, label %272

258:                                              ; preds = %253
  %259 = load i8, i8* %22, align 1
  %260 = uitofp i8 %259 to float
  %261 = load float*, float** %18, align 8
  %262 = load i32, i32* %23, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %23, align 4
  %264 = mul nsw i32 %262, 4
  %265 = load i32, i32* %25, align 4
  %266 = add nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %261, i64 %267
  store float %260, float* %268, align 4
  br label %269

269:                                              ; preds = %258
  %270 = load i32, i32* %28, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %28, align 4
  br label %253

272:                                              ; preds = %253
  br label %295

273:                                              ; preds = %238
  store i32 0, i32* %28, align 4
  br label %274

274:                                              ; preds = %291, %273
  %275 = load i32, i32* %28, align 4
  %276 = load i8, i8* %21, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %294

279:                                              ; preds = %274
  %280 = load i32*, i32** %7, align 8
  %281 = call i32 @stbi__get8(i32* %280)
  %282 = sitofp i32 %281 to float
  %283 = load float*, float** %18, align 8
  %284 = load i32, i32* %23, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %23, align 4
  %286 = mul nsw i32 %284, 4
  %287 = load i32, i32* %25, align 4
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %283, i64 %289
  store float %282, float* %290, align 4
  br label %291

291:                                              ; preds = %279
  %292 = load i32, i32* %28, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %28, align 4
  br label %274

294:                                              ; preds = %274
  br label %295

295:                                              ; preds = %294, %272
  br label %234

296:                                              ; preds = %234
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %25, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %25, align 4
  br label %230

300:                                              ; preds = %230
  store i32 0, i32* %23, align 4
  br label %301

301:                                              ; preds = %323, %300
  %302 = load i32, i32* %23, align 4
  %303 = load i32, i32* %16, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %326

305:                                              ; preds = %301
  %306 = load float*, float** %19, align 8
  %307 = load i32, i32* %24, align 4
  %308 = load i32, i32* %16, align 4
  %309 = mul nsw i32 %307, %308
  %310 = load i32, i32* %23, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %11, align 4
  %313 = mul nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %306, i64 %314
  %316 = load float*, float** %18, align 8
  %317 = load i32, i32* %23, align 4
  %318 = mul nsw i32 %317, 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, float* %316, i64 %319
  %321 = load i32, i32* %11, align 4
  %322 = call i32 @stbi__hdr_convert(float* %315, float* %320, i32 %321)
  br label %323

323:                                              ; preds = %305
  %324 = load i32, i32* %23, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %23, align 4
  br label %301

326:                                              ; preds = %301
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %24, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %24, align 4
  br label %165

330:                                              ; preds = %165
  %331 = load float*, float** %18, align 8
  %332 = call i32 @STBI_FREE(float* %331)
  br label %333

333:                                              ; preds = %330, %163
  %334 = load float*, float** %19, align 8
  store float* %334, float** %6, align 8
  store i32 1, i32* %29, align 4
  br label %335

335:                                              ; preds = %333, %215, %89, %69, %61, %40
  %336 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %336)
  %337 = load float*, float** %6, align 8
  ret float* %337
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @stbi__hdr_gettoken(i32*, i8*) #2

declare dso_local float* @stbi__errpf(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i64 @stbi__malloc(i32) #2

declare dso_local i32 @stbi__getn(i32*, float*, i32) #2

declare dso_local i32 @stbi__hdr_convert(float*, float*, i32) #2

declare dso_local i32 @stbi__get8(i32*) #2

declare dso_local i32 @STBI_FREE(float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
