; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_audio_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_audio_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_audio_mix = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { float** }
%struct.obs_scene = type { %struct.obs_scene_item* }
%struct.obs_scene_item = type { %struct.obs_scene_item*, i32, i64 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i64 0, align 8
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.obs_source_audio_mix*, i32, i64, i64)* @scene_audio_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scene_audio_render(i8* %0, i64* %1, %struct.obs_source_audio_mix* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.obs_source_audio_mix*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float*, align 8
  %16 = alloca %struct.obs_source_audio_mix, align 8
  %17 = alloca %struct.obs_scene*, align 8
  %18 = alloca %struct.obs_scene_item*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  store i8* %0, i8** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.obs_source_audio_mix* %2, %struct.obs_source_audio_mix** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store float* null, float** %15, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.obs_scene*
  store %struct.obs_scene* %29, %struct.obs_scene** %17, align 8
  %30 = load %struct.obs_scene*, %struct.obs_scene** %17, align 8
  %31 = call i32 @audio_lock(%struct.obs_scene* %30)
  %32 = load %struct.obs_scene*, %struct.obs_scene** %17, align 8
  %33 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %32, i32 0, i32 0
  %34 = load %struct.obs_scene_item*, %struct.obs_scene_item** %33, align 8
  store %struct.obs_scene_item* %34, %struct.obs_scene_item** %18, align 8
  br label %35

35:                                               ; preds = %66, %6
  %36 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %37 = icmp ne %struct.obs_scene_item* %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %40 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @obs_source_audio_pending(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %38
  %45 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %46 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %51 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @obs_source_get_audio_timestamp(i32 %52)
  store i64 %53, i64* %19, align 8
  %54 = load i64, i64* %19, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %56
  %64 = load i64, i64* %19, align 8
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %63, %59, %49
  br label %66

66:                                               ; preds = %65, %44, %38
  %67 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %68 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %67, i32 0, i32 0
  %69 = load %struct.obs_scene_item*, %struct.obs_scene_item** %68, align 8
  store %struct.obs_scene_item* %69, %struct.obs_scene_item** %18, align 8
  br label %35

70:                                               ; preds = %35
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %70
  %74 = load %struct.obs_scene*, %struct.obs_scene** %17, align 8
  %75 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %74, i32 0, i32 0
  %76 = load %struct.obs_scene_item*, %struct.obs_scene_item** %75, align 8
  store %struct.obs_scene_item* %76, %struct.obs_scene_item** %18, align 8
  br label %77

77:                                               ; preds = %80, %73
  %78 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %79 = icmp ne %struct.obs_scene_item* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @process_all_audio_actions(%struct.obs_scene_item* %81, i64 %82)
  %84 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %85 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %84, i32 0, i32 0
  %86 = load %struct.obs_scene_item*, %struct.obs_scene_item** %85, align 8
  store %struct.obs_scene_item* %86, %struct.obs_scene_item** %18, align 8
  br label %77

87:                                               ; preds = %77
  %88 = load %struct.obs_scene*, %struct.obs_scene** %17, align 8
  %89 = call i32 @audio_unlock(%struct.obs_scene* %88)
  store i32 0, i32* %7, align 4
  br label %218

90:                                               ; preds = %70
  %91 = load %struct.obs_scene*, %struct.obs_scene** %17, align 8
  %92 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %91, i32 0, i32 0
  %93 = load %struct.obs_scene_item*, %struct.obs_scene_item** %92, align 8
  store %struct.obs_scene_item* %93, %struct.obs_scene_item** %18, align 8
  br label %94

94:                                               ; preds = %207, %138, %118, %107, %90
  %95 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %96 = icmp ne %struct.obs_scene_item* %95, null
  br i1 %96, label %97, label %211

97:                                               ; preds = %94
  %98 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @apply_scene_item_volume(%struct.obs_scene_item* %98, float** %15, i64 %99, i64 %100)
  store i32 %101, i32* %23, align 4
  %102 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %103 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @obs_source_audio_pending(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %109 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %108, i32 0, i32 0
  %110 = load %struct.obs_scene_item*, %struct.obs_scene_item** %109, align 8
  store %struct.obs_scene_item* %110, %struct.obs_scene_item** %18, align 8
  br label %94

111:                                              ; preds = %97
  %112 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %113 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @obs_source_get_audio_timestamp(i32 %114)
  store i64 %115, i64* %20, align 8
  %116 = load i64, i64* %20, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %120 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %119, i32 0, i32 0
  %121 = load %struct.obs_scene_item*, %struct.obs_scene_item** %120, align 8
  store %struct.obs_scene_item* %121, %struct.obs_scene_item** %18, align 8
  br label %94

122:                                              ; preds = %111
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %14, align 8
  %126 = sub nsw i64 %124, %125
  %127 = call i64 @ns_to_audio_frames(i64 %123, i64 %126)
  store i64 %127, i64* %21, align 8
  %128 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %129 = load i64, i64* %21, align 8
  %130 = sub i64 %128, %129
  store i64 %130, i64* %22, align 8
  %131 = load i32, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %122
  %134 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %135 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %140 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %139, i32 0, i32 0
  %141 = load %struct.obs_scene_item*, %struct.obs_scene_item** %140, align 8
  store %struct.obs_scene_item* %141, %struct.obs_scene_item** %18, align 8
  br label %94

142:                                              ; preds = %133, %122
  %143 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %144 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @obs_source_get_audio_mix(i32 %145, %struct.obs_source_audio_mix* %16)
  store i64 0, i64* %24, align 8
  br label %147

147:                                              ; preds = %204, %142
  %148 = load i64, i64* %24, align 8
  %149 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %207

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = load i64, i64* %24, align 8
  %154 = trunc i64 %153 to i32
  %155 = shl i32 1, %154
  %156 = and i32 %152, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %204

159:                                              ; preds = %151
  store i64 0, i64* %25, align 8
  br label %160

160:                                              ; preds = %200, %159
  %161 = load i64, i64* %25, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %203

164:                                              ; preds = %160
  %165 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %10, align 8
  %166 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i64, i64* %24, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load float**, float*** %170, align 8
  %172 = load i64, i64* %25, align 8
  %173 = getelementptr inbounds float*, float** %171, i64 %172
  %174 = load float*, float** %173, align 8
  store float* %174, float** %26, align 8
  %175 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %16, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i64, i64* %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load float**, float*** %179, align 8
  %181 = load i64, i64* %25, align 8
  %182 = getelementptr inbounds float*, float** %180, i64 %181
  %183 = load float*, float** %182, align 8
  store float* %183, float** %27, align 8
  %184 = load i32, i32* %23, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %164
  %187 = load float*, float** %26, align 8
  %188 = load float*, float** %27, align 8
  %189 = load float*, float** %15, align 8
  %190 = load i64, i64* %21, align 8
  %191 = load i64, i64* %22, align 8
  %192 = call i32 @mix_audio_with_buf(float* %187, float* %188, float* %189, i64 %190, i64 %191)
  br label %199

193:                                              ; preds = %164
  %194 = load float*, float** %26, align 8
  %195 = load float*, float** %27, align 8
  %196 = load i64, i64* %21, align 8
  %197 = load i64, i64* %22, align 8
  %198 = call i32 @mix_audio(float* %194, float* %195, i64 %196, i64 %197)
  br label %199

199:                                              ; preds = %193, %186
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %25, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %25, align 8
  br label %160

203:                                              ; preds = %160
  br label %204

204:                                              ; preds = %203, %158
  %205 = load i64, i64* %24, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %24, align 8
  br label %147

207:                                              ; preds = %147
  %208 = load %struct.obs_scene_item*, %struct.obs_scene_item** %18, align 8
  %209 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %208, i32 0, i32 0
  %210 = load %struct.obs_scene_item*, %struct.obs_scene_item** %209, align 8
  store %struct.obs_scene_item* %210, %struct.obs_scene_item** %18, align 8
  br label %94

211:                                              ; preds = %94
  %212 = load i64, i64* %14, align 8
  %213 = load i64*, i64** %9, align 8
  store i64 %212, i64* %213, align 8
  %214 = load %struct.obs_scene*, %struct.obs_scene** %17, align 8
  %215 = call i32 @audio_unlock(%struct.obs_scene* %214)
  %216 = load float*, float** %15, align 8
  %217 = call i32 @free(float* %216)
  store i32 1, i32* %7, align 4
  br label %218

218:                                              ; preds = %211, %87
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @audio_lock(%struct.obs_scene*) #1

declare dso_local i64 @obs_source_audio_pending(i32) #1

declare dso_local i64 @obs_source_get_audio_timestamp(i32) #1

declare dso_local i32 @process_all_audio_actions(%struct.obs_scene_item*, i64) #1

declare dso_local i32 @audio_unlock(%struct.obs_scene*) #1

declare dso_local i32 @apply_scene_item_volume(%struct.obs_scene_item*, float**, i64, i64) #1

declare dso_local i64 @ns_to_audio_frames(i64, i64) #1

declare dso_local i32 @obs_source_get_audio_mix(i32, %struct.obs_source_audio_mix*) #1

declare dso_local i32 @mix_audio_with_buf(float*, float*, float*, i64, i64) #1

declare dso_local i32 @mix_audio(float*, float*, i64, i64) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
