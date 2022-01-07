; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_save_source.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_save_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, %struct.TYPE_27__, i32*, %struct.TYPE_26__ }
%struct.TYPE_28__ = type { i64, %struct.TYPE_29__** }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"prev_ver\00", align 1
@LIBOBS_API_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mixers\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"balance\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"muted\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"push-to-mute\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"push-to-mute-delay\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"push-to-talk\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"push-to-talk-delay\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"hotkeys\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"deinterlace_mode\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"deinterlace_field_order\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"monitoring_type\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"private_settings\00", align 1
@OBS_SOURCE_TYPE_TRANSITION = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"filters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_save_source(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_29__*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %27 = call i32* (...) @obs_data_array_create()
  store i32* %27, i32** %3, align 8
  %28 = call i32* (...) @obs_data_create()
  store i32* %28, i32** %4, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %30 = call i32* @obs_source_get_settings(%struct.TYPE_29__* %29)
  store i32* %30, i32** %5, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %6, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %36 = call float @obs_source_get_volume(%struct.TYPE_29__* %35)
  store float %36, float* %8, align 4
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %38 = call float @obs_source_get_balance_value(%struct.TYPE_29__* %37)
  store float %38, float* %9, align 4
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %40 = call i32 @obs_source_get_audio_mixers(%struct.TYPE_29__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %42 = call i32 @obs_source_get_sync_offset(%struct.TYPE_29__* %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %44 = call i32 @obs_source_get_flags(%struct.TYPE_29__* %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %46 = call i8* @obs_source_get_name(%struct.TYPE_29__* %45)
  store i8* %46, i8** %13, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %48 = call i8* @obs_source_get_id(%struct.TYPE_29__* %47)
  store i8* %48, i8** %14, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %50 = call i32 @obs_source_enabled(%struct.TYPE_29__* %49)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %52 = call i32 @obs_source_muted(%struct.TYPE_29__* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %54 = call i32 @obs_source_push_to_mute_enabled(%struct.TYPE_29__* %53)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %56 = call i32 @obs_source_get_push_to_mute_delay(%struct.TYPE_29__* %55)
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %58 = call i32 @obs_source_push_to_talk_enabled(%struct.TYPE_29__* %57)
  store i32 %58, i32* %19, align 4
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %60 = call i32 @obs_source_get_push_to_talk_delay(%struct.TYPE_29__* %59)
  store i32 %60, i32* %20, align 4
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %62 = call i64 @obs_source_get_monitoring_type(%struct.TYPE_29__* %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %21, align 4
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %65 = call i64 @obs_source_get_deinterlace_mode(%struct.TYPE_29__* %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %22, align 4
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %68 = call i64 @obs_source_get_deinterlace_field_order(%struct.TYPE_29__* %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %23, align 4
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %71 = call i32 @obs_source_save(%struct.TYPE_29__* %70)
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %73 = call i32* @obs_hotkeys_save_source(%struct.TYPE_29__* %72)
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %1
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @obs_data_release(i32* %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  %83 = load i32*, i32** %7, align 8
  store i32* %83, i32** %6, align 8
  br label %84

84:                                               ; preds = %76, %1
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @LIBOBS_API_VER, align 4
  %87 = call i32 @obs_data_set_int(i32* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @obs_data_set_string(i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @obs_data_set_string(i32* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @obs_data_set_obj(i32* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @obs_data_set_int(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @obs_data_set_int(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @obs_data_set_int(i32* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load float, float* %8, align 4
  %108 = call i32 @obs_data_set_double(i32* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), float %107)
  %109 = load i32*, i32** %4, align 8
  %110 = load float, float* %9, align 4
  %111 = call i32 @obs_data_set_double(i32* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), float %110)
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @obs_data_set_bool(i32* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @obs_data_set_bool(i32* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @obs_data_set_bool(i32* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @obs_data_set_int(i32* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @obs_data_set_bool(i32* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @obs_data_set_int(i32* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @obs_data_set_obj(i32* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @obs_data_set_int(i32* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %23, align 4
  %138 = call i32 @obs_data_set_int(i32* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %137)
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @obs_data_set_int(i32* %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @obs_data_set_obj(i32* %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32* %145)
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @OBS_SOURCE_TYPE_TRANSITION, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %84
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @obs_transition_save(%struct.TYPE_29__* %154, i32* %155)
  br label %157

157:                                              ; preds = %153, %84
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 0
  %160 = call i32 @pthread_mutex_lock(i32* %159)
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %157
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %24, align 8
  br label %171

171:                                              ; preds = %190, %166
  %172 = load i64, i64* %24, align 8
  %173 = icmp ugt i64 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %177, align 8
  %179 = load i64, i64* %24, align 8
  %180 = sub i64 %179, 1
  %181 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %178, i64 %180
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %181, align 8
  store %struct.TYPE_29__* %182, %struct.TYPE_29__** %25, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %184 = call i32* @obs_save_source(%struct.TYPE_29__* %183)
  store i32* %184, i32** %26, align 8
  %185 = load i32*, i32** %3, align 8
  %186 = load i32*, i32** %26, align 8
  %187 = call i32 @obs_data_array_push_back(i32* %185, i32* %186)
  %188 = load i32*, i32** %26, align 8
  %189 = call i32 @obs_data_release(i32* %188)
  br label %190

190:                                              ; preds = %174
  %191 = load i64, i64* %24, align 8
  %192 = add i64 %191, -1
  store i64 %192, i64* %24, align 8
  br label %171

193:                                              ; preds = %171
  %194 = load i32*, i32** %4, align 8
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @obs_data_set_array(i32* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32* %195)
  br label %197

197:                                              ; preds = %193, %157
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 0
  %200 = call i32 @pthread_mutex_unlock(i32* %199)
  %201 = load i32*, i32** %5, align 8
  %202 = call i32 @obs_data_release(i32* %201)
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @obs_data_array_release(i32* %203)
  %205 = load i32*, i32** %4, align 8
  ret i32* %205
}

declare dso_local i32* @obs_data_array_create(...) #1

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i32* @obs_source_get_settings(%struct.TYPE_29__*) #1

declare dso_local float @obs_source_get_volume(%struct.TYPE_29__*) #1

declare dso_local float @obs_source_get_balance_value(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_get_audio_mixers(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_get_sync_offset(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_get_flags(%struct.TYPE_29__*) #1

declare dso_local i8* @obs_source_get_name(%struct.TYPE_29__*) #1

declare dso_local i8* @obs_source_get_id(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_enabled(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_muted(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_push_to_mute_enabled(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_get_push_to_mute_delay(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_push_to_talk_enabled(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_get_push_to_talk_delay(%struct.TYPE_29__*) #1

declare dso_local i64 @obs_source_get_monitoring_type(%struct.TYPE_29__*) #1

declare dso_local i64 @obs_source_get_deinterlace_mode(%struct.TYPE_29__*) #1

declare dso_local i64 @obs_source_get_deinterlace_field_order(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_source_save(%struct.TYPE_29__*) #1

declare dso_local i32* @obs_hotkeys_save_source(%struct.TYPE_29__*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @obs_data_set_int(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @obs_data_set_obj(i32*, i8*, i32*) #1

declare dso_local i32 @obs_data_set_double(i32*, i8*, float) #1

declare dso_local i32 @obs_data_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_transition_save(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @obs_data_array_push_back(i32*, i32*) #1

declare dso_local i32 @obs_data_set_array(i32*, i8*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
