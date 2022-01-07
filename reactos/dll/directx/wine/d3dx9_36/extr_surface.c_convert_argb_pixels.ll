; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_convert_argb_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_convert_argb_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.volume = type { i32, i32, i32 }
%struct.pixel_format_desc = type { i64, i32, i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)* }
%struct.vec4 = type { float }
%struct.argb_conversion_info = type { i64* }

@D3DFMT_A8R8G8B8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_argb_pixels(i32* %0, i32 %1, i32 %2, %struct.volume* %3, %struct.pixel_format_desc* %4, i32* %5, i32 %6, i32 %7, %struct.volume* %8, %struct.pixel_format_desc* %9, i64 %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.volume*, align 8
  %17 = alloca %struct.pixel_format_desc*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.volume*, align 8
  %22 = alloca %struct.pixel_format_desc*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.argb_conversion_info, align 8
  %26 = alloca %struct.argb_conversion_info, align 8
  %27 = alloca %struct.pixel_format_desc*, align 8
  %28 = alloca [4 x i64], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.vec4, align 4
  %42 = alloca %struct.vec4, align 4
  %43 = alloca i64, align 8
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store %struct.volume* %3, %struct.volume** %16, align 8
  store %struct.pixel_format_desc* %4, %struct.pixel_format_desc** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store %struct.volume* %8, %struct.volume** %21, align 8
  store %struct.pixel_format_desc* %9, %struct.pixel_format_desc** %22, align 8
  store i64 %10, i64* %23, align 8
  store i32* %11, i32** %24, align 8
  store %struct.pixel_format_desc* null, %struct.pixel_format_desc** %27, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %45 = call i32 @ZeroMemory(i64* %44, i32 32)
  %46 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %47 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %48 = call i32 @init_argb_conversion_info(%struct.pixel_format_desc* %46, %struct.pixel_format_desc* %47, %struct.argb_conversion_info* %25)
  %49 = load %struct.volume*, %struct.volume** %16, align 8
  %50 = getelementptr inbounds %struct.volume, %struct.volume* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.volume*, %struct.volume** %21, align 8
  %53 = getelementptr inbounds %struct.volume, %struct.volume* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @min(i32 %51, i32 %54)
  store i32 %55, i32* %29, align 4
  %56 = load %struct.volume*, %struct.volume** %16, align 8
  %57 = getelementptr inbounds %struct.volume, %struct.volume* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.volume*, %struct.volume** %21, align 8
  %60 = getelementptr inbounds %struct.volume, %struct.volume* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @min(i32 %58, i32 %61)
  store i32 %62, i32* %30, align 4
  %63 = load %struct.volume*, %struct.volume** %16, align 8
  %64 = getelementptr inbounds %struct.volume, %struct.volume* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.volume*, %struct.volume** %21, align 8
  %67 = getelementptr inbounds %struct.volume, %struct.volume* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @min(i32 %65, i32 %68)
  store i32 %69, i32* %31, align 4
  %70 = load i64, i64* %23, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %12
  %73 = load i32, i32* @D3DFMT_A8R8G8B8, align 4
  %74 = call %struct.pixel_format_desc* @get_format_info(i32 %73)
  store %struct.pixel_format_desc* %74, %struct.pixel_format_desc** %27, align 8
  %75 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %76 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %27, align 8
  %77 = call i32 @init_argb_conversion_info(%struct.pixel_format_desc* %75, %struct.pixel_format_desc* %76, %struct.argb_conversion_info* %26)
  br label %78

78:                                               ; preds = %72, %12
  store i32 0, i32* %34, align 4
  br label %79

79:                                               ; preds = %294, %78
  %80 = load i32, i32* %34, align 4
  %81 = load i32, i32* %31, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %297

83:                                               ; preds = %79
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %34, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32* %89, i32** %35, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = load i32, i32* %34, align 4
  %92 = load i32, i32* %20, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  store i32* %95, i32** %36, align 8
  store i32 0, i32* %33, align 4
  br label %96

96:                                               ; preds = %263, %83
  %97 = load i32, i32* %33, align 4
  %98 = load i32, i32* %30, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %266

100:                                              ; preds = %96
  %101 = load i32*, i32** %35, align 8
  %102 = load i32, i32* %33, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  store i32* %106, i32** %37, align 8
  %107 = load i32*, i32** %36, align 8
  %108 = load i32, i32* %33, align 4
  %109 = load i32, i32* %19, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  store i32* %112, i32** %38, align 8
  store i32 0, i32* %32, align 4
  br label %113

113:                                              ; preds = %237, %100
  %114 = load i32, i32* %32, align 4
  %115 = load i32, i32* %29, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %240

117:                                              ; preds = %113
  %118 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %119 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %118, i32 0, i32 3
  %120 = load i32 (%struct.vec4*, %struct.vec4*, i32*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)** %119, align 8
  %121 = icmp ne i32 (%struct.vec4*, %struct.vec4*, i32*)* %120, null
  br i1 %121, label %177, label %122

122:                                              ; preds = %117
  %123 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %124 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %123, i32 0, i32 2
  %125 = load i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*)** %124, align 8
  %126 = icmp ne i32 (%struct.vec4*, %struct.vec4*)* %125, null
  br i1 %126, label %177, label %127

127:                                              ; preds = %122
  %128 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %129 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %132 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %177

135:                                              ; preds = %127
  %136 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %137 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %138, 4
  br i1 %139, label %140, label %177

140:                                              ; preds = %135
  %141 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %142 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp sle i32 %143, 4
  br i1 %144, label %145, label %177

145:                                              ; preds = %140
  %146 = load i32*, i32** %37, align 8
  %147 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %148 = call i32 @get_relevant_argb_components(%struct.argb_conversion_info* %25, i32* %146, i64* %147)
  %149 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %150 = call i64 @make_argb_color(%struct.argb_conversion_info* %25, i64* %149)
  store i64 %150, i64* %39, align 8
  %151 = load i64, i64* %23, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %145
  %154 = load i32*, i32** %37, align 8
  %155 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %156 = call i32 @get_relevant_argb_components(%struct.argb_conversion_info* %26, i32* %154, i64* %155)
  %157 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %158 = call i64 @make_argb_color(%struct.argb_conversion_info* %26, i64* %157)
  store i64 %158, i64* %40, align 8
  %159 = load i64, i64* %40, align 8
  %160 = load i64, i64* %23, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %25, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = xor i64 %166, -1
  %168 = load i64, i64* %39, align 8
  %169 = and i64 %168, %167
  store i64 %169, i64* %39, align 8
  br label %170

170:                                              ; preds = %162, %153
  br label %171

171:                                              ; preds = %170, %145
  %172 = load i32*, i32** %38, align 8
  %173 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %174 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @memcpy(i32* %172, i64* %39, i32 %175)
  br label %224

177:                                              ; preds = %140, %135, %127, %122, %117
  %178 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %179 = load i32*, i32** %37, align 8
  %180 = call i32 @format_to_vec4(%struct.pixel_format_desc* %178, i32* %179, %struct.vec4* %41)
  %181 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %182 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %181, i32 0, i32 3
  %183 = load i32 (%struct.vec4*, %struct.vec4*, i32*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)** %182, align 8
  %184 = icmp ne i32 (%struct.vec4*, %struct.vec4*, i32*)* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %187 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %186, i32 0, i32 3
  %188 = load i32 (%struct.vec4*, %struct.vec4*, i32*)*, i32 (%struct.vec4*, %struct.vec4*, i32*)** %187, align 8
  %189 = load i32*, i32** %24, align 8
  %190 = call i32 %188(%struct.vec4* %41, %struct.vec4* %42, i32* %189)
  br label %194

191:                                              ; preds = %177
  %192 = bitcast %struct.vec4* %42 to i8*
  %193 = bitcast %struct.vec4* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %192, i8* align 4 %193, i64 4, i1 false)
  br label %194

194:                                              ; preds = %191, %185
  %195 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %27, align 8
  %196 = icmp ne %struct.pixel_format_desc* %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  %198 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %27, align 8
  %199 = bitcast i64* %43 to i32*
  %200 = call i32 @format_from_vec4(%struct.pixel_format_desc* %198, %struct.vec4* %42, i32* %199)
  %201 = load i64, i64* %43, align 8
  %202 = load i64, i64* %23, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.vec4, %struct.vec4* %42, i32 0, i32 0
  store float 0.000000e+00, float* %205, align 4
  br label %206

206:                                              ; preds = %204, %197
  br label %207

207:                                              ; preds = %206, %194
  %208 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %209 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %208, i32 0, i32 2
  %210 = load i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*)** %209, align 8
  %211 = icmp ne i32 (%struct.vec4*, %struct.vec4*)* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %214 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %213, i32 0, i32 2
  %215 = load i32 (%struct.vec4*, %struct.vec4*)*, i32 (%struct.vec4*, %struct.vec4*)** %214, align 8
  %216 = call i32 %215(%struct.vec4* %42, %struct.vec4* %41)
  br label %220

217:                                              ; preds = %207
  %218 = bitcast %struct.vec4* %41 to i8*
  %219 = bitcast %struct.vec4* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %218, i8* align 4 %219, i64 4, i1 false)
  br label %220

220:                                              ; preds = %217, %212
  %221 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %222 = load i32*, i32** %38, align 8
  %223 = call i32 @format_from_vec4(%struct.pixel_format_desc* %221, %struct.vec4* %41, i32* %222)
  br label %224

224:                                              ; preds = %220, %171
  %225 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %17, align 8
  %226 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %37, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %37, align 8
  %231 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %232 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** %38, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %38, align 8
  br label %237

237:                                              ; preds = %224
  %238 = load i32, i32* %32, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %32, align 4
  br label %113

240:                                              ; preds = %113
  %241 = load %struct.volume*, %struct.volume** %16, align 8
  %242 = getelementptr inbounds %struct.volume, %struct.volume* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.volume*, %struct.volume** %21, align 8
  %245 = getelementptr inbounds %struct.volume, %struct.volume* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %262

248:                                              ; preds = %240
  %249 = load i32*, i32** %38, align 8
  %250 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %22, align 8
  %251 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.volume*, %struct.volume** %21, align 8
  %254 = getelementptr inbounds %struct.volume, %struct.volume* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.volume*, %struct.volume** %16, align 8
  %257 = getelementptr inbounds %struct.volume, %struct.volume* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %255, %258
  %260 = mul nsw i32 %252, %259
  %261 = call i32 @memset(i32* %249, i32 0, i32 %260)
  br label %262

262:                                              ; preds = %248, %240
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %33, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %33, align 4
  br label %96

266:                                              ; preds = %96
  %267 = load %struct.volume*, %struct.volume** %16, align 8
  %268 = getelementptr inbounds %struct.volume, %struct.volume* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.volume*, %struct.volume** %21, align 8
  %271 = getelementptr inbounds %struct.volume, %struct.volume* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %293

274:                                              ; preds = %266
  %275 = load i32*, i32** %18, align 8
  %276 = load %struct.volume*, %struct.volume** %16, align 8
  %277 = getelementptr inbounds %struct.volume, %struct.volume* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %19, align 4
  %280 = mul nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %275, i64 %281
  %283 = load i32, i32* %19, align 4
  %284 = load %struct.volume*, %struct.volume** %21, align 8
  %285 = getelementptr inbounds %struct.volume, %struct.volume* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.volume*, %struct.volume** %16, align 8
  %288 = getelementptr inbounds %struct.volume, %struct.volume* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %286, %289
  %291 = mul nsw i32 %283, %290
  %292 = call i32 @memset(i32* %282, i32 0, i32 %291)
  br label %293

293:                                              ; preds = %274, %266
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %34, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %34, align 4
  br label %79

297:                                              ; preds = %79
  %298 = load %struct.volume*, %struct.volume** %16, align 8
  %299 = getelementptr inbounds %struct.volume, %struct.volume* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.volume*, %struct.volume** %21, align 8
  %302 = getelementptr inbounds %struct.volume, %struct.volume* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %305, label %324

305:                                              ; preds = %297
  %306 = load i32*, i32** %18, align 8
  %307 = load %struct.volume*, %struct.volume** %16, align 8
  %308 = getelementptr inbounds %struct.volume, %struct.volume* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %20, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %306, i64 %312
  %314 = load i32, i32* %20, align 4
  %315 = load %struct.volume*, %struct.volume** %21, align 8
  %316 = getelementptr inbounds %struct.volume, %struct.volume* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.volume*, %struct.volume** %16, align 8
  %319 = getelementptr inbounds %struct.volume, %struct.volume* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %317, %320
  %322 = mul nsw i32 %314, %321
  %323 = call i32 @memset(i32* %313, i32 0, i32 %322)
  br label %324

324:                                              ; preds = %305, %297
  ret void
}

declare dso_local i32 @ZeroMemory(i64*, i32) #1

declare dso_local i32 @init_argb_conversion_info(%struct.pixel_format_desc*, %struct.pixel_format_desc*, %struct.argb_conversion_info*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.pixel_format_desc* @get_format_info(i32) #1

declare dso_local i32 @get_relevant_argb_components(%struct.argb_conversion_info*, i32*, i64*) #1

declare dso_local i64 @make_argb_color(%struct.argb_conversion_info*, i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @format_to_vec4(%struct.pixel_format_desc*, i32*, %struct.vec4*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @format_from_vec4(%struct.pixel_format_desc*, %struct.vec4*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
