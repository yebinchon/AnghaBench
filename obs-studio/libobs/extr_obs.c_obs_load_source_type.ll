; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_load_source_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_load_source_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"hotkeys\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"prev_ver\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"balance\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"mixers\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"muted\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"push-to-mute\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"push-to-mute-delay\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"push-to-talk\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"push-to-talk-delay\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"deinterlace_mode\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"deinterlace_field_order\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"monitoring_type\00", align 1
@OBS_SOURCE_MONITOR_BY_DEFAULT = common dso_local global i64 0, align 8
@OBS_MONITORING_TYPE_MONITOR_ONLY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"private_settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i32*)* @obs_load_source_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @obs_load_source_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @obs_data_get_array(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @obs_data_get_string(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %5, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i8* @obs_data_get_string(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i8* @obs_data_get_obj(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i8* @obs_data_get_obj(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @obs_data_get_int(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i64 %36, i64* %12, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call %struct.TYPE_22__* @obs_source_create_set_last_ver(i8* %37, i8* %38, i32* %39, i32* %40, i64 %41)
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %4, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @obs_data_release(i32* %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = call i64 @obs_source_get_output_flags(%struct.TYPE_22__* %45)
  store i64 %46, i64* %13, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @obs_data_set_default_double(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), double 1.000000e+00)
  %49 = load i32*, i32** %2, align 8
  %50 = call double @obs_data_get_double(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store double %50, double* %9, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = load double, double* %9, align 8
  %53 = fptrunc double %52 to float
  %54 = call i32 @obs_source_set_volume(%struct.TYPE_22__* %51, float %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @obs_data_set_default_double(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), double 5.000000e-01)
  %57 = load i32*, i32** %2, align 8
  %58 = call double @obs_data_get_double(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store double %58, double* %10, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = load double, double* %10, align 8
  %61 = fptrunc double %60 to float
  %62 = call i32 @obs_source_set_balance_value(%struct.TYPE_22__* %59, float %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i64 @obs_data_get_int(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i64 %64, i64* %11, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @obs_source_set_sync_offset(%struct.TYPE_22__* %65, i64 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @obs_data_set_default_int(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 63)
  %70 = load i32*, i32** %2, align 8
  %71 = call i64 @obs_data_get_int(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i64 %71, i64* %15, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = load i64, i64* %15, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @obs_source_set_audio_mixers(%struct.TYPE_22__* %72, i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @obs_data_set_default_int(i32* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i64 @obs_data_get_int(i32* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i64 %82, i64* %14, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @obs_source_set_flags(%struct.TYPE_22__* %83, i64 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @obs_data_set_default_bool(i32* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @obs_data_get_bool(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %91 = call i32 @obs_source_set_enabled(%struct.TYPE_22__* %88, i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @obs_data_set_default_bool(i32* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @obs_data_get_bool(i32* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %97 = call i32 @obs_source_set_muted(%struct.TYPE_22__* %94, i32 %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @obs_data_set_default_bool(i32* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @obs_data_get_bool(i32* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %103 = call i32 @obs_source_enable_push_to_mute(%struct.TYPE_22__* %100, i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @obs_data_set_default_int(i32* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %107 = load i32*, i32** %2, align 8
  %108 = call i64 @obs_data_get_int(i32* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %109 = call i32 @obs_source_set_push_to_mute_delay(%struct.TYPE_22__* %106, i64 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @obs_data_set_default_bool(i32* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @obs_data_get_bool(i32* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %115 = call i32 @obs_source_enable_push_to_talk(%struct.TYPE_22__* %112, i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @obs_data_set_default_int(i32* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %119 = load i32*, i32** %2, align 8
  %120 = call i64 @obs_data_get_int(i32* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %121 = call i32 @obs_source_set_push_to_talk_delay(%struct.TYPE_22__* %118, i64 %120)
  %122 = load i32*, i32** %2, align 8
  %123 = call i64 @obs_data_get_int(i32* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %17, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @obs_source_set_deinterlace_mode(%struct.TYPE_22__* %125, i32 %126)
  %128 = load i32*, i32** %2, align 8
  %129 = call i64 @obs_data_get_int(i32* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %16, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @obs_source_set_deinterlace_field_order(%struct.TYPE_22__* %131, i32 %132)
  %134 = load i32*, i32** %2, align 8
  %135 = call i64 @obs_data_get_int(i32* %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %18, align 4
  %137 = load i64, i64* %12, align 8
  %138 = call i64 @MAKE_SEMANTIC_VERSION(i32 23, i32 2, i32 2)
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %1
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* @OBS_SOURCE_MONITOR_BY_DEFAULT, align 8
  %143 = and i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* @OBS_MONITORING_TYPE_MONITOR_ONLY, align 4
  store i32 %146, i32* %18, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = call i32 @obs_source_set_audio_mixers(%struct.TYPE_22__* %147, i32 63)
  br label %149

149:                                              ; preds = %145, %140
  br label %150

150:                                              ; preds = %149, %1
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @obs_source_set_monitoring_type(%struct.TYPE_22__* %151, i32 %152)
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @obs_data_release(i32* %156)
  %158 = load i32*, i32** %2, align 8
  %159 = call i8* @obs_data_get_obj(i32* %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  store i32* %160, i32** %162, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %150
  %168 = call i32* (...) @obs_data_create()
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  br label %171

171:                                              ; preds = %167, %150
  %172 = load i32*, i32** %3, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %204

174:                                              ; preds = %171
  %175 = load i32*, i32** %3, align 8
  %176 = call i64 @obs_data_array_count(i32* %175)
  store i64 %176, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %177

177:                                              ; preds = %198, %174
  %178 = load i64, i64* %20, align 8
  %179 = load i64, i64* %19, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %177
  %182 = load i32*, i32** %3, align 8
  %183 = load i64, i64* %20, align 8
  %184 = call i32* @obs_data_array_item(i32* %182, i64 %183)
  store i32* %184, i32** %21, align 8
  %185 = load i32*, i32** %21, align 8
  %186 = call %struct.TYPE_22__* @obs_load_source_type(i32* %185)
  store %struct.TYPE_22__* %186, %struct.TYPE_22__** %22, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %188 = icmp ne %struct.TYPE_22__* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %192 = call i32 @obs_source_filter_add(%struct.TYPE_22__* %190, %struct.TYPE_22__* %191)
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %194 = call i32 @obs_source_release(%struct.TYPE_22__* %193)
  br label %195

195:                                              ; preds = %189, %181
  %196 = load i32*, i32** %21, align 8
  %197 = call i32 @obs_data_release(i32* %196)
  br label %198

198:                                              ; preds = %195
  %199 = load i64, i64* %20, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %20, align 8
  br label %177

201:                                              ; preds = %177
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @obs_data_array_release(i32* %202)
  br label %204

204:                                              ; preds = %201, %171
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @obs_data_release(i32* %205)
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %207
}

declare dso_local i32* @obs_data_get_array(i32*, i8*) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i8* @obs_data_get_obj(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local %struct.TYPE_22__* @obs_source_create_set_last_ver(i8*, i8*, i32*, i32*, i64) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i64 @obs_source_get_output_flags(%struct.TYPE_22__*) #1

declare dso_local i32 @obs_data_set_default_double(i32*, i8*, double) #1

declare dso_local double @obs_data_get_double(i32*, i8*) #1

declare dso_local i32 @obs_source_set_volume(%struct.TYPE_22__*, float) #1

declare dso_local i32 @obs_source_set_balance_value(%struct.TYPE_22__*, float) #1

declare dso_local i32 @obs_source_set_sync_offset(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i8*, i32) #1

declare dso_local i32 @obs_source_set_audio_mixers(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @obs_source_set_flags(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @obs_data_set_default_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_source_set_enabled(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

declare dso_local i32 @obs_source_set_muted(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @obs_source_enable_push_to_mute(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @obs_source_set_push_to_mute_delay(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @obs_source_enable_push_to_talk(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @obs_source_set_push_to_talk_delay(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @obs_source_set_deinterlace_mode(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @obs_source_set_deinterlace_field_order(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @MAKE_SEMANTIC_VERSION(i32, i32, i32) #1

declare dso_local i32 @obs_source_set_monitoring_type(%struct.TYPE_22__*, i32) #1

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i64 @obs_data_array_count(i32*) #1

declare dso_local i32* @obs_data_array_item(i32*, i64) #1

declare dso_local i32 @obs_source_filter_add(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @obs_source_release(%struct.TYPE_22__*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
