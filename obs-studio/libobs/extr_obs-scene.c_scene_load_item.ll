; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_load_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_load_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.obs_scene = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.obs_scene_item = type { i32, float, i32, i32*, i32, %struct.TYPE_9__, i32, i8*, i64, i32, i32, i8*, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"group_item_backup\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"[scene_load_item] Source %s not found!\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"[scene_load_item] Could not add source '%s' to scene '%s'!\00", align 1
@group_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@OBS_ALIGN_TOP = common dso_local global i32 0, align 4
@OBS_ALIGN_LEFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rot\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"private_settings\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"bounds_type\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"bounds_align\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"crop_left\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"crop_top\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"crop_right\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"crop_bottom\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"scale_filter\00", align 1
@OBS_SCALE_DISABLE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@OBS_SCALE_POINT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"bilinear\00", align 1
@OBS_SCALE_BILINEAR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"bicubic\00", align 1
@OBS_SCALE_BICUBIC = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"lanczos\00", align 1
@OBS_SCALE_LANCZOS = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@OBS_SCALE_AREA = common dso_local global i32 0, align 4
@GS_RGBA = common dso_local global i32 0, align 4
@GS_ZS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene*, i32*)* @scene_load_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scene_load_item(%struct.obs_scene* %0, i32* %1) #0 {
  %3 = alloca %struct.obs_scene*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.obs_scene_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.obs_scene* %0, %struct.obs_scene** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @obs_data_get_string(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @obs_data_get_bool(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %242

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_10__* @obs_get_source_by_name(i8* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i32, i8*, i8*, ...) @blog(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %242

26:                                               ; preds = %17
  %27 = load %struct.obs_scene*, %struct.obs_scene** %3, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = call %struct.obs_scene_item* @obs_scene_add(%struct.obs_scene* %27, %struct.TYPE_10__* %28)
  store %struct.obs_scene_item* %29, %struct.obs_scene_item** %8, align 8
  %30 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %31 = icmp ne %struct.obs_scene_item* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @LOG_WARNING, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.obs_scene*, %struct.obs_scene** %3, align 8
  %36 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @obs_source_get_name(i32 %37)
  %39 = call i32 (i32, i8*, i8*, ...) @blog(i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %34, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = call i32 @obs_source_release(%struct.TYPE_10__* %40)
  br label %242

42:                                               ; preds = %26
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @group_info, i32 0, i32 0), align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %51 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @OBS_ALIGN_TOP, align 4
  %54 = load i32, i32* @OBS_ALIGN_LEFT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @obs_data_set_default_int(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @obs_data_has_user_value(i32* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %42
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @obs_data_get_int(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %64 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %63, i32 0, i32 12
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %42
  %66 = load i32*, i32** %4, align 8
  %67 = call i64 @obs_data_get_double(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %68 = sitofp i64 %67 to float
  %69 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %70 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %69, i32 0, i32 1
  store float %68, float* %70, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @obs_data_get_int(i32* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %75 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %74, i32 0, i32 11
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @obs_data_get_bool(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %77, i32* %9, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @obs_data_get_bool(i32* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 %79, i32* %10, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %82 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %81, i32 0, i32 10
  %83 = call i32 @obs_data_get_vec2(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %86 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %85, i32 0, i32 9
  %87 = call i32 @obs_data_get_vec2(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %86)
  %88 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %89 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @obs_data_release(i64 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @obs_data_get_obj(i32* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %94 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %95 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %94, i32 0, i32 8
  store i64 %93, i64* %95, align 8
  %96 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %97 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %65
  %101 = call i64 (...) @obs_data_create()
  %102 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %103 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %102, i32 0, i32 8
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %65
  %105 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @set_visibility(%struct.obs_scene_item* %105, i32 %106)
  %108 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @obs_sceneitem_set_locked(%struct.obs_scene_item* %108, i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = call i64 @obs_data_get_int(i32* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %113 = trunc i64 %112 to i32
  %114 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %115 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = call i64 @obs_data_get_int(i32* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %120 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %123 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %122, i32 0, i32 6
  %124 = call i32 @obs_data_get_vec2(i32* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i64 @obs_data_get_int(i32* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %129 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  store i8* %127, i8** %130, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = call i64 @obs_data_get_int(i32* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %135 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i8* %133, i8** %136, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = call i64 @obs_data_get_int(i32* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %141 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = call i64 @obs_data_get_int(i32* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %147 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = call i8* @obs_data_get_string(i32* %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  store i8* %150, i8** %7, align 8
  %151 = load i32, i32* @OBS_SCALE_DISABLE, align 4
  %152 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %153 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %201

156:                                              ; preds = %104
  %157 = load i8*, i8** %7, align 8
  %158 = call i64 @astrcmpi(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* @OBS_SCALE_POINT, align 4
  %162 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %163 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  br label %200

164:                                              ; preds = %156
  %165 = load i8*, i8** %7, align 8
  %166 = call i64 @astrcmpi(i8* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* @OBS_SCALE_BILINEAR, align 4
  %170 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %171 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  br label %199

172:                                              ; preds = %164
  %173 = load i8*, i8** %7, align 8
  %174 = call i64 @astrcmpi(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* @OBS_SCALE_BICUBIC, align 4
  %178 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %179 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  br label %198

180:                                              ; preds = %172
  %181 = load i8*, i8** %7, align 8
  %182 = call i64 @astrcmpi(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* @OBS_SCALE_LANCZOS, align 4
  %186 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %187 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  br label %197

188:                                              ; preds = %180
  %189 = load i8*, i8** %7, align 8
  %190 = call i64 @astrcmpi(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* @OBS_SCALE_AREA, align 4
  %194 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %195 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %188
  br label %197

197:                                              ; preds = %196, %184
  br label %198

198:                                              ; preds = %197, %176
  br label %199

199:                                              ; preds = %198, %168
  br label %200

200:                                              ; preds = %199, %160
  br label %201

201:                                              ; preds = %200, %104
  %202 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %203 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %219

206:                                              ; preds = %201
  %207 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %208 = call i64 @item_texture_enabled(%struct.obs_scene_item* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %206
  %211 = call i32 (...) @obs_enter_graphics()
  %212 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %213 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @gs_texrender_destroy(i32* %214)
  %216 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %217 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %216, i32 0, i32 3
  store i32* null, i32** %217, align 8
  %218 = call i32 (...) @obs_leave_graphics()
  br label %237

219:                                              ; preds = %206, %201
  %220 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %221 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %236, label %224

224:                                              ; preds = %219
  %225 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %226 = call i64 @item_texture_enabled(%struct.obs_scene_item* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %224
  %229 = call i32 (...) @obs_enter_graphics()
  %230 = load i32, i32* @GS_RGBA, align 4
  %231 = load i32, i32* @GS_ZS_NONE, align 4
  %232 = call i32* @gs_texrender_create(i32 %230, i32 %231)
  %233 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %234 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %233, i32 0, i32 3
  store i32* %232, i32** %234, align 8
  %235 = call i32 (...) @obs_leave_graphics()
  br label %236

236:                                              ; preds = %228, %224, %219
  br label %237

237:                                              ; preds = %236, %210
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = call i32 @obs_source_release(%struct.TYPE_10__* %238)
  %240 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %241 = call i32 @update_item_transform(%struct.obs_scene_item* %240, i32 0)
  br label %242

242:                                              ; preds = %237, %32, %22, %16
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @obs_get_source_by_name(i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*, ...) #1

declare dso_local %struct.obs_scene_item* @obs_scene_add(%struct.obs_scene*, %struct.TYPE_10__*) #1

declare dso_local i32 @obs_source_get_name(i32) #1

declare dso_local i32 @obs_source_release(%struct.TYPE_10__*) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i8*, i32) #1

declare dso_local i64 @obs_data_has_user_value(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i64 @obs_data_get_double(i32*, i8*) #1

declare dso_local i32 @obs_data_get_vec2(i32*, i8*, i32*) #1

declare dso_local i32 @obs_data_release(i64) #1

declare dso_local i64 @obs_data_get_obj(i32*, i8*) #1

declare dso_local i64 @obs_data_create(...) #1

declare dso_local i32 @set_visibility(%struct.obs_scene_item*, i32) #1

declare dso_local i32 @obs_sceneitem_set_locked(%struct.obs_scene_item*, i32) #1

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i64 @item_texture_enabled(%struct.obs_scene_item*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texrender_destroy(i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32* @gs_texrender_create(i32, i32) #1

declare dso_local i32 @update_item_transform(%struct.obs_scene_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
