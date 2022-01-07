; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_add_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_add_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, %struct.obs_scene_item*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.obs_scene_item = type { i32, i32, i32, i32, i32, i32, %struct.obs_scene_item*, %struct.obs_scene_item*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*, i64, %struct.TYPE_20__* }
%struct.item_action = type { i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Tried to add a NULL source to a scene\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create scene item mutex\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Failed to add source to scene due to infinite source recursion\00", align 1
@OBS_ALIGN_TOP = common dso_local global i32 0, align 4
@OBS_ALIGN_LEFT = common dso_local global i32 0, align 4
@group_info = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@OBS_INVALID_HOTKEY_PAIR_ID = common dso_local global i32 0, align 4
@GS_RGBA = common dso_local global i32 0, align 4
@GS_ZS_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@sceneitem_renamed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_scene_item* (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.obs_scene_item*)* @obs_scene_add_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_scene_item* @obs_scene_add_internal(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.obs_scene_item* %2) #0 {
  %4 = alloca %struct.obs_scene_item*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.obs_scene_item*, align 8
  %8 = alloca %struct.obs_scene_item*, align 8
  %9 = alloca %struct.obs_scene_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.item_action, align 4
  %12 = alloca %struct.obs_scene_item*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.obs_scene_item* %2, %struct.obs_scene_item** %7, align 8
  %13 = getelementptr inbounds %struct.item_action, %struct.item_action* %11, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.item_action, %struct.item_action* %11, i32 0, i32 1
  %15 = call i32 (...) @os_gettime_ns()
  store i32 %15, i32* %14, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = icmp ne %struct.TYPE_21__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.obs_scene_item* null, %struct.obs_scene_item** %4, align 8
  br label %202

19:                                               ; preds = %3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @LOG_ERROR, align 4
  %24 = call i32 @blog(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.obs_scene_item* null, %struct.obs_scene_item** %4, align 8
  br label %202

25:                                               ; preds = %19
  %26 = call i64 @pthread_mutex_init(i32* %10, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @LOG_WARNING, align 4
  %30 = call i32 @blog(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.obs_scene_item* null, %struct.obs_scene_item** %4, align 8
  br label %202

31:                                               ; preds = %25
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = call i32 @obs_source_add_active_child(%struct.TYPE_22__* %34, %struct.TYPE_20__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @LOG_WARNING, align 4
  %40 = call i32 @blog(i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @pthread_mutex_destroy(i32* %10)
  store %struct.obs_scene_item* null, %struct.obs_scene_item** %4, align 8
  br label %202

42:                                               ; preds = %31
  %43 = call %struct.obs_scene_item* @bzalloc(i32 104)
  store %struct.obs_scene_item* %43, %struct.obs_scene_item** %9, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %46 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %45, i32 0, i32 19
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %46, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %52 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %51, i32 0, i32 18
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %55 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %54, i32 0, i32 17
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %55, align 8
  %56 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %57 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @OBS_ALIGN_TOP, align 4
  %59 = load i32, i32* @OBS_ALIGN_LEFT, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %62 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %65 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %64, i32 0, i32 16
  store i32 %63, i32* %65, align 8
  %66 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %67 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %69 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @group_info, i32 0, i32 0), align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %78 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = call i32 (...) @obs_data_create()
  %80 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %81 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %80, i32 0, i32 15
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @OBS_INVALID_HOTKEY_PAIR_ID, align 4
  %83 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %84 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %83, i32 0, i32 14
  store i32 %82, i32* %84, align 8
  %85 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %86 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %85, i32 0, i32 13
  %87 = call i32 @os_atomic_set_long(i32* %86, i32 1)
  %88 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %89 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %88, i32 0, i32 12
  %90 = call i32 @vec2_set(i32* %89, float 1.000000e+00, float 1.000000e+00)
  %91 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %92 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %91, i32 0, i32 11
  %93 = call i32 @matrix4_identity(i32* %92)
  %94 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %95 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %94, i32 0, i32 10
  %96 = call i32 @matrix4_identity(i32* %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = call i32 @obs_source_addref(%struct.TYPE_20__* %97)
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = call i64 @source_has_audio(%struct.TYPE_20__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %42
  %103 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %104 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %103, i32 0, i32 5
  store i32 0, i32* %104, align 4
  %105 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %106 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @da_push_back(i32 %107, %struct.item_action* %11)
  br label %112

109:                                              ; preds = %42
  %110 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %111 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %110, i32 0, i32 5
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %114 = call i64 @item_texture_enabled(%struct.obs_scene_item* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = call i32 (...) @obs_enter_graphics()
  %118 = load i32, i32* @GS_RGBA, align 4
  %119 = load i32, i32* @GS_ZS_NONE, align 4
  %120 = call i32 @gs_texrender_create(i32 %118, i32 %119)
  %121 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %122 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  %123 = call i32 (...) @obs_leave_graphics()
  br label %124

124:                                              ; preds = %116, %112
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = call i32 @full_lock(%struct.TYPE_21__* %125)
  %127 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %128 = icmp ne %struct.obs_scene_item* %127, null
  br i1 %128, label %129, label %151

129:                                              ; preds = %124
  %130 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %131 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %130, i32 0, i32 7
  %132 = load %struct.obs_scene_item*, %struct.obs_scene_item** %131, align 8
  store %struct.obs_scene_item* %132, %struct.obs_scene_item** %12, align 8
  %133 = load %struct.obs_scene_item*, %struct.obs_scene_item** %12, align 8
  %134 = icmp ne %struct.obs_scene_item* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %137 = load %struct.obs_scene_item*, %struct.obs_scene_item** %12, align 8
  %138 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %137, i32 0, i32 6
  store %struct.obs_scene_item* %136, %struct.obs_scene_item** %138, align 8
  br label %139

139:                                              ; preds = %135, %129
  %140 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %141 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %140, i32 0, i32 7
  %142 = load %struct.obs_scene_item*, %struct.obs_scene_item** %141, align 8
  %143 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %144 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %143, i32 0, i32 7
  store %struct.obs_scene_item* %142, %struct.obs_scene_item** %144, align 8
  %145 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %146 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %147 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %146, i32 0, i32 6
  store %struct.obs_scene_item* %145, %struct.obs_scene_item** %147, align 8
  %148 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %149 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %150 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %149, i32 0, i32 7
  store %struct.obs_scene_item* %148, %struct.obs_scene_item** %150, align 8
  br label %179

151:                                              ; preds = %124
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load %struct.obs_scene_item*, %struct.obs_scene_item** %153, align 8
  store %struct.obs_scene_item* %154, %struct.obs_scene_item** %8, align 8
  %155 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %156 = icmp ne %struct.obs_scene_item* %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  store %struct.obs_scene_item* %158, %struct.obs_scene_item** %160, align 8
  br label %178

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %167, %161
  %163 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %164 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %163, i32 0, i32 7
  %165 = load %struct.obs_scene_item*, %struct.obs_scene_item** %164, align 8
  %166 = icmp ne %struct.obs_scene_item* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %169 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %168, i32 0, i32 7
  %170 = load %struct.obs_scene_item*, %struct.obs_scene_item** %169, align 8
  store %struct.obs_scene_item* %170, %struct.obs_scene_item** %8, align 8
  br label %162

171:                                              ; preds = %162
  %172 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %173 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %174 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %173, i32 0, i32 7
  store %struct.obs_scene_item* %172, %struct.obs_scene_item** %174, align 8
  %175 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %176 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %177 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %176, i32 0, i32 6
  store %struct.obs_scene_item* %175, %struct.obs_scene_item** %177, align 8
  br label %178

178:                                              ; preds = %171, %157
  br label %179

179:                                              ; preds = %178, %139
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %181 = call i32 @full_unlock(%struct.TYPE_21__* %180)
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %179
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %191 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %193 = call i32 @obs_source_get_name(%struct.TYPE_20__* %192)
  %194 = call i32 @init_hotkeys(%struct.TYPE_21__* %190, %struct.obs_scene_item* %191, i32 %193)
  br label %195

195:                                              ; preds = %189, %179
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %197 = call i32 @obs_source_get_signal_handler(%struct.TYPE_20__* %196)
  %198 = load i32, i32* @sceneitem_renamed, align 4
  %199 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %200 = call i32 @signal_handler_connect(i32 %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %198, %struct.obs_scene_item* %199)
  %201 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  store %struct.obs_scene_item* %201, %struct.obs_scene_item** %4, align 8
  br label %202

202:                                              ; preds = %195, %38, %28, %22, %18
  %203 = load %struct.obs_scene_item*, %struct.obs_scene_item** %4, align 8
  ret %struct.obs_scene_item* %203
}

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @obs_source_add_active_child(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local %struct.obs_scene_item* @bzalloc(i32) #1

declare dso_local i32 @obs_data_create(...) #1

declare dso_local i32 @os_atomic_set_long(i32*, i32) #1

declare dso_local i32 @vec2_set(i32*, float, float) #1

declare dso_local i32 @matrix4_identity(i32*) #1

declare dso_local i32 @obs_source_addref(%struct.TYPE_20__*) #1

declare dso_local i64 @source_has_audio(%struct.TYPE_20__*) #1

declare dso_local i32 @da_push_back(i32, %struct.item_action*) #1

declare dso_local i64 @item_texture_enabled(%struct.obs_scene_item*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texrender_create(i32, i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @full_lock(%struct.TYPE_21__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_21__*) #1

declare dso_local i32 @init_hotkeys(%struct.TYPE_21__*, %struct.obs_scene_item*, i32) #1

declare dso_local i32 @obs_source_get_name(%struct.TYPE_20__*) #1

declare dso_local i32 @signal_handler_connect(i32, i8*, i32, %struct.obs_scene_item*) #1

declare dso_local i32 @obs_source_get_signal_handler(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
