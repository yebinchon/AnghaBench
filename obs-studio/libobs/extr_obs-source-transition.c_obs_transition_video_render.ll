; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_video_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_video_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.matrix4*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.matrix4 = type { i32 }
%struct.transition_state = type { i64*, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"obs_transition_video_render\00", align 1
@obs = common dso_local global %struct.TYPE_20__* null, align 8
@GS_BLEND_ONE = common dso_local global i32 0, align 4
@GS_BLEND_INVSRCALPHA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"source_transition_video_stop\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"transition_video_stop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_transition_video_render(%struct.TYPE_23__* %0, i32 (i32, i32*, i32*, float, i64, i64)* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32 (i32, i32*, i32*, float, i64, i64)*, align 8
  %5 = alloca %struct.transition_state, align 8
  %6 = alloca [2 x %struct.matrix4], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca [2 x i32*], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 (i32, i32*, i32*, float, i64, i64)* %1, i32 (i32, i32*, i32*, float, i64, i64)** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = call i32 @transition_valid(%struct.TYPE_23__* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %224

19:                                               ; preds = %2
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = call float @get_video_time(%struct.TYPE_23__* %20)
  store float %21, float* %10, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = call i32 @lock_transition(%struct.TYPE_23__* %22)
  %24 = load float, float* %10, align 4
  %25 = fcmp oge float %24, 1.000000e+00
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  store i32 1, i32* %9, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = call i32 @obs_transition_stop(%struct.TYPE_23__* %39)
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %26, %19
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %44 = call i32 @copy_transition_state(%struct.TYPE_23__* %43, %struct.transition_state* %5)
  %45 = getelementptr inbounds [2 x %struct.matrix4], [2 x %struct.matrix4]* %6, i64 0, i64 0
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 2
  %48 = load %struct.matrix4*, %struct.matrix4** %47, align 8
  %49 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %48, i64 0
  %50 = bitcast %struct.matrix4* %45 to i8*
  %51 = bitcast %struct.matrix4* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = getelementptr inbounds [2 x %struct.matrix4], [2 x %struct.matrix4]* %6, i64 0, i64 1
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 2
  %55 = load %struct.matrix4*, %struct.matrix4** %54, align 8
  %56 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %55, i64 1
  %57 = bitcast %struct.matrix4* %52 to i8*
  %58 = bitcast %struct.matrix4* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = call i32 @unlock_transition(%struct.TYPE_23__* %59)
  %61 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %42
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %66 = call i64 @trylock_textures(%struct.TYPE_23__* %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %64, %42
  %70 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %157

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %157

76:                                               ; preds = %73
  %77 = load i32 (i32, i32*, i32*, float, i64, i64)*, i32 (i32, i32*, i32*, float, i64, i64)** %4, align 8
  %78 = icmp ne i32 (i32, i32*, i32*, float, i64, i64)* %77, null
  br i1 %78, label %79, label %157

79:                                               ; preds = %76
  store i64 0, i64* %14, align 8
  br label %80

80:                                               ; preds = %124, %79
  %81 = load i64, i64* %14, align 8
  %82 = icmp ult i64 %81, 2
  br i1 %82, label %83, label %127

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %83
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %92 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @render_child(%struct.TYPE_23__* %91, i64 %96, i64 %97)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i32* @get_texture(%struct.TYPE_23__* %99, i64 %100)
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %102
  store i32* %101, i32** %103, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %90
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** @obs, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %113
  store i32* %112, i32** %114, align 8
  br label %115

115:                                              ; preds = %108, %90
  br label %123

116:                                              ; preds = %83
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** @obs, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %121
  store i32* %120, i32** %122, align 8
  br label %123

123:                                              ; preds = %116, %115
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %14, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %14, align 8
  br label %80

127:                                              ; preds = %80
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %129 = call i64 @get_cx(%struct.TYPE_23__* %128)
  store i64 %129, i64* %12, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = call i64 @get_cy(%struct.TYPE_23__* %130)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %12, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %127
  %135 = load i64, i64* %13, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %134
  %138 = call i32 (...) @gs_blend_state_push()
  %139 = load i32, i32* @GS_BLEND_ONE, align 4
  %140 = load i32, i32* @GS_BLEND_INVSRCALPHA, align 4
  %141 = call i32 @gs_blend_function(i32 %139, i32 %140)
  %142 = load i32 (i32, i32*, i32*, float, i64, i64)*, i32 (i32, i32*, i32*, float, i64, i64)** %4, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %148 = load i32*, i32** %147, align 16
  %149 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %150 = load i32*, i32** %149, align 8
  %151 = load float, float* %10, align 4
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %13, align 8
  %154 = call i32 %142(i32 %146, i32* %148, i32* %150, float %151, i64 %152, i64 %153)
  %155 = call i32 (...) @gs_blend_state_pop()
  br label %156

156:                                              ; preds = %137, %134, %127
  br label %196

157:                                              ; preds = %76, %73, %69
  %158 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %161
  %168 = call i32 (...) @gs_matrix_push()
  %169 = getelementptr inbounds [2 x %struct.matrix4], [2 x %struct.matrix4]* %6, i64 0, i64 1
  %170 = call i32 @gs_matrix_mul(%struct.matrix4* %169)
  %171 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @obs_source_video_render(i64 %174)
  %176 = call i32 (...) @gs_matrix_pop()
  br label %177

177:                                              ; preds = %167, %161
  br label %195

178:                                              ; preds = %157
  %179 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %178
  %185 = call i32 (...) @gs_matrix_push()
  %186 = getelementptr inbounds [2 x %struct.matrix4], [2 x %struct.matrix4]* %6, i64 0, i64 0
  %187 = call i32 @gs_matrix_mul(%struct.matrix4* %186)
  %188 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @obs_source_video_render(i64 %191)
  %193 = call i32 (...) @gs_matrix_pop()
  br label %194

194:                                              ; preds = %184, %178
  br label %195

195:                                              ; preds = %194, %177
  br label %196

196:                                              ; preds = %195, %156
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %201 = call i32 @unlock_textures(%struct.TYPE_23__* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @obs_source_release(i64 %206)
  %208 = getelementptr inbounds %struct.transition_state, %struct.transition_state* %5, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @obs_source_release(i64 %211)
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %202
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %217 = call i32 @obs_source_dosignal(%struct.TYPE_23__* %216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %202
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %223 = call i32 @handle_stop(%struct.TYPE_23__* %222)
  br label %224

224:                                              ; preds = %18, %221, %218
  ret void
}

declare dso_local i32 @transition_valid(%struct.TYPE_23__*, i8*) #1

declare dso_local float @get_video_time(%struct.TYPE_23__*) #1

declare dso_local i32 @lock_transition(%struct.TYPE_23__*) #1

declare dso_local i32 @obs_transition_stop(%struct.TYPE_23__*) #1

declare dso_local i32 @copy_transition_state(%struct.TYPE_23__*, %struct.transition_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlock_transition(%struct.TYPE_23__*) #1

declare dso_local i64 @trylock_textures(%struct.TYPE_23__*) #1

declare dso_local i32 @render_child(%struct.TYPE_23__*, i64, i64) #1

declare dso_local i32* @get_texture(%struct.TYPE_23__*, i64) #1

declare dso_local i64 @get_cx(%struct.TYPE_23__*) #1

declare dso_local i64 @get_cy(%struct.TYPE_23__*) #1

declare dso_local i32 @gs_blend_state_push(...) #1

declare dso_local i32 @gs_blend_function(i32, i32) #1

declare dso_local i32 @gs_blend_state_pop(...) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_mul(%struct.matrix4*) #1

declare dso_local i32 @obs_source_video_render(i64) #1

declare dso_local i32 @gs_matrix_pop(...) #1

declare dso_local i32 @unlock_textures(%struct.TYPE_23__*) #1

declare dso_local i32 @obs_source_release(i64) #1

declare dso_local i32 @obs_source_dosignal(%struct.TYPE_23__*, i8*, i8*) #1

declare dso_local i32 @handle_stop(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
