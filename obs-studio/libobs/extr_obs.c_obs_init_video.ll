; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, %struct.obs_video_info, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.obs_video_info = type { i64, i32, i32, i32, i32, i32 }
%struct.video_output_info = type { i32 }

@obs = common dso_local global %struct.TYPE_3__* null, align 8
@VIDEO_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@VIDEO_OUTPUT_INVALIDPARAM = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid video parameters specified\00", align 1
@OBS_VIDEO_INVALID_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not open video output\00", align 1
@OBS_VIDEO_FAIL = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@obs_graphics_thread = common dso_local global i32 0, align 4
@OBS_VIDEO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_video_info*)* @obs_init_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_video(%struct.obs_video_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_video_info*, align 8
  %4 = alloca %struct.obs_core_video*, align 8
  %5 = alloca %struct.video_output_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.obs_video_info* %0, %struct.obs_video_info** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.obs_core_video* %9, %struct.obs_core_video** %4, align 8
  %10 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %11 = call i32 @make_video_info(%struct.video_output_info* %5, %struct.obs_video_info* %10)
  %12 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %13 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %16 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %18 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %21 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %23 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %26 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %28 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %31 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %33 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %36 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %35, i32 0, i32 7
  store i64 %34, i64* %36, align 8
  %37 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %38 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %41 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %43 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %44 = call i32 @set_video_matrix(%struct.obs_core_video* %42, %struct.obs_video_info* %43)
  %45 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %46 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %45, i32 0, i32 5
  %47 = call i32 @video_output_open(i32* %46, %struct.video_output_info* %5)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @VIDEO_OUTPUT_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %1
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @VIDEO_OUTPUT_INVALIDPARAM, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @LOG_ERROR, align 4
  %57 = call i32 @blog(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @OBS_VIDEO_INVALID_PARAM, align 4
  store i32 %58, i32* %2, align 4
  br label %123

59:                                               ; preds = %51
  %60 = load i32, i32* @LOG_ERROR, align 4
  %61 = call i32 @blog(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %63, i32* %2, align 4
  br label %123

64:                                               ; preds = %1
  %65 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %66 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @gs_enter_context(i32 %67)
  %69 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %70 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %75 = call i32 @obs_init_gpu_conversion(%struct.obs_video_info* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %78, i32* %2, align 4
  br label %123

79:                                               ; preds = %73, %64
  %80 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %81 = call i32 @obs_init_textures(%struct.obs_video_info* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %84, i32* %2, align 4
  br label %123

85:                                               ; preds = %79
  %86 = call i32 (...) @gs_leave_context()
  %87 = call i64 @pthread_mutexattr_init(i32* %6)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %90, i32* %2, align 4
  br label %123

91:                                               ; preds = %85
  %92 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %93 = call i64 @pthread_mutexattr_settype(i32* %6, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %96, i32* %2, align 4
  br label %123

97:                                               ; preds = %91
  %98 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %99 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %98, i32 0, i32 3
  %100 = call i64 @pthread_mutex_init(i32* %99, i32* null)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %103, i32* %2, align 4
  br label %123

104:                                              ; preds = %97
  %105 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %106 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %105, i32 0, i32 2
  %107 = load i32, i32* @obs_graphics_thread, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @obs, align 8
  %109 = call i32 @pthread_create(i32* %106, i32* null, i32 %107, %struct.TYPE_3__* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %113, i32* %2, align 4
  br label %123

114:                                              ; preds = %104
  %115 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %116 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %118 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %117, i32 0, i32 1
  %119 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %120 = bitcast %struct.obs_video_info* %118 to i8*
  %121 = bitcast %struct.obs_video_info* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 32, i1 false)
  %122 = load i32, i32* @OBS_VIDEO_SUCCESS, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %114, %112, %102, %95, %89, %83, %77, %62, %55
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @make_video_info(%struct.video_output_info*, %struct.obs_video_info*) #1

declare dso_local i32 @set_video_matrix(%struct.obs_core_video*, %struct.obs_video_info*) #1

declare dso_local i32 @video_output_open(i32*, %struct.video_output_info*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gs_enter_context(i32) #1

declare dso_local i32 @obs_init_gpu_conversion(%struct.obs_video_info*) #1

declare dso_local i32 @obs_init_textures(%struct.obs_video_info*) #1

declare dso_local i32 @gs_leave_context(...) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
