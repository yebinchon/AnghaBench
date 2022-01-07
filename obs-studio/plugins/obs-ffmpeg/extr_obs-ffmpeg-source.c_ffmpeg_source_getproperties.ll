; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_getproperties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_getproperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { i8* }
%struct.dstr = type { i8*, i32 }

@OBS_PROPERTIES_DEFER_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"is_local_file\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LocalFile\00", align 1
@is_local_file_modified = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"MediaFileFilter.AllMediaFiles\00", align 1
@media_filter = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"MediaFileFilter.VideoFiles\00", align 1
@video_filter = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"MediaFileFilter.AudioFiles\00", align 1
@audio_filter = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"MediaFileFilter.AllFiles\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" (*.*)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"local_file\00", align 1
@OBS_PATH_FILE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"looping\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Looping\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"restart_on_activate\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"RestartWhenActivated\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"buffering_mb\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"BufferingMB\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" MB\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@OBS_TEXT_DEFAULT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"input_format\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"InputFormat\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"hw_decode\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"HardwareDecode\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"clear_on_media_end\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"ClearOnMediaEnd\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"close_when_inactive\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"CloseFileWhenInactive\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"CloseFileWhenInactive.ToolTip\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"speed_percent\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"SpeedPercentage\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"color_range\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"ColorRange\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_INT = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [16 x i8] c"ColorRange.Auto\00", align 1
@VIDEO_RANGE_DEFAULT = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [19 x i8] c"ColorRange.Partial\00", align 1
@VIDEO_RANGE_PARTIAL = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"ColorRange.Full\00", align 1
@VIDEO_RANGE_FULL = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Seekable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @ffmpeg_source_getproperties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ffmpeg_source_getproperties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffmpeg_source*, align 8
  %4 = alloca %struct.dstr, align 8
  %5 = alloca %struct.dstr, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ffmpeg_source*
  store %struct.ffmpeg_source* %10, %struct.ffmpeg_source** %3, align 8
  %11 = bitcast %struct.dstr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = bitcast %struct.dstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @UNUSED_PARAMETER(i8* %13)
  %15 = call i32* (...) @obs_properties_create()
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @OBS_PROPERTIES_DEFER_UPDATE, align 4
  %18 = call i32 @obs_properties_set_flags(i32* %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @obs_module_text(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32* @obs_properties_add_bool(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @is_local_file_modified, align 4
  %24 = call i32 @obs_property_set_modified_callback(i32* %22, i32 %23)
  %25 = call i8* @obs_module_text(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @dstr_copy(%struct.dstr* %4, i8* %25)
  %27 = load i8*, i8** @media_filter, align 8
  %28 = call i32 @dstr_cat(%struct.dstr* %4, i8* %27)
  %29 = call i8* @obs_module_text(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @dstr_cat(%struct.dstr* %4, i8* %29)
  %31 = load i8*, i8** @video_filter, align 8
  %32 = call i32 @dstr_cat(%struct.dstr* %4, i8* %31)
  %33 = call i8* @obs_module_text(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @dstr_cat(%struct.dstr* %4, i8* %33)
  %35 = load i8*, i8** @audio_filter, align 8
  %36 = call i32 @dstr_cat(%struct.dstr* %4, i8* %35)
  %37 = call i8* @obs_module_text(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %38 = call i32 @dstr_cat(%struct.dstr* %4, i8* %37)
  %39 = call i32 @dstr_cat(%struct.dstr* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %40 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %41 = icmp ne %struct.ffmpeg_source* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %1
  %43 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %44 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %49 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %47
  %55 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %56 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @dstr_copy(%struct.dstr* %5, i8* %57)
  %59 = call i32 @dstr_replace(%struct.dstr* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @strrchr(i8* %61, i8 signext 47)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %66 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = add nsw i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = call i32 @dstr_resize(%struct.dstr* %5, i32 %73)
  br label %75

75:                                               ; preds = %65, %54
  br label %76

76:                                               ; preds = %75, %47, %42, %1
  %77 = load i32*, i32** %6, align 8
  %78 = call i8* @obs_module_text(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @OBS_PATH_FILE, align 4
  %80 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @obs_properties_add_path(i32* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %78, i32 %79, i8* %81, i8* %83)
  %85 = call i32 @dstr_free(%struct.dstr* %4)
  %86 = call i32 @dstr_free(%struct.dstr* %5)
  %87 = load i32*, i32** %6, align 8
  %88 = call i8* @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %89 = call i32* @obs_properties_add_bool(i32* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %88)
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i8* @obs_module_text(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %92 = call i32* @obs_properties_add_bool(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i8* @obs_module_text(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %95 = call i32* @obs_properties_add_int_slider(i32* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %94, i32 1, i32 16, i32 1)
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @obs_property_int_set_suffix(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %98 = load i32*, i32** %6, align 8
  %99 = call i8* @obs_module_text(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %100 = load i32, i32* @OBS_TEXT_DEFAULT, align 4
  %101 = call i32 @obs_properties_add_text(i32* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %99, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = call i8* @obs_module_text(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %104 = load i32, i32* @OBS_TEXT_DEFAULT, align 4
  %105 = call i32 @obs_properties_add_text(i32* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %103, i32 %104)
  %106 = load i32*, i32** %6, align 8
  %107 = call i8* @obs_module_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %108 = call i32* @obs_properties_add_bool(i32* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %111 = call i32* @obs_properties_add_bool(i32* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i8* @obs_module_text(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %114 = call i32* @obs_properties_add_bool(i32* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* %113)
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = call i8* @obs_module_text(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  %117 = call i32 @obs_property_set_long_description(i32* %115, i8* %116)
  %118 = load i32*, i32** %6, align 8
  %119 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %120 = call i32* @obs_properties_add_int_slider(i32* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* %119, i32 1, i32 200, i32 1)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @obs_property_int_set_suffix(i32* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %123 = load i32*, i32** %6, align 8
  %124 = call i8* @obs_module_text(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %125 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %126 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %127 = call i32* @obs_properties_add_list(i32* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* %124, i32 %125, i32 %126)
  store i32* %127, i32** %7, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  %130 = load i32, i32* @VIDEO_RANGE_DEFAULT, align 4
  %131 = call i32 @obs_property_list_add_int(i32* %128, i8* %129, i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = call i8* @obs_module_text(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  %134 = load i32, i32* @VIDEO_RANGE_PARTIAL, align 4
  %135 = call i32 @obs_property_list_add_int(i32* %132, i8* %133, i32 %134)
  %136 = load i32*, i32** %7, align 8
  %137 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0))
  %138 = load i32, i32* @VIDEO_RANGE_FULL, align 4
  %139 = call i32 @obs_property_list_add_int(i32* %136, i8* %137, i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = call i8* @obs_module_text(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  %142 = call i32* @obs_properties_add_bool(i32* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* %141)
  %143 = load i32*, i32** %6, align 8
  ret i32* %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #2

declare dso_local i32* @obs_properties_create(...) #2

declare dso_local i32 @obs_properties_set_flags(i32*, i32) #2

declare dso_local i32* @obs_properties_add_bool(i32*, i8*, i8*) #2

declare dso_local i8* @obs_module_text(i8*) #2

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @dstr_resize(%struct.dstr*, i32) #2

declare dso_local i32 @obs_properties_add_path(i32*, i8*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i32* @obs_properties_add_int_slider(i32*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #2

declare dso_local i32 @obs_properties_add_text(i32*, i8*, i8*, i32) #2

declare dso_local i32 @obs_property_set_long_description(i32*, i8*) #2

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @obs_property_list_add_int(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
