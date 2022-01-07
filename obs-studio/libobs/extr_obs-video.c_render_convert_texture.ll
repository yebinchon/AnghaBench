; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_convert_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_convert_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i32, i32*, i32*, i32, i32*, i32* }
%struct.vec4 = type { i32 }

@render_convert_texture_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"color_vec0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"color_vec1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"color_vec2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"width_i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*, i32*)* @render_convert_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_convert_texture(%struct.obs_core_video* %0, i32* %1) #0 {
  %3 = alloca %struct.obs_core_video*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vec4, align 4
  %12 = alloca %struct.vec4, align 4
  %13 = alloca %struct.vec4, align 4
  store %struct.obs_core_video* %0, %struct.obs_core_video** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32, i32* @render_convert_texture_name, align 4
  %15 = call i32 @profile_start(i32 %14)
  %16 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %17 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @gs_effect_get_param_by_name(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @gs_effect_get_param_by_name(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @gs_effect_get_param_by_name(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @gs_effect_get_param_by_name(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @gs_effect_get_param_by_name(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %28, i32** %10, align 8
  %29 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %30 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %35 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %40 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %45 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vec4_set(%struct.vec4* %11, i32 %33, i32 %38, i32 %43, i32 %48)
  %50 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %51 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %56 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %61 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %66 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vec4_set(%struct.vec4* %12, i32 %54, i32 %59, i32 %64, i32 %69)
  %71 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %72 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %77 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %82 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %87 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 11
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vec4_set(%struct.vec4* %13, i32 %75, i32 %80, i32 %85, i32 %90)
  %92 = call i32 @gs_enable_blending(i32 0)
  %93 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %94 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %187

99:                                               ; preds = %2
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @gs_effect_set_texture(i32* %100, i32* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @gs_effect_set_vec4(i32* %103, %struct.vec4* %11)
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %107 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %112 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @render_convert_plane(i32* %105, i32 %110, i32 %115)
  %117 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %118 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %186

123:                                              ; preds = %99
  %124 = load i32*, i32** %9, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @gs_effect_set_texture(i32* %124, i32* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @gs_effect_set_vec4(i32* %127, %struct.vec4* %12)
  %129 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %130 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @gs_effect_set_vec4(i32* %136, %struct.vec4* %13)
  br label %138

138:                                              ; preds = %135, %123
  %139 = load i32*, i32** %10, align 8
  %140 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %141 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @gs_effect_set_float(i32* %139, i32 %142)
  %144 = load i32*, i32** %5, align 8
  %145 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %146 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %151 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @render_convert_plane(i32* %144, i32 %149, i32 %154)
  %156 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %157 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %138
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @gs_effect_set_texture(i32* %163, i32* %164)
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @gs_effect_set_vec4(i32* %166, %struct.vec4* %13)
  %168 = load i32*, i32** %10, align 8
  %169 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %170 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @gs_effect_set_float(i32* %168, i32 %171)
  %173 = load i32*, i32** %5, align 8
  %174 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %175 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %180 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @render_convert_plane(i32* %173, i32 %178, i32 %183)
  br label %185

185:                                              ; preds = %162, %138
  br label %186

186:                                              ; preds = %185, %99
  br label %187

187:                                              ; preds = %186, %2
  %188 = call i32 @gs_enable_blending(i32 1)
  %189 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %190 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %189, i32 0, i32 0
  store i32 1, i32* %190, align 8
  %191 = load i32, i32* @render_convert_texture_name, align 4
  %192 = call i32 @profile_end(i32 %191)
  ret void
}

declare dso_local i32 @profile_start(i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @vec4_set(%struct.vec4*, i32, i32, i32, i32) #1

declare dso_local i32 @gs_enable_blending(i32) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i32 @gs_effect_set_vec4(i32*, %struct.vec4*) #1

declare dso_local i32 @render_convert_plane(i32*, i32, i32) #1

declare dso_local i32 @gs_effect_set_float(i32*, i32) #1

declare dso_local i32 @profile_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
