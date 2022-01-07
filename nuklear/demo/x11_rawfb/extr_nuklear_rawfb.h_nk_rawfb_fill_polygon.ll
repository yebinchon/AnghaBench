; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_polygon.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }

@MAX_POINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, %struct.nk_vec2i*, i32, i32)* @nk_rawfb_fill_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_fill_polygon(%struct.rawfb_context* %0, %struct.nk_vec2i* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nk_color, align 4
  %6 = alloca %struct.rawfb_context*, align 8
  %7 = alloca %struct.nk_vec2i*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  store i32 %3, i32* %20, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %6, align 8
  store %struct.nk_vec2i* %1, %struct.nk_vec2i** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 10000, i32* %10, align 4
  store i32 10000, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %342

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 64
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 64, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %24
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %98, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %101

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %35, i64 %37
  %39 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %34, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %43, i64 %45
  %47 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %51, i64 %53
  %55 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %50, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %59, i64 %61
  %63 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %58, %49
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %67, i64 %69
  %71 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %66, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %75, i64 %77
  %79 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %74, %65
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %83, i64 %85
  %87 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %82, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %91, i64 %93
  %95 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %90, %81
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %29

101:                                              ; preds = %29
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %339, %101
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %342

111:                                              ; preds = %107
  store i32 0, i32* %14, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %212, %111
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %215

118:                                              ; preds = %114
  %119 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %119, i64 %121
  %123 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %118
  %128 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %128, i64 %130
  %132 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %154, label %136

136:                                              ; preds = %127, %118
  %137 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %137, i64 %139
  %141 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %210

145:                                              ; preds = %136
  %146 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %146, i64 %148
  %150 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %210

154:                                              ; preds = %145, %127
  %155 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %155, i64 %157
  %159 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sitofp i32 %160 to float
  %162 = load i32, i32* %17, align 4
  %163 = sitofp i32 %162 to float
  %164 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %164, i64 %166
  %168 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sitofp i32 %169 to float
  %171 = fsub float %163, %170
  %172 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %172, i64 %174
  %176 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sitofp i32 %177 to float
  %179 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %179, i64 %181
  %183 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sitofp i32 %184 to float
  %186 = fsub float %178, %185
  %187 = fdiv float %171, %186
  %188 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %188, i64 %190
  %192 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sitofp i32 %193 to float
  %195 = load %struct.nk_vec2i*, %struct.nk_vec2i** %7, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %195, i64 %197
  %199 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sitofp i32 %200 to float
  %202 = fsub float %194, %201
  %203 = fmul float %187, %202
  %204 = fadd float %161, %203
  %205 = fptosi float %204 to i32
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %208
  store i32 %205, i32* %209, align 4
  br label %210

210:                                              ; preds = %154, %145, %136
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %18, align 4
  br label %212

212:                                              ; preds = %210
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %114

215:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %216

216:                                              ; preds = %259, %215
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %14, align 4
  %219 = sub nsw i32 %218, 1
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %260

221:                                              ; preds = %216
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %225, %230
  br i1 %231, label %232, label %256

232:                                              ; preds = %221
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %19, align 4
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %243
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %248
  store i32 %245, i32* %249, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %232
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %9, align 4
  br label %255

255:                                              ; preds = %252, %232
  br label %259

256:                                              ; preds = %221
  %257 = load i32, i32* %9, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %256, %255
  br label %216

260:                                              ; preds = %216
  store i32 0, i32* %9, align 4
  br label %261

261:                                              ; preds = %335, %260
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %338

265:                                              ; preds = %261
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 0
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %13, align 4
  %272 = icmp sge i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %265
  br label %338

274:                                              ; preds = %265
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp sgt i32 %279, %280
  br i1 %281, label %282, label %334

282:                                              ; preds = %274
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 0
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %10, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %282
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 0
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %294
  store i32 %291, i32* %295, align 4
  br label %296

296:                                              ; preds = %290, %282
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %13, align 4
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %296
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %308
  store i32 %305, i32* %309, align 4
  br label %310

310:                                              ; preds = %304, %296
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %16, align 4
  br label %315

315:                                              ; preds = %330, %310
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = icmp slt i32 %316, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %315
  %324 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %17, align 4
  %327 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %324, i32 %325, i32 %326, i32 %328)
  br label %330

330:                                              ; preds = %323
  %331 = load i32, i32* %16, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %16, align 4
  br label %315

333:                                              ; preds = %315
  br label %334

334:                                              ; preds = %333, %274
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %9, align 4
  %337 = add nsw i32 %336, 2
  store i32 %337, i32* %9, align 4
  br label %261

338:                                              ; preds = %273, %261
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %17, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %17, align 4
  br label %107

342:                                              ; preds = %23, %107
  ret void
}

declare dso_local i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
