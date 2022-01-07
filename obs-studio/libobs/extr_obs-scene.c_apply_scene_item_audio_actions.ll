; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_apply_scene_item_audio_actions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_apply_scene_item_audio_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i32, i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.item_action* }
%struct.item_action = type { i64, i32 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene_item*, float**, i64, i64)* @apply_scene_item_audio_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_scene_item_audio_actions(%struct.obs_scene_item* %0, float** %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.obs_scene_item*, align 8
  %6 = alloca float**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca float*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.item_action, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %5, align 8
  store float** %1, float*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %18 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store float* null, float** %12, align 8
  %20 = load float**, float*** %6, align 8
  %21 = icmp ne float** %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load float**, float*** %6, align 8
  %24 = load float*, float** %23, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call float* @malloc(i32 %30)
  %32 = load float**, float*** %6, align 8
  store float* %31, float** %32, align 8
  br label %33

33:                                               ; preds = %26, %22
  %34 = load float**, float*** %6, align 8
  %35 = load float*, float** %34, align 8
  store float* %35, float** %12, align 8
  br label %36

36:                                               ; preds = %33, %4
  %37 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %38 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %37, i32 0, i32 4
  %39 = call i32 @pthread_mutex_lock(i32* %38)
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %129, %36
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %43 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %132

47:                                               ; preds = %40
  %48 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %49 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.item_action*, %struct.item_action** %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds %struct.item_action, %struct.item_action* %51, i64 %52
  %54 = bitcast %struct.item_action* %14 to i8*
  %55 = bitcast %struct.item_action* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = getelementptr inbounds %struct.item_action, %struct.item_action* %14, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %15, align 8
  br label %63

63:                                               ; preds = %61, %47
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub nsw i64 %64, %65
  %67 = load i64, i64* %8, align 8
  %68 = mul nsw i64 %66, %67
  %69 = udiv i64 %68, 1000000000
  store i64 %69, i64* %16, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load i64, i64* %16, align 8
  %74 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp sge i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %132

78:                                               ; preds = %72, %63
  %79 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %80 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %79, i32 0, i32 5
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %13, align 8
  %83 = trunc i64 %81 to i32
  %84 = bitcast %struct.TYPE_4__* %80 to { i64, %struct.item_action* }*
  %85 = getelementptr inbounds { i64, %struct.item_action* }, { i64, %struct.item_action* }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i64, %struct.item_action* }, { i64, %struct.item_action* }* %84, i32 0, i32 1
  %88 = load %struct.item_action*, %struct.item_action** %87, align 8
  %89 = call i32 @da_erase(i64 %86, %struct.item_action* %88, i32 %83)
  %90 = getelementptr inbounds %struct.item_action, %struct.item_action* %14, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %93 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %95 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %78
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %98, %78
  %102 = load float*, float** %12, align 8
  %103 = icmp ne float* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %121, %108
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %16, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, float 1.000000e+00, float 0.000000e+00
  %118 = load float*, float** %12, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds float, float* %118, i64 %119
  store float %117, float* %120, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i64, i64* %10, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %109

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %104, %101
  %126 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %127 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %40

132:                                              ; preds = %77, %40
  %133 = load float*, float** %12, align 8
  %134 = icmp ne float* %133, null
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %149, %135
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, float 1.000000e+00, float 0.000000e+00
  %146 = load float*, float** %12, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds float, float* %146, i64 %147
  store float %145, float* %148, align 4
  br label %149

149:                                              ; preds = %141
  %150 = load i64, i64* %10, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %10, align 8
  br label %136

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %152, %132
  %154 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %155 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %154, i32 0, i32 4
  %156 = call i32 @pthread_mutex_unlock(i32* %155)
  br label %157

157:                                              ; preds = %176, %153
  %158 = load i64, i64* %11, align 8
  %159 = add i64 %158, -1
  store i64 %159, i64* %11, align 8
  %160 = icmp ne i64 %158, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %163 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %162, i32 0, i32 3
  %164 = call i64 @os_atomic_dec_long(i32* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %168 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %167, i32 0, i32 2
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %173 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @obs_source_remove_active_child(i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %166, %161
  br label %157

177:                                              ; preds = %157
  ret void
}

declare dso_local float* @malloc(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @da_erase(i64, %struct.item_action*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @os_atomic_dec_long(i32*) #1

declare dso_local i32 @obs_source_remove_active_child(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
