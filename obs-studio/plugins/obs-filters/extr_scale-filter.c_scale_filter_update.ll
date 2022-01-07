; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scale_filter_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.obs_video_info = type { i32, i32 }

@S_RESOLUTION = common dso_local global i32 0, align 4
@S_SAMPLING = common dso_local global i32 0, align 4
@T_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@S_SAMPLING_POINT = common dso_local global i32 0, align 4
@OBS_SCALE_POINT = common dso_local global i32 0, align 4
@S_SAMPLING_BILINEAR = common dso_local global i32 0, align 4
@OBS_SCALE_BILINEAR = common dso_local global i32 0, align 4
@S_SAMPLING_LANCZOS = common dso_local global i32 0, align 4
@OBS_SCALE_LANCZOS = common dso_local global i32 0, align 4
@S_SAMPLING_AREA = common dso_local global i32 0, align 4
@OBS_SCALE_AREA = common dso_local global i32 0, align 4
@OBS_SCALE_BICUBIC = common dso_local global i32 0, align 4
@S_UNDISTORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @scale_filter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_filter_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.scale_filter_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.obs_video_info, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.scale_filter_data*
  store %struct.scale_filter_data* %11, %struct.scale_filter_data** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @S_RESOLUTION, align 4
  %14 = call i8* @obs_data_get_string(i32* %12, i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @S_SAMPLING, align 4
  %17 = call i8* @obs_data_get_string(i32* %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %19 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %21 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @T_BASE, align 4
  %24 = call i64 @strcmp(i8* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = call i32 @obs_get_video_info(%struct.obs_video_info* %9)
  %28 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %29 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %28, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %31 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %35 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %39 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  br label %68

40:                                               ; preds = %2
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %43 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %42, i32 0, i32 6
  %44 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %45 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %44, i32 0, i32 5
  %46 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %43, i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %51 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  br label %67

52:                                               ; preds = %40
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %55 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %54, i32 0, i32 6
  %56 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %57 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %56, i32 0, i32 5
  %58 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %55, i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %63 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %117

64:                                               ; preds = %52
  %65 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %66 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %49
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* @S_SAMPLING_POINT, align 4
  %71 = call i64 @astrcmpi(i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @OBS_SCALE_POINT, align 4
  %75 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %76 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  br label %111

77:                                               ; preds = %68
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* @S_SAMPLING_BILINEAR, align 4
  %80 = call i64 @astrcmpi(i8* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @OBS_SCALE_BILINEAR, align 4
  %84 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %85 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  br label %110

86:                                               ; preds = %77
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* @S_SAMPLING_LANCZOS, align 4
  %89 = call i64 @astrcmpi(i8* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @OBS_SCALE_LANCZOS, align 4
  %93 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %94 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  br label %109

95:                                               ; preds = %86
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* @S_SAMPLING_AREA, align 4
  %98 = call i64 @astrcmpi(i8* %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @OBS_SCALE_AREA, align 4
  %102 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %103 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  br label %108

104:                                              ; preds = %95
  %105 = load i32, i32* @OBS_SCALE_BICUBIC, align 4
  %106 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %107 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %82
  br label %111

111:                                              ; preds = %110, %73
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* @S_UNDISTORT, align 4
  %114 = call i32 @obs_data_get_bool(i32* %112, i32 %113)
  %115 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %116 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %61
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @obs_get_video_info(%struct.obs_video_info*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i64 @astrcmpi(i8*, i32) #1

declare dso_local i32 @obs_data_get_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
