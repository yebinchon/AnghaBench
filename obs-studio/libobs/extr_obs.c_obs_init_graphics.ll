; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_graphics.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.obs_video_info = type { i32, i32 }
%struct.gs_sampler_info = type { i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@GS_SUCCESS = common dso_local global i32 0, align 4
@OBS_VIDEO_MODULE_NOT_FOUND = common dso_local global i32 0, align 4
@OBS_VIDEO_NOT_SUPPORTED = common dso_local global i32 0, align 4
@OBS_VIDEO_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"default.effect\00", align 1
@GS_DEVICE_OPENGL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"default_rect.effect\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"opaque.effect\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"solid.effect\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"repeat.effect\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"format_conversion.effect\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"bicubic_scale.effect\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"lanczos_scale.effect\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"area.effect\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"bilinear_lowres_scale.effect\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"premultiplied_alpha.effect\00", align 1
@GS_RGBA = common dso_local global i32 0, align 4
@OBS_VIDEO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_video_info*)* @obs_init_graphics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_graphics(%struct.obs_video_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_video_info*, align 8
  %4 = alloca %struct.obs_core_video*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gs_sampler_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.obs_video_info* %0, %struct.obs_video_info** %3, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.obs_core_video* %12, %struct.obs_core_video** %4, align 8
  %13 = bitcast [16 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 64, i1 false)
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  store i32* %14, i32** %6, align 8
  %15 = bitcast %struct.gs_sampler_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  store i32 1, i32* %8, align 4
  %16 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %17 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %16, i32 0, i32 13
  %18 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %19 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %22 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gs_create(i32* %17, i32 %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @GS_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %34 [
    i32 129, label %30
    i32 128, label %32
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @OBS_VIDEO_MODULE_NOT_FOUND, align 4
  store i32 %31, i32* %2, align 4
  br label %194

32:                                               ; preds = %28
  %33 = load i32, i32* @OBS_VIDEO_NOT_SUPPORTED, align 4
  store i32 %33, i32* %2, align 4
  br label %194

34:                                               ; preds = %28
  %35 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %35, i32* %2, align 4
  br label %194

36:                                               ; preds = %1
  %37 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %38 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gs_enter_context(i32 %39)
  %41 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @gs_effect_create_from_file(i8* %42, i32* null)
  %44 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %45 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @bfree(i8* %46)
  %48 = call i64 (...) @gs_get_device_type()
  %49 = load i64, i64* @GS_DEVICE_OPENGL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i8* @gs_effect_create_from_file(i8* %53, i32* null)
  %55 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %56 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @bfree(i8* %57)
  br label %59

59:                                               ; preds = %51, %36
  %60 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @gs_effect_create_from_file(i8* %61, i32* null)
  %63 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %64 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @bfree(i8* %65)
  %67 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i8* @gs_effect_create_from_file(i8* %68, i32* null)
  %70 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %71 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @bfree(i8* %72)
  %74 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i8* @gs_effect_create_from_file(i8* %75, i32* null)
  %77 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %78 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %77, i32 0, i32 12
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @bfree(i8* %79)
  %81 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i8* @gs_effect_create_from_file(i8* %82, i32* null)
  %84 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %85 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @bfree(i8* %86)
  %88 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i8* @gs_effect_create_from_file(i8* %89, i32* null)
  %91 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %92 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %91, i32 0, i32 11
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @bfree(i8* %93)
  %95 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i8* @gs_effect_create_from_file(i8* %96, i32* null)
  %98 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %99 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %98, i32 0, i32 10
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @bfree(i8* %100)
  %102 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i8* @gs_effect_create_from_file(i8* %103, i32* null)
  %105 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %106 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %105, i32 0, i32 9
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @bfree(i8* %107)
  %109 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i8* @gs_effect_create_from_file(i8* %110, i32* null)
  %112 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %113 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @bfree(i8* %114)
  %116 = call i8* @obs_find_data_file(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i8* %116, i8** %10, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i8* @gs_effect_create_from_file(i8* %117, i32* null)
  %119 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %120 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @bfree(i8* %121)
  %123 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %7, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = call i32 @gs_samplerstate_create(%struct.gs_sampler_info* %7)
  %125 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %126 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @GS_RGBA, align 4
  %128 = call i32 @gs_texture_create(i32 2, i32 2, i32 %127, i32 1, i32** %6, i32 0)
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %133 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %132, i32 0, i32 7
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %59
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %59
  %138 = call i64 (...) @gs_get_device_type()
  %139 = load i64, i64* @GS_DEVICE_OPENGL, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %143 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %142, i32 0, i32 6
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %146, %141
  br label %148

148:                                              ; preds = %147, %137
  %149 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %150 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %153, %148
  %155 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %156 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %159, %154
  %161 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %162 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %165, %160
  %167 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %168 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %171, %166
  %173 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %174 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %177, %172
  %179 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %180 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %183, %178
  %185 = call i32 (...) @gs_leave_context()
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* @OBS_VIDEO_SUCCESS, align 4
  br label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %34, %32, %30
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gs_create(i32*, i32, i32) #2

declare dso_local i32 @gs_enter_context(i32) #2

declare dso_local i8* @obs_find_data_file(i8*) #2

declare dso_local i8* @gs_effect_create_from_file(i8*, i32*) #2

declare dso_local i32 @bfree(i8*) #2

declare dso_local i64 @gs_get_device_type(...) #2

declare dso_local i32 @gs_samplerstate_create(%struct.gs_sampler_info*) #2

declare dso_local i32 @gs_texture_create(i32, i32, i32, i32, i32**, i32) #2

declare dso_local i32 @gs_leave_context(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
