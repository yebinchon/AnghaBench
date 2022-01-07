; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_ss_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_ss_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slideshow = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.obs_video_info = type { i64, i64 }
%struct.dstr = type { i8*, i32 }
%struct.image_file_data = type { i32 }

@S_BEHAVIOR = common dso_local global i32 0, align 4
@T_BEHAVIOR = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@T_BEHAVIOR_ALWAYS_PLAY = common dso_local global i8* null, align 8
@S_BEHAVIOR_ALWAYS_PLAY = common dso_local global i8* null, align 8
@T_BEHAVIOR_STOP_RESTART = common dso_local global i8* null, align 8
@S_BEHAVIOR_STOP_RESTART = common dso_local global i8* null, align 8
@T_BEHAVIOR_PAUSE_UNPAUSE = common dso_local global i8* null, align 8
@S_BEHAVIOR_PAUSE_UNPAUSE = common dso_local global i8* null, align 8
@S_MODE = common dso_local global i32 0, align 4
@T_MODE = common dso_local global i32 0, align 4
@T_MODE_AUTO = common dso_local global i8* null, align 8
@S_MODE_AUTO = common dso_local global i8* null, align 8
@T_MODE_MANUAL = common dso_local global i8* null, align 8
@S_MODE_MANUAL = common dso_local global i8* null, align 8
@S_TRANSITION = common dso_local global i32 0, align 4
@T_TRANSITION = common dso_local global i32 0, align 4
@T_TR_CUT = common dso_local global i8* null, align 8
@TR_CUT = common dso_local global i8* null, align 8
@T_TR_FADE = common dso_local global i8* null, align 8
@TR_FADE = common dso_local global i8* null, align 8
@T_TR_SWIPE = common dso_local global i8* null, align 8
@TR_SWIPE = common dso_local global i8* null, align 8
@T_TR_SLIDE = common dso_local global i8* null, align 8
@TR_SLIDE = common dso_local global i8* null, align 8
@S_SLIDE_TIME = common dso_local global i32 0, align 4
@T_SLIDE_TIME = common dso_local global i32 0, align 4
@S_TR_SPEED = common dso_local global i32 0, align 4
@T_TR_SPEED = common dso_local global i32 0, align 4
@S_LOOP = common dso_local global i32 0, align 4
@T_LOOP = common dso_local global i32 0, align 4
@S_HIDE = common dso_local global i32 0, align 4
@T_HIDE = common dso_local global i32 0, align 4
@S_RANDOMIZE = common dso_local global i32 0, align 4
@T_RANDOMIZE = common dso_local global i32 0, align 4
@S_CUSTOM_SIZE = common dso_local global i32 0, align 4
@T_CUSTOM_SIZE = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_EDITABLE = common dso_local global i32 0, align 4
@T_CUSTOM_SIZE_AUTO = common dso_local global i8* null, align 8
@NUM_ASPECTS = common dso_local global i64 0, align 8
@aspects = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@S_FILES = common dso_local global i32 0, align 4
@T_FILES = common dso_local global i32 0, align 4
@OBS_EDITABLE_LIST_TYPE_FILES = common dso_local global i32 0, align 4
@file_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @ss_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ss_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.slideshow*, align 8
  %5 = alloca %struct.obs_video_info, align 8
  %6 = alloca %struct.dstr, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca %struct.image_file_data*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %14 = call i32* (...) @obs_properties_create()
  store i32* %14, i32** %3, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.slideshow*
  store %struct.slideshow* %16, %struct.slideshow** %4, align 8
  %17 = bitcast %struct.dstr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = call i32 @obs_get_video_info(%struct.obs_video_info* %5)
  %19 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %5, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @S_BEHAVIOR, align 4
  %27 = load i32, i32* @T_BEHAVIOR, align 4
  %28 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %29 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %30 = call i32* @obs_properties_add_list(i32* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i8*, i8** @T_BEHAVIOR_ALWAYS_PLAY, align 8
  %33 = load i8*, i8** @S_BEHAVIOR_ALWAYS_PLAY, align 8
  %34 = call i32 @obs_property_list_add_string(i32* %31, i8* %32, i8* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** @T_BEHAVIOR_STOP_RESTART, align 8
  %37 = load i8*, i8** @S_BEHAVIOR_STOP_RESTART, align 8
  %38 = call i32 @obs_property_list_add_string(i32* %35, i8* %36, i8* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i8*, i8** @T_BEHAVIOR_PAUSE_UNPAUSE, align 8
  %41 = load i8*, i8** @S_BEHAVIOR_PAUSE_UNPAUSE, align 8
  %42 = call i32 @obs_property_list_add_string(i32* %39, i8* %40, i8* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @S_MODE, align 4
  %45 = load i32, i32* @T_MODE, align 4
  %46 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %47 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %48 = call i32* @obs_properties_add_list(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** @T_MODE_AUTO, align 8
  %51 = load i8*, i8** @S_MODE_AUTO, align 8
  %52 = call i32 @obs_property_list_add_string(i32* %49, i8* %50, i8* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** @T_MODE_MANUAL, align 8
  %55 = load i8*, i8** @S_MODE_MANUAL, align 8
  %56 = call i32 @obs_property_list_add_string(i32* %53, i8* %54, i8* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @S_TRANSITION, align 4
  %59 = load i32, i32* @T_TRANSITION, align 4
  %60 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %61 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %62 = call i32* @obs_properties_add_list(i32* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** @T_TR_CUT, align 8
  %65 = load i8*, i8** @TR_CUT, align 8
  %66 = call i32 @obs_property_list_add_string(i32* %63, i8* %64, i8* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** @T_TR_FADE, align 8
  %69 = load i8*, i8** @TR_FADE, align 8
  %70 = call i32 @obs_property_list_add_string(i32* %67, i8* %68, i8* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i8*, i8** @T_TR_SWIPE, align 8
  %73 = load i8*, i8** @TR_SWIPE, align 8
  %74 = call i32 @obs_property_list_add_string(i32* %71, i8* %72, i8* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** @T_TR_SLIDE, align 8
  %77 = load i8*, i8** @TR_SLIDE, align 8
  %78 = call i32 @obs_property_list_add_string(i32* %75, i8* %76, i8* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @S_SLIDE_TIME, align 4
  %81 = load i32, i32* @T_SLIDE_TIME, align 4
  %82 = call i32 @obs_properties_add_int(i32* %79, i32 %80, i32 %81, i32 50, i32 3600000, i32 50)
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* @S_TR_SPEED, align 4
  %85 = load i32, i32* @T_TR_SPEED, align 4
  %86 = call i32 @obs_properties_add_int(i32* %83, i32 %84, i32 %85, i32 0, i32 3600000, i32 50)
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @S_LOOP, align 4
  %89 = load i32, i32* @T_LOOP, align 4
  %90 = call i32 @obs_properties_add_bool(i32* %87, i32 %88, i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @S_HIDE, align 4
  %93 = load i32, i32* @T_HIDE, align 4
  %94 = call i32 @obs_properties_add_bool(i32* %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @S_RANDOMIZE, align 4
  %97 = load i32, i32* @T_RANDOMIZE, align 4
  %98 = call i32 @obs_properties_add_bool(i32* %95, i32 %96, i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @S_CUSTOM_SIZE, align 4
  %101 = load i32, i32* @T_CUSTOM_SIZE, align 4
  %102 = load i32, i32* @OBS_COMBO_TYPE_EDITABLE, align 4
  %103 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %104 = call i32* @obs_properties_add_list(i32* %99, i32 %100, i32 %101, i32 %102, i32 %103)
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i8*, i8** @T_CUSTOM_SIZE_AUTO, align 8
  %107 = load i8*, i8** @T_CUSTOM_SIZE_AUTO, align 8
  %108 = call i32 @obs_property_list_add_string(i32* %105, i8* %106, i8* %107)
  store i64 0, i64* %10, align 8
  br label %109

109:                                              ; preds = %124, %1
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @NUM_ASPECTS, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i32*, i32** %7, align 8
  %115 = load i8**, i8*** @aspects, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** @aspects, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @obs_property_list_add_string(i32* %114, i8* %118, i8* %122)
  br label %124

124:                                              ; preds = %113
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %109

127:                                              ; preds = %109
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @snprintf(i8* %128, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %135 = call i32 @obs_property_list_add_string(i32* %132, i8* %133, i8* %134)
  %136 = load %struct.slideshow*, %struct.slideshow** %4, align 8
  %137 = icmp ne %struct.slideshow* %136, null
  br i1 %137, label %138, label %178

138:                                              ; preds = %127
  %139 = load %struct.slideshow*, %struct.slideshow** %4, align 8
  %140 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %139, i32 0, i32 0
  %141 = call i32 @pthread_mutex_lock(i32* %140)
  %142 = load %struct.slideshow*, %struct.slideshow** %4, align 8
  %143 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %138
  %148 = load %struct.slideshow*, %struct.slideshow** %4, align 8
  %149 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.image_file_data* @da_end(i64 %151)
  store %struct.image_file_data* %152, %struct.image_file_data** %12, align 8
  %153 = load %struct.image_file_data*, %struct.image_file_data** %12, align 8
  %154 = getelementptr inbounds %struct.image_file_data, %struct.image_file_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @dstr_copy(%struct.dstr* %6, i32 %155)
  %157 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %158 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @strrchr(i8* %159, i8 signext 47)
  store i8* %160, i8** %13, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %173

163:                                              ; preds = %147
  %164 = load i8*, i8** %13, align 8
  %165 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = ptrtoint i8* %164 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = add nsw i64 %169, 1
  %171 = trunc i64 %170 to i32
  %172 = call i32 @dstr_resize(%struct.dstr* %6, i32 %171)
  br label %173

173:                                              ; preds = %163, %147
  br label %174

174:                                              ; preds = %173, %138
  %175 = load %struct.slideshow*, %struct.slideshow** %4, align 8
  %176 = getelementptr inbounds %struct.slideshow, %struct.slideshow* %175, i32 0, i32 0
  %177 = call i32 @pthread_mutex_unlock(i32* %176)
  br label %178

178:                                              ; preds = %174, %127
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* @S_FILES, align 4
  %181 = load i32, i32* @T_FILES, align 4
  %182 = load i32, i32* @OBS_EDITABLE_LIST_TYPE_FILES, align 4
  %183 = load i32, i32* @file_filter, align 4
  %184 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @obs_properties_add_editable_list(i32* %179, i32 %180, i32 %181, i32 %182, i32 %183, i8* %185)
  %187 = call i32 @dstr_free(%struct.dstr* %6)
  %188 = load i32*, i32** %3, align 8
  ret i32* %188
}

declare dso_local i32* @obs_properties_create(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @obs_get_video_info(%struct.obs_video_info*) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @obs_properties_add_int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.image_file_data* @da_end(i64) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dstr_resize(%struct.dstr*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_properties_add_editable_list(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
