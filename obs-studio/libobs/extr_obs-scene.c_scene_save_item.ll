; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_save_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_save_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { float, i32, i32, i32, i64, i32, %struct.obs_scene_item*, %struct.TYPE_10__*, i64, %struct.TYPE_7__, %struct.vec2, i64, i64, i64, %struct.vec2, %struct.vec2 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.obs_scene_item* }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.vec2 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rot\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bounds_type\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"bounds_align\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"crop_left\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"crop_top\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"crop_right\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"crop_bottom\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"group_item_backup\00", align 1
@OBS_SCALE_POINT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@OBS_SCALE_BILINEAR = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"bilinear\00", align 1
@OBS_SCALE_BICUBIC = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"bicubic\00", align 1
@OBS_SCALE_LANCZOS = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"lanczos\00", align 1
@OBS_SCALE_AREA = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"scale_filter\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"private_settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.obs_scene_item*, %struct.obs_scene_item*)* @scene_save_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scene_save_item(i32* %0, %struct.obs_scene_item* %1, %struct.obs_scene_item* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.obs_scene_item*, align 8
  %6 = alloca %struct.obs_scene_item*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vec2, align 4
  %11 = alloca %struct.vec2, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.obs_scene_item*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.obs_scene_item* %1, %struct.obs_scene_item** %5, align 8
  store %struct.obs_scene_item* %2, %struct.obs_scene_item** %6, align 8
  %15 = call i32* (...) @obs_data_create()
  store i32* %15, i32** %7, align 8
  %16 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %17 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %16, i32 0, i32 7
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call i8* @obs_source_get_name(%struct.TYPE_10__* %18)
  store i8* %19, i8** %8, align 8
  %20 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %21 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %20, i32 0, i32 15
  %22 = bitcast %struct.vec2* %10 to i8*
  %23 = bitcast %struct.vec2* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %25 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %24, i32 0, i32 14
  %26 = bitcast %struct.vec2* %11 to i8*
  %27 = bitcast %struct.vec2* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 8 %27, i64 4, i1 false)
  %28 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %29 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %28, i32 0, i32 0
  %30 = load float, float* %29, align 8
  store float %30, float* %12, align 4
  %31 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %32 = icmp ne %struct.obs_scene_item* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %35 = call i32 @get_ungrouped_transform(%struct.obs_scene_item* %34, %struct.vec2* %10, %struct.vec2* %11, float* %12)
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @obs_data_set_string(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %42 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @obs_data_set_bool(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %47 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @obs_data_set_bool(i32* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load float, float* %12, align 4
  %52 = call i32 @obs_data_set_double(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), float %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @obs_data_set_vec2(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.vec2* %10)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @obs_data_set_vec2(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.vec2* %11)
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %59 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %58, i32 0, i32 13
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @obs_data_set_int(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %65 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %64, i32 0, i32 12
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @obs_data_set_int(i32* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %71 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %70, i32 0, i32 11
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @obs_data_set_int(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %77 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %76, i32 0, i32 10
  %78 = call i32 @obs_data_set_vec2(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.vec2* %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %81 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @obs_data_set_int(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %88 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @obs_data_set_int(i32* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %95 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @obs_data_set_int(i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %102 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @obs_data_set_int(i32* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %109 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @obs_data_set_int(i32* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %114 = icmp ne %struct.obs_scene_item* %113, null
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @obs_data_set_bool(i32* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %117)
  %119 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %120 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %36
  %124 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %125 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %124, i32 0, i32 7
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %13, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %131 = call i32 @full_lock(%struct.TYPE_9__* %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.obs_scene_item*, %struct.obs_scene_item** %133, align 8
  store %struct.obs_scene_item* %134, %struct.obs_scene_item** %14, align 8
  br label %135

135:                                              ; preds = %138, %123
  %136 = load %struct.obs_scene_item*, %struct.obs_scene_item** %14, align 8
  %137 = icmp ne %struct.obs_scene_item* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.obs_scene_item*, %struct.obs_scene_item** %14, align 8
  %141 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  call void @scene_save_item(i32* %139, %struct.obs_scene_item* %140, %struct.obs_scene_item* %141)
  %142 = load %struct.obs_scene_item*, %struct.obs_scene_item** %14, align 8
  %143 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %142, i32 0, i32 6
  %144 = load %struct.obs_scene_item*, %struct.obs_scene_item** %143, align 8
  store %struct.obs_scene_item* %144, %struct.obs_scene_item** %14, align 8
  br label %135

145:                                              ; preds = %135
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %147 = call i32 @full_unlock(%struct.TYPE_9__* %146)
  br label %148

148:                                              ; preds = %145, %36
  %149 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %150 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @OBS_SCALE_POINT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %188

155:                                              ; preds = %148
  %156 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %157 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @OBS_SCALE_BILINEAR, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %187

162:                                              ; preds = %155
  %163 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %164 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @OBS_SCALE_BICUBIC, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %186

169:                                              ; preds = %162
  %170 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %171 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @OBS_SCALE_LANCZOS, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %185

176:                                              ; preds = %169
  %177 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %178 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @OBS_SCALE_AREA, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %184

183:                                              ; preds = %176
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %184

184:                                              ; preds = %183, %182
  br label %185

185:                                              ; preds = %184, %175
  br label %186

186:                                              ; preds = %185, %168
  br label %187

187:                                              ; preds = %186, %161
  br label %188

188:                                              ; preds = %187, %154
  %189 = load i32*, i32** %7, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = call i32 @obs_data_set_string(i32* %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %190)
  %192 = load i32*, i32** %7, align 8
  %193 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %194 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @obs_data_set_obj(i32* %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %195)
  %197 = load i32*, i32** %4, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @obs_data_array_push_back(i32* %197, i32* %198)
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @obs_data_release(i32* %200)
  ret void
}

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i8* @obs_source_get_name(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_ungrouped_transform(%struct.obs_scene_item*, %struct.vec2*, %struct.vec2*, float*) #1

declare dso_local i32 @obs_data_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @obs_data_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_double(i32*, i8*, float) #1

declare dso_local i32 @obs_data_set_vec2(i32*, i8*, %struct.vec2*) #1

declare dso_local i32 @obs_data_set_int(i32*, i8*, i32) #1

declare dso_local i32 @full_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @obs_data_set_obj(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_array_push_back(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
