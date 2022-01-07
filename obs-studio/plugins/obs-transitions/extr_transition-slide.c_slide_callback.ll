; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-slide.c_slide_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-slide.c_slide_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slide_info = type { i32, i32, i32, i32, i32, %struct.vec2 }
%struct.vec2 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Slide\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, float, i32, i32)* @slide_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slide_callback(i8* %0, i32* %1, i32* %2, float %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.slide_info*, align 8
  %14 = alloca %struct.vec2, align 4
  %15 = alloca %struct.vec2, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.slide_info*
  store %struct.slide_info* %17, %struct.slide_info** %13, align 8
  %18 = load %struct.slide_info*, %struct.slide_info** %13, align 8
  %19 = getelementptr inbounds %struct.slide_info, %struct.slide_info* %18, i32 0, i32 5
  %20 = bitcast %struct.vec2* %14 to i8*
  %21 = bitcast %struct.vec2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.slide_info*, %struct.slide_info** %13, align 8
  %23 = getelementptr inbounds %struct.slide_info, %struct.slide_info* %22, i32 0, i32 5
  %24 = bitcast %struct.vec2* %15 to i8*
  %25 = bitcast %struct.vec2* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load float, float* %10, align 4
  %27 = call float @cubic_ease_in_out(float %26)
  store float %27, float* %10, align 4
  %28 = load float, float* %10, align 4
  %29 = call i32 @vec2_mulf(%struct.vec2* %14, %struct.vec2* %14, float %28)
  %30 = load float, float* %10, align 4
  %31 = fsub float 1.000000e+00, %30
  %32 = call i32 @vec2_mulf(%struct.vec2* %15, %struct.vec2* %15, float %31)
  %33 = load %struct.slide_info*, %struct.slide_info** %13, align 8
  %34 = getelementptr inbounds %struct.slide_info, %struct.slide_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @gs_effect_set_texture(i32 %35, i32* %36)
  %38 = load %struct.slide_info*, %struct.slide_info** %13, align 8
  %39 = getelementptr inbounds %struct.slide_info, %struct.slide_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @gs_effect_set_texture(i32 %40, i32* %41)
  %43 = load %struct.slide_info*, %struct.slide_info** %13, align 8
  %44 = getelementptr inbounds %struct.slide_info, %struct.slide_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gs_effect_set_vec2(i32 %45, %struct.vec2* %14)
  %47 = load %struct.slide_info*, %struct.slide_info** %13, align 8
  %48 = getelementptr inbounds %struct.slide_info, %struct.slide_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gs_effect_set_vec2(i32 %49, %struct.vec2* %15)
  br label %51

51:                                               ; preds = %57, %6
  %52 = load %struct.slide_info*, %struct.slide_info** %13, align 8
  %53 = getelementptr inbounds %struct.slide_info, %struct.slide_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @gs_effect_loop(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @gs_draw_sprite(i32* null, i32 0, i32 %58, i32 %59)
  br label %51

61:                                               ; preds = %51
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @cubic_ease_in_out(float) #2

declare dso_local i32 @vec2_mulf(%struct.vec2*, %struct.vec2*, float) #2

declare dso_local i32 @gs_effect_set_texture(i32, i32*) #2

declare dso_local i32 @gs_effect_set_vec2(i32, %struct.vec2*) #2

declare dso_local i64 @gs_effect_loop(i32, i8*) #2

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
