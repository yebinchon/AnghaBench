; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_set_gpu_converted_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_set_gpu_converted_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i64 }
%struct.video_frame = type { i32*, i32* }
%struct.video_data = type { i32**, i32* }
%struct.video_output_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*, %struct.video_frame*, %struct.video_data*, %struct.video_output_info*)* @set_gpu_converted_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gpu_converted_data(%struct.obs_core_video* %0, %struct.video_frame* %1, %struct.video_data* %2, %struct.video_output_info* %3) #0 {
  %5 = alloca %struct.obs_core_video*, align 8
  %6 = alloca %struct.video_frame*, align 8
  %7 = alloca %struct.video_data*, align 8
  %8 = alloca %struct.video_output_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  store %struct.obs_core_video* %0, %struct.obs_core_video** %5, align 8
  store %struct.video_frame* %1, %struct.video_frame** %6, align 8
  store %struct.video_data* %2, %struct.video_data** %7, align 8
  store %struct.video_output_info* %3, %struct.video_output_info** %8, align 8
  %22 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %23 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %4
  %27 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %28 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %31 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.video_data*, %struct.video_data** %7, align 8
  %36 = getelementptr inbounds %struct.video_data, %struct.video_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %41 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.video_data*, %struct.video_data** %7, align 8
  %46 = getelementptr inbounds %struct.video_data, %struct.video_data* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %51 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @set_gpu_converted_plane(i32 %33, i32 %34, i32 %39, i32 %44, i32* %49, i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.video_data*, %struct.video_data** %7, align 8
  %61 = getelementptr inbounds %struct.video_data, %struct.video_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %66 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %72 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @set_gpu_converted_plane(i32 %58, i32 %59, i32 %64, i32 %69, i32* %70, i32 %75)
  br label %294

77:                                               ; preds = %4
  %78 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %79 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %293 [
    i32 139, label %81
    i32 134, label %161
    i32 136, label %216
    i32 135, label %292
    i32 128, label %292
    i32 129, label %292
    i32 132, label %292
    i32 133, label %292
    i32 142, label %292
    i32 141, label %292
    i32 131, label %292
    i32 143, label %292
    i32 138, label %292
    i32 140, label %292
    i32 137, label %292
    i32 130, label %292
    i32 144, label %292
  ]

81:                                               ; preds = %77
  %82 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %83 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %86 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.video_data*, %struct.video_data** %7, align 8
  %91 = getelementptr inbounds %struct.video_data, %struct.video_data* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %96 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.video_data*, %struct.video_data** %7, align 8
  %101 = getelementptr inbounds %struct.video_data, %struct.video_data* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %106 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32* @set_gpu_converted_plane(i32 %88, i32 %89, i32 %94, i32 %99, i32* %104, i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = sdiv i32 %111, 2
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.video_data*, %struct.video_data** %7, align 8
  %118 = getelementptr inbounds %struct.video_data, %struct.video_data* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %123 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.video_data*, %struct.video_data** %7, align 8
  %128 = getelementptr inbounds %struct.video_data, %struct.video_data* %127, i32 0, i32 0
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %133 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32* @set_gpu_converted_plane(i32 %115, i32 %116, i32 %121, i32 %126, i32* %131, i32 %136)
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.video_data*, %struct.video_data** %7, align 8
  %141 = getelementptr inbounds %struct.video_data, %struct.video_data* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %146 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.video_data*, %struct.video_data** %7, align 8
  %151 = getelementptr inbounds %struct.video_data, %struct.video_data* %150, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 2
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %156 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32* @set_gpu_converted_plane(i32 %138, i32 %139, i32 %144, i32 %149, i32* %154, i32 %159)
  br label %293

161:                                              ; preds = %77
  %162 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %163 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %17, align 4
  %165 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %166 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load %struct.video_data*, %struct.video_data** %7, align 8
  %171 = getelementptr inbounds %struct.video_data, %struct.video_data* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %176 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.video_data*, %struct.video_data** %7, align 8
  %181 = getelementptr inbounds %struct.video_data, %struct.video_data* %180, i32 0, i32 0
  %182 = load i32**, i32*** %181, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 0
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %186 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32* @set_gpu_converted_plane(i32 %168, i32 %169, i32 %174, i32 %179, i32* %184, i32 %189)
  %191 = load i32, i32* %18, align 4
  %192 = sdiv i32 %191, 2
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load %struct.video_data*, %struct.video_data** %7, align 8
  %196 = getelementptr inbounds %struct.video_data, %struct.video_data* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %201 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.video_data*, %struct.video_data** %7, align 8
  %206 = getelementptr inbounds %struct.video_data, %struct.video_data* %205, i32 0, i32 0
  %207 = load i32**, i32*** %206, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 1
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %211 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32* @set_gpu_converted_plane(i32 %193, i32 %194, i32 %199, i32 %204, i32* %209, i32 %214)
  br label %293

216:                                              ; preds = %77
  %217 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %218 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %20, align 4
  %220 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %221 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %21, align 4
  %225 = load %struct.video_data*, %struct.video_data** %7, align 8
  %226 = getelementptr inbounds %struct.video_data, %struct.video_data* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %231 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.video_data*, %struct.video_data** %7, align 8
  %236 = getelementptr inbounds %struct.video_data, %struct.video_data* %235, i32 0, i32 0
  %237 = load i32**, i32*** %236, align 8
  %238 = getelementptr inbounds i32*, i32** %237, i64 0
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %241 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32* @set_gpu_converted_plane(i32 %223, i32 %224, i32 %229, i32 %234, i32* %239, i32 %244)
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* %21, align 4
  %248 = load %struct.video_data*, %struct.video_data** %7, align 8
  %249 = getelementptr inbounds %struct.video_data, %struct.video_data* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %254 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.video_data*, %struct.video_data** %7, align 8
  %259 = getelementptr inbounds %struct.video_data, %struct.video_data* %258, i32 0, i32 0
  %260 = load i32**, i32*** %259, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 1
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %264 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32* @set_gpu_converted_plane(i32 %246, i32 %247, i32 %252, i32 %257, i32* %262, i32 %267)
  %269 = load i32, i32* %20, align 4
  %270 = load i32, i32* %21, align 4
  %271 = load %struct.video_data*, %struct.video_data** %7, align 8
  %272 = getelementptr inbounds %struct.video_data, %struct.video_data* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %277 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.video_data*, %struct.video_data** %7, align 8
  %282 = getelementptr inbounds %struct.video_data, %struct.video_data* %281, i32 0, i32 0
  %283 = load i32**, i32*** %282, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 2
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %287 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = call i32* @set_gpu_converted_plane(i32 %269, i32 %270, i32 %275, i32 %280, i32* %285, i32 %290)
  br label %293

292:                                              ; preds = %77, %77, %77, %77, %77, %77, %77, %77, %77, %77, %77, %77, %77, %77
  br label %293

293:                                              ; preds = %292, %77, %216, %161, %81
  br label %294

294:                                              ; preds = %293, %26
  ret void
}

declare dso_local i32* @set_gpu_converted_plane(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
