; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_calculate_bounds_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_calculate_bounds_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { float, float }
%struct.vec2 = type { float, float }

@OBS_BOUNDS_MAX_ONLY = common dso_local global i64 0, align 8
@OBS_BOUNDS_SCALE_INNER = common dso_local global i64 0, align 8
@OBS_BOUNDS_SCALE_OUTER = common dso_local global i64 0, align 8
@OBS_BOUNDS_SCALE_TO_WIDTH = common dso_local global i64 0, align 8
@OBS_BOUNDS_SCALE_TO_HEIGHT = common dso_local global i64 0, align 8
@OBS_BOUNDS_STRETCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene_item*, %struct.vec2*, %struct.vec2*, i64*, i64*)* @calculate_bounds_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_bounds_data(%struct.obs_scene_item* %0, %struct.vec2* %1, %struct.vec2* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.obs_scene_item*, align 8
  %7 = alloca %struct.vec2*, align 8
  %8 = alloca %struct.vec2*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i64, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %6, align 8
  store %struct.vec2* %1, %struct.vec2** %7, align 8
  store %struct.vec2* %2, %struct.vec2** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to float
  %23 = load %struct.vec2*, %struct.vec2** %8, align 8
  %24 = getelementptr inbounds %struct.vec2, %struct.vec2* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = call float @llvm.fabs.f32(float %25)
  %27 = fmul float %22, %26
  store float %27, float* %11, align 4
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to float
  %31 = load %struct.vec2*, %struct.vec2** %8, align 8
  %32 = getelementptr inbounds %struct.vec2, %struct.vec2* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = call float @llvm.fabs.f32(float %33)
  %35 = fmul float %30, %34
  store float %35, float* %12, align 4
  %36 = load float, float* %11, align 4
  %37 = load float, float* %12, align 4
  %38 = fdiv float %36, %37
  store float %38, float* %13, align 4
  %39 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %40 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %44 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fdiv float %42, %46
  store float %47, float* %14, align 4
  %48 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %49 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  %51 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %52 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OBS_BOUNDS_MAX_ONLY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %5
  %57 = load float, float* %11, align 4
  %58 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %59 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  %62 = fcmp ogt float %57, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load float, float* %12, align 4
  %65 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %66 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fcmp ogt float %64, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %56
  %71 = load i64, i64* @OBS_BOUNDS_SCALE_INNER, align 8
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %5
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* @OBS_BOUNDS_SCALE_INNER, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @OBS_BOUNDS_SCALE_OUTER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %119

81:                                               ; preds = %77, %73
  %82 = load float, float* %14, align 4
  %83 = load float, float* %13, align 4
  %84 = fcmp olt float %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %18, align 4
  %86 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %87 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @OBS_BOUNDS_SCALE_OUTER, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %91, %81
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %101 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load float, float* %102, align 4
  %104 = load float, float* %11, align 4
  %105 = fdiv float %103, %104
  br label %113

106:                                              ; preds = %96
  %107 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %108 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load float, float* %109, align 4
  %111 = load float, float* %12, align 4
  %112 = fdiv float %110, %111
  br label %113

113:                                              ; preds = %106, %99
  %114 = phi float [ %105, %99 ], [ %112, %106 ]
  store float %114, float* %19, align 4
  %115 = load %struct.vec2*, %struct.vec2** %8, align 8
  %116 = load %struct.vec2*, %struct.vec2** %8, align 8
  %117 = load float, float* %19, align 4
  %118 = call i32 @vec2_mulf(%struct.vec2* %115, %struct.vec2* %116, float %117)
  br label %175

119:                                              ; preds = %77
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* @OBS_BOUNDS_SCALE_TO_WIDTH, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load %struct.vec2*, %struct.vec2** %8, align 8
  %125 = load %struct.vec2*, %struct.vec2** %8, align 8
  %126 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %127 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load float, float* %128, align 4
  %130 = load float, float* %11, align 4
  %131 = fdiv float %129, %130
  %132 = call i32 @vec2_mulf(%struct.vec2* %124, %struct.vec2* %125, float %131)
  br label %174

133:                                              ; preds = %119
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* @OBS_BOUNDS_SCALE_TO_HEIGHT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.vec2*, %struct.vec2** %8, align 8
  %139 = load %struct.vec2*, %struct.vec2** %8, align 8
  %140 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %141 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load float, float* %142, align 4
  %144 = load float, float* %12, align 4
  %145 = fdiv float %143, %144
  %146 = call i32 @vec2_mulf(%struct.vec2* %138, %struct.vec2* %139, float %145)
  br label %173

147:                                              ; preds = %133
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* @OBS_BOUNDS_STRETCH, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %153 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load float, float* %154, align 4
  %156 = load i64*, i64** %9, align 8
  %157 = load i64, i64* %156, align 8
  %158 = sitofp i64 %157 to float
  %159 = fdiv float %155, %158
  %160 = load %struct.vec2*, %struct.vec2** %8, align 8
  %161 = getelementptr inbounds %struct.vec2, %struct.vec2* %160, i32 0, i32 0
  store float %159, float* %161, align 4
  %162 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %163 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load float, float* %164, align 4
  %166 = load i64*, i64** %10, align 8
  %167 = load i64, i64* %166, align 8
  %168 = sitofp i64 %167 to float
  %169 = fdiv float %165, %168
  %170 = load %struct.vec2*, %struct.vec2** %8, align 8
  %171 = getelementptr inbounds %struct.vec2, %struct.vec2* %170, i32 0, i32 1
  store float %169, float* %171, align 4
  br label %172

172:                                              ; preds = %151, %147
  br label %173

173:                                              ; preds = %172, %137
  br label %174

174:                                              ; preds = %173, %123
  br label %175

175:                                              ; preds = %174, %113
  %176 = load i64*, i64** %9, align 8
  %177 = load i64, i64* %176, align 8
  %178 = sitofp i64 %177 to float
  %179 = load %struct.vec2*, %struct.vec2** %8, align 8
  %180 = getelementptr inbounds %struct.vec2, %struct.vec2* %179, i32 0, i32 0
  %181 = load float, float* %180, align 4
  %182 = fmul float %178, %181
  store float %182, float* %11, align 4
  %183 = load i64*, i64** %10, align 8
  %184 = load i64, i64* %183, align 8
  %185 = sitofp i64 %184 to float
  %186 = load %struct.vec2*, %struct.vec2** %8, align 8
  %187 = getelementptr inbounds %struct.vec2, %struct.vec2* %186, i32 0, i32 1
  %188 = load float, float* %187, align 4
  %189 = fmul float %185, %188
  store float %189, float* %12, align 4
  %190 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %191 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load float, float* %192, align 4
  %194 = load float, float* %11, align 4
  %195 = fsub float %193, %194
  store float %195, float* %16, align 4
  %196 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %197 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load float, float* %198, align 4
  %200 = load float, float* %12, align 4
  %201 = fsub float %199, %200
  store float %201, float* %17, align 4
  %202 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %203 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load float, float* %204, align 4
  %206 = fptosi float %205 to i64
  %207 = load i64*, i64** %9, align 8
  store i64 %206, i64* %207, align 8
  %208 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %209 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load float, float* %210, align 4
  %212 = fptosi float %211 to i64
  %213 = load i64*, i64** %10, align 8
  store i64 %212, i64* %213, align 8
  %214 = load %struct.vec2*, %struct.vec2** %7, align 8
  %215 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %216 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load float, float* %16, align 4
  %219 = fneg float %218
  %220 = fptosi float %219 to i32
  %221 = load float, float* %17, align 4
  %222 = fneg float %221
  %223 = fptosi float %222 to i32
  %224 = call i32 @add_alignment(%struct.vec2* %214, i32 %217, i32 %220, i32 %223)
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

declare dso_local i32 @vec2_mulf(%struct.vec2*, %struct.vec2*, float) #2

declare dso_local i32 @add_alignment(%struct.vec2*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
