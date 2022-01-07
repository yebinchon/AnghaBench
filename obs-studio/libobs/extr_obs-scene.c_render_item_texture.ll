; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_render_item_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_render_item_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32, i32* }
%struct.obs_scene_item = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { float, float }
%struct.vec2 = type { float, float }

@GS_DEBUG_COLOR_ITEM_TEXTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"render_item_texture\00", align 1
@obs = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@OBS_SCALE_DISABLE = common dso_local global i32 0, align 4
@OBS_SCALE_POINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@EPSILON = common dso_local global i32 0, align 4
@OBS_SCALE_BICUBIC = common dso_local global i32 0, align 4
@OBS_SCALE_LANCZOS = common dso_local global i32 0, align 4
@OBS_SCALE_AREA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"DrawUpscale\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"base_dimension\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"base_dimension_i\00", align 1
@GS_BLEND_ONE = common dso_local global i32 0, align 4
@GS_BLEND_INVSRCALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene_item*)* @render_item_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_item_texture(%struct.obs_scene_item* %0) #0 {
  %2 = alloca %struct.obs_scene_item*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vec2, align 4
  %13 = alloca %struct.vec2, align 4
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %2, align 8
  %14 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %15 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @gs_texrender_get_texture(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %176

21:                                               ; preds = %1
  %22 = load i32, i32* @GS_DEBUG_COLOR_ITEM_TEXTURE, align 4
  %23 = call i32 @GS_DEBUG_MARKER_BEGIN(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  %28 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %29 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @gs_texture_get_width(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @gs_texture_get_height(i32* %33)
  store i64 %34, i64* %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @OBS_SCALE_DISABLE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %160

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @OBS_SCALE_POINT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @gs_effect_get_param_by_name(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @gs_effect_set_next_sampler(i32* %45, i32 %49)
  br label %159

51:                                               ; preds = %38
  %52 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %53 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = load i32, i32* @EPSILON, align 4
  %57 = call i32 @close_float(float %55, float 1.000000e+00, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %61 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load float, float* %62, align 4
  %64 = load i32, i32* @EPSILON, align 4
  %65 = call i32 @close_float(float %63, float 1.000000e+00, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %158, label %67

67:                                               ; preds = %59, %51
  %68 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %69 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 4
  %72 = fcmp olt float %71, 5.000000e-01
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %75 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load float, float* %76, align 4
  %78 = fcmp olt float %77, 5.000000e-01
  br i1 %78, label %79, label %84

79:                                               ; preds = %73, %67
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %4, align 8
  br label %127

84:                                               ; preds = %73
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @OBS_SCALE_BICUBIC, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %4, align 8
  br label %126

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @OBS_SCALE_LANCZOS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %4, align 8
  br label %125

102:                                              ; preds = %93
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @OBS_SCALE_AREA, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %4, align 8
  %111 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %112 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load float, float* %113, align 4
  %115 = fcmp oge float %114, 1.000000e+00
  br i1 %115, label %116, label %123

116:                                              ; preds = %106
  %117 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %118 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load float, float* %119, align 4
  %121 = fcmp oge float %120, 1.000000e+00
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %123

123:                                              ; preds = %122, %116, %106
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124, %97
  br label %126

126:                                              ; preds = %125, %88
  br label %127

127:                                              ; preds = %126, %79
  %128 = load i32*, i32** %4, align 8
  %129 = call i32* @gs_effect_get_param_by_name(i32* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32* %129, i32** %10, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.vec2, %struct.vec2* %12, i32 0, i32 0
  %134 = load i64, i64* %6, align 8
  %135 = sitofp i64 %134 to float
  store float %135, float* %133, align 4
  %136 = getelementptr inbounds %struct.vec2, %struct.vec2* %12, i32 0, i32 1
  %137 = load i64, i64* %7, align 8
  %138 = sitofp i64 %137 to float
  store float %138, float* %136, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @gs_effect_set_vec2(i32* %139, %struct.vec2* %12)
  br label %141

141:                                              ; preds = %132, %127
  %142 = load i32*, i32** %4, align 8
  %143 = call i32* @gs_effect_get_param_by_name(i32* %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32* %143, i32** %11, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.vec2, %struct.vec2* %13, i32 0, i32 0
  %148 = load i64, i64* %6, align 8
  %149 = sitofp i64 %148 to float
  %150 = fdiv float 1.000000e+00, %149
  store float %150, float* %147, align 4
  %151 = getelementptr inbounds %struct.vec2, %struct.vec2* %13, i32 0, i32 1
  %152 = load i64, i64* %7, align 8
  %153 = sitofp i64 %152 to float
  %154 = fdiv float 1.000000e+00, %153
  store float %154, float* %151, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @gs_effect_set_vec2(i32* %155, %struct.vec2* %13)
  br label %157

157:                                              ; preds = %146, %141
  br label %158

158:                                              ; preds = %157, %59
  br label %159

159:                                              ; preds = %158, %42
  br label %160

160:                                              ; preds = %159, %21
  %161 = call i32 (...) @gs_blend_state_push()
  %162 = load i32, i32* @GS_BLEND_ONE, align 4
  %163 = load i32, i32* @GS_BLEND_INVSRCALPHA, align 4
  %164 = call i32 @gs_blend_function(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %170, %160
  %166 = load i32*, i32** %4, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i64 @gs_effect_loop(i32* %166, i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @obs_source_draw(i32* %171, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %165

173:                                              ; preds = %165
  %174 = call i32 (...) @gs_blend_state_pop()
  %175 = call i32 (...) @GS_DEBUG_MARKER_END()
  br label %176

176:                                              ; preds = %173, %20
  ret void
}

declare dso_local i32* @gs_texrender_get_texture(i32) #1

declare dso_local i32 @GS_DEBUG_MARKER_BEGIN(i32, i8*) #1

declare dso_local i64 @gs_texture_get_width(i32*) #1

declare dso_local i64 @gs_texture_get_height(i32*) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_next_sampler(i32*, i32) #1

declare dso_local i32 @close_float(float, float, i32) #1

declare dso_local i32 @gs_effect_set_vec2(i32*, %struct.vec2*) #1

declare dso_local i32 @gs_blend_state_push(...) #1

declare dso_local i32 @gs_blend_function(i32, i32) #1

declare dso_local i64 @gs_effect_loop(i32*, i8*) #1

declare dso_local i32 @obs_source_draw(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gs_blend_state_pop(...) #1

declare dso_local i32 @GS_DEBUG_MARKER_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
