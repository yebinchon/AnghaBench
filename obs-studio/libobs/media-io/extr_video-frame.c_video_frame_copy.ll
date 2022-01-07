; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-frame.c_video_frame_copy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-frame.c_video_frame_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_frame = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_frame_copy(%struct.video_frame* %0, %struct.video_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.video_frame*, align 8
  %6 = alloca %struct.video_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.video_frame* %0, %struct.video_frame** %5, align 8
  store %struct.video_frame* %1, %struct.video_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %328 [
    i32 135, label %10
    i32 139, label %11
    i32 134, label %68
    i32 131, label %106
    i32 128, label %106
    i32 129, label %106
    i32 132, label %106
    i32 133, label %106
    i32 142, label %106
    i32 141, label %106
    i32 143, label %106
    i32 144, label %106
    i32 136, label %125
    i32 138, label %125
    i32 140, label %180
    i32 137, label %255
    i32 130, label %255
  ]

10:                                               ; preds = %4
  br label %328

11:                                               ; preds = %4
  %12 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %13 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %18 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %23 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @memcpy(i32 %16, i32 %21, i32 %28)
  %30 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %31 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %36 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %41 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  %48 = call i32 @memcpy(i32 %34, i32 %39, i32 %47)
  %49 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %50 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %55 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %60 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sdiv i32 %65, 2
  %67 = call i32 @memcpy(i32 %53, i32 %58, i32 %66)
  br label %328

68:                                               ; preds = %4
  %69 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %70 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %75 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %80 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i32 @memcpy(i32 %73, i32 %78, i32 %85)
  %87 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %88 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %93 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %98 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sdiv i32 %103, 2
  %105 = call i32 @memcpy(i32 %91, i32 %96, i32 %104)
  br label %328

106:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  %107 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %108 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %113 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %118 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @memcpy(i32 %111, i32 %116, i32 %123)
  br label %328

125:                                              ; preds = %4, %4
  %126 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %127 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %132 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %137 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %140, %141
  %143 = call i32 @memcpy(i32 %130, i32 %135, i32 %142)
  %144 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %145 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %150 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %155 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = mul nsw i32 %158, %159
  %161 = call i32 @memcpy(i32 %148, i32 %153, i32 %160)
  %162 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %163 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %168 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %173 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %8, align 4
  %178 = mul nsw i32 %176, %177
  %179 = call i32 @memcpy(i32 %166, i32 %171, i32 %178)
  br label %328

180:                                              ; preds = %4
  %181 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %182 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %187 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %192 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %8, align 4
  %197 = mul nsw i32 %195, %196
  %198 = call i32 @memcpy(i32 %185, i32 %190, i32 %197)
  %199 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %200 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %205 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %210 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %8, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sdiv i32 %215, 2
  %217 = call i32 @memcpy(i32 %203, i32 %208, i32 %216)
  %218 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %219 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %224 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %229 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %8, align 4
  %234 = mul nsw i32 %232, %233
  %235 = sdiv i32 %234, 2
  %236 = call i32 @memcpy(i32 %222, i32 %227, i32 %235)
  %237 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %238 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %243 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %248 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %8, align 4
  %253 = mul nsw i32 %251, %252
  %254 = call i32 @memcpy(i32 %241, i32 %246, i32 %253)
  br label %328

255:                                              ; preds = %4, %4
  %256 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %257 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %262 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %267 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %8, align 4
  %272 = mul nsw i32 %270, %271
  %273 = call i32 @memcpy(i32 %260, i32 %265, i32 %272)
  %274 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %275 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %280 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %285 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %8, align 4
  %290 = mul nsw i32 %288, %289
  %291 = call i32 @memcpy(i32 %278, i32 %283, i32 %290)
  %292 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %293 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %298 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %303 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %8, align 4
  %308 = mul nsw i32 %306, %307
  %309 = call i32 @memcpy(i32 %296, i32 %301, i32 %308)
  %310 = load %struct.video_frame*, %struct.video_frame** %5, align 8
  %311 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 3
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %316 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 3
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %321 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 3
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %8, align 4
  %326 = mul nsw i32 %324, %325
  %327 = call i32 @memcpy(i32 %314, i32 %319, i32 %326)
  br label %328

328:                                              ; preds = %10, %4, %255, %180, %125, %106, %68, %11
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
