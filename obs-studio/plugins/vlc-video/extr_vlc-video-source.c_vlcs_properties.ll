; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_source = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dstr = type { i8*, i32 }
%struct.media_file_data = type { i32 }

@OBS_PROPERTIES_DEFER_UPDATE = common dso_local global i32 0, align 4
@S_LOOP = common dso_local global i32 0, align 4
@T_LOOP = common dso_local global i32 0, align 4
@S_SHUFFLE = common dso_local global i32 0, align 4
@T_SHUFFLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@S_BEHAVIOR = common dso_local global i32 0, align 4
@T_BEHAVIOR = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@T_BEHAVIOR_STOP_RESTART = common dso_local global i32 0, align 4
@S_BEHAVIOR_STOP_RESTART = common dso_local global i32 0, align 4
@T_BEHAVIOR_PAUSE_UNPAUSE = common dso_local global i32 0, align 4
@S_BEHAVIOR_PAUSE_UNPAUSE = common dso_local global i32 0, align 4
@T_BEHAVIOR_ALWAYS_PLAY = common dso_local global i32 0, align 4
@S_BEHAVIOR_ALWAYS_PLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Media Files (\00", align 1
@EXTENSIONS_MEDIA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c");;Video Files (\00", align 1
@EXTENSIONS_VIDEO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c");;Audio Files (\00", align 1
@EXTENSIONS_AUDIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c");;Playlist Files (\00", align 1
@EXTENSIONS_PLAYLIST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@S_PLAYLIST = common dso_local global i32 0, align 4
@T_PLAYLIST = common dso_local global i32 0, align 4
@OBS_EDITABLE_LIST_TYPE_FILES_AND_URLS = common dso_local global i32 0, align 4
@S_NETWORK_CACHING = common dso_local global i32 0, align 4
@T_NETWORK_CACHING = common dso_local global i32 0, align 4
@S_TRACK = common dso_local global i32 0, align 4
@T_TRACK = common dso_local global i32 0, align 4
@S_SUBTITLE_ENABLE = common dso_local global i32 0, align 4
@T_SUBTITLE_ENABLE = common dso_local global i32 0, align 4
@S_SUBTITLE_TRACK = common dso_local global i32 0, align 4
@T_SUBTITLE_TRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @vlcs_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vlcs_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vlc_source*, align 8
  %5 = alloca %struct.dstr, align 8
  %6 = alloca %struct.dstr, align 8
  %7 = alloca %struct.dstr, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.media_file_data*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = call i32* (...) @obs_properties_create()
  store i32* %11, i32** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.vlc_source*
  store %struct.vlc_source* %13, %struct.vlc_source** %4, align 8
  %14 = bitcast %struct.dstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = bitcast %struct.dstr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @OBS_PROPERTIES_DEFER_UPDATE, align 4
  %19 = call i32 @obs_properties_set_flags(i32* %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @S_LOOP, align 4
  %22 = load i32, i32* @T_LOOP, align 4
  %23 = call i32 @obs_properties_add_bool(i32* %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @S_SHUFFLE, align 4
  %26 = load i32, i32* @T_SHUFFLE, align 4
  %27 = call i32 @obs_properties_add_bool(i32* %24, i32 %25, i32 %26)
  %28 = load %struct.vlc_source*, %struct.vlc_source** %4, align 8
  %29 = icmp ne %struct.vlc_source* %28, null
  br i1 %29, label %30, label %70

30:                                               ; preds = %1
  %31 = load %struct.vlc_source*, %struct.vlc_source** %4, align 8
  %32 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  %34 = load %struct.vlc_source*, %struct.vlc_source** %4, align 8
  %35 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %30
  %40 = load %struct.vlc_source*, %struct.vlc_source** %4, align 8
  %41 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.media_file_data* @da_end(i64 %43)
  store %struct.media_file_data* %44, %struct.media_file_data** %9, align 8
  %45 = load %struct.media_file_data*, %struct.media_file_data** %9, align 8
  %46 = getelementptr inbounds %struct.media_file_data, %struct.media_file_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dstr_copy(%struct.dstr* %7, i32 %47)
  %49 = call i32 @dstr_replace(%struct.dstr* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strrchr(i8* %51, i8 signext 47)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %39
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %56 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i32 @dstr_resize(%struct.dstr* %7, i32 %63)
  br label %65

65:                                               ; preds = %55, %39
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.vlc_source*, %struct.vlc_source** %4, align 8
  %68 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %67, i32 0, i32 0
  %69 = call i32 @pthread_mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %1
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @S_BEHAVIOR, align 4
  %73 = load i32, i32* @T_BEHAVIOR, align 4
  %74 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %75 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %76 = call i32* @obs_properties_add_list(i32* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @T_BEHAVIOR_STOP_RESTART, align 4
  %79 = load i32, i32* @S_BEHAVIOR_STOP_RESTART, align 4
  %80 = call i32 @obs_property_list_add_string(i32* %77, i32 %78, i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @T_BEHAVIOR_PAUSE_UNPAUSE, align 4
  %83 = load i32, i32* @S_BEHAVIOR_PAUSE_UNPAUSE, align 4
  %84 = call i32 @obs_property_list_add_string(i32* %81, i32 %82, i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @T_BEHAVIOR_ALWAYS_PLAY, align 4
  %87 = load i32, i32* @S_BEHAVIOR_ALWAYS_PLAY, align 4
  %88 = call i32 @obs_property_list_add_string(i32* %85, i32 %86, i32 %87)
  %89 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EXTENSIONS_MEDIA, align 4
  %91 = call i32 @dstr_copy(%struct.dstr* %6, i32 %90)
  %92 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 @dstr_cat_dstr(%struct.dstr* %5, %struct.dstr* %6)
  %94 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @EXTENSIONS_VIDEO, align 4
  %96 = call i32 @dstr_copy(%struct.dstr* %6, i32 %95)
  %97 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %98 = call i32 @dstr_cat_dstr(%struct.dstr* %5, %struct.dstr* %6)
  %99 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* @EXTENSIONS_AUDIO, align 4
  %101 = call i32 @dstr_copy(%struct.dstr* %6, i32 %100)
  %102 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i32 @dstr_cat_dstr(%struct.dstr* %5, %struct.dstr* %6)
  %104 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %105 = load i32, i32* @EXTENSIONS_PLAYLIST, align 4
  %106 = call i32 @dstr_copy(%struct.dstr* %6, i32 %105)
  %107 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %108 = call i32 @dstr_cat_dstr(%struct.dstr* %5, %struct.dstr* %6)
  %109 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* @S_PLAYLIST, align 4
  %112 = load i32, i32* @T_PLAYLIST, align 4
  %113 = load i32, i32* @OBS_EDITABLE_LIST_TYPE_FILES_AND_URLS, align 4
  %114 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @obs_properties_add_editable_list(i32* %110, i32 %111, i32 %112, i32 %113, i8* %115, i8* %117)
  %119 = call i32 @dstr_free(%struct.dstr* %7)
  %120 = call i32 @dstr_free(%struct.dstr* %5)
  %121 = call i32 @dstr_free(%struct.dstr* %6)
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @S_NETWORK_CACHING, align 4
  %124 = load i32, i32* @T_NETWORK_CACHING, align 4
  %125 = call i32 @obs_properties_add_int(i32* %122, i32 %123, i32 %124, i32 100, i32 60000, i32 10)
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* @S_TRACK, align 4
  %128 = load i32, i32* @T_TRACK, align 4
  %129 = call i32 @obs_properties_add_int(i32* %126, i32 %127, i32 %128, i32 1, i32 10, i32 1)
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @S_SUBTITLE_ENABLE, align 4
  %132 = load i32, i32* @T_SUBTITLE_ENABLE, align 4
  %133 = call i32 @obs_properties_add_bool(i32* %130, i32 %131, i32 %132)
  %134 = load i32*, i32** %3, align 8
  %135 = load i32, i32* @S_SUBTITLE_TRACK, align 4
  %136 = load i32, i32* @T_SUBTITLE_TRACK, align 4
  %137 = call i32 @obs_properties_add_int(i32* %134, i32 %135, i32 %136, i32 1, i32 10, i32 1)
  %138 = load i32*, i32** %3, align 8
  ret i32* %138
}

declare dso_local i32* @obs_properties_create(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @obs_properties_set_flags(i32*, i32) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.media_file_data* @da_end(i64) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dstr_resize(%struct.dstr*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i32) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #1

declare dso_local i32 @obs_properties_add_editable_list(i32*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @obs_properties_add_int(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
