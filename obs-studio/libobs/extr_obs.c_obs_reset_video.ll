; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_reset_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_reset_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, i64 }
%struct.obs_video_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@OBS_VIDEO_FAIL = common dso_local global i32 0, align 4
@OBS_VIDEO_CURRENTLY_ACTIVE = common dso_local global i32 0, align 4
@OBS_VIDEO_INVALID_PARAM = common dso_local global i32 0, align 4
@OBS_VIDEO_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Bicubic\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Bilinear\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Lanczos\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"---------------------------------\00", align 1
@.str.8 = private unnamed_addr constant [173 x i8] c"video settings reset:\0A\09base resolution:   %dx%d\0A\09output resolution: %dx%d\0A\09downscale filter:  %s\0A\09fps:               %d/%d\0A\09format:            %s\0A\09YUV mode:          %s%s%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_reset_video(%struct.obs_video_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_video_info*, align 8
  %4 = alloca %struct.obs_core_video*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.obs_video_info* %0, %struct.obs_video_info** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @OBS_VIDEO_FAIL, align 4
  store i32 %13, i32* %2, align 4
  br label %145

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = call i64 (...) @obs_video_active()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @OBS_VIDEO_CURRENTLY_ACTIVE, align 4
  store i32 %24, i32* %2, align 4
  br label %145

25:                                               ; preds = %20, %14
  %26 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %27 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %30 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @size_valid(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %36 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %39 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @size_valid(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34, %25
  %44 = load i32, i32* @OBS_VIDEO_INVALID_PARAM, align 4
  store i32 %44, i32* %2, align 4
  br label %145

45:                                               ; preds = %34
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.obs_core_video* %47, %struct.obs_core_video** %4, align 8
  %48 = call i32 (...) @stop_video()
  %49 = call i32 (...) @obs_free_video()
  %50 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %51 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -4
  store i32 %53, i32* %51, align 4
  %54 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %55 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -2
  store i32 %57, i32* %55, align 4
  %58 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %59 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %45
  %63 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %64 = call i32 @obs_init_graphics(%struct.obs_video_info* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @OBS_VIDEO_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = call i32 (...) @obs_free_graphics()
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %145

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %73 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %74 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %82 [
    i32 130, label %76
    i32 128, label %77
    i32 132, label %78
    i32 131, label %79
    i32 129, label %80
    i32 133, label %81
  ]

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %82

77:                                               ; preds = %72
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %82

78:                                               ; preds = %72
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %82

79:                                               ; preds = %72
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %82

80:                                               ; preds = %72
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %82

81:                                               ; preds = %72
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %82

82:                                               ; preds = %72, %81, %80, %79, %78, %77, %76
  %83 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %84 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @format_is_yuv(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %88 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @get_video_colorspace_name(i32 %89)
  store i8* %90, i8** %8, align 8
  %91 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %92 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %95 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @get_video_range_name(i32 %93, i32 %96)
  store i8* %97, i8** %9, align 8
  %98 = load i32, i32* @LOG_INFO, align 4
  %99 = call i32 (i32, i8*, ...) @blog(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* @LOG_INFO, align 4
  %101 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %102 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %105 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %108 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %111 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %115 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %118 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %121 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @get_video_format_name(i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %82
  %127 = load i8*, i8** %8, align 8
  br label %129

128:                                              ; preds = %82
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i8* [ %127, %126 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %128 ]
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i8*, i8** %9, align 8
  br label %140

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i8* [ %138, %137 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %139 ]
  %142 = call i32 (i32, i8*, ...) @blog(i32 %100, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.8, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i32 %112, i8* %113, i32 %116, i32 %119, i32 %123, i8* %130, i8* %134, i8* %141)
  %143 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %144 = call i32 @obs_init_video(%struct.obs_video_info* %143)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %140, %68, %43, %23, %12
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i64 @obs_video_active(...) #1

declare dso_local i32 @size_valid(i32, i32) #1

declare dso_local i32 @stop_video(...) #1

declare dso_local i32 @obs_free_video(...) #1

declare dso_local i32 @obs_init_graphics(%struct.obs_video_info*) #1

declare dso_local i32 @obs_free_graphics(...) #1

declare dso_local i32 @format_is_yuv(i32) #1

declare dso_local i8* @get_video_colorspace_name(i32) #1

declare dso_local i8* @get_video_range_name(i32, i32) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @get_video_format_name(i32) #1

declare dso_local i32 @obs_init_video(%struct.obs_video_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
