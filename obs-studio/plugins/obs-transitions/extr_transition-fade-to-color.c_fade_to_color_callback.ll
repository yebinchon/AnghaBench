; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-fade-to-color.c_fade_to_color_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-fade-to-color.c_fade_to_color_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fade_to_color_info = type { float, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"FadeToColor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, float, i32, i32)* @fade_to_color_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fade_to_color_callback(i8* %0, i32* %1, i32* %2, float %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fade_to_color_info*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.fade_to_color_info*
  store %struct.fade_to_color_info* %18, %struct.fade_to_color_info** %13, align 8
  %19 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %20 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load float, float* %10, align 4
  %23 = call float @smoothstep(float 0.000000e+00, float %21, float %22)
  store float %23, float* %14, align 4
  %24 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %25 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = load float, float* %10, align 4
  %28 = call float @smoothstep(float %26, float 1.000000e+00, float %27)
  store float %28, float* %15, align 4
  %29 = load float, float* %10, align 4
  %30 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %31 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %30, i32 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = fcmp olt float %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load float, float* %14, align 4
  br label %39

36:                                               ; preds = %6
  %37 = load float, float* %15, align 4
  %38 = fsub float 1.000000e+00, %37
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi float [ %35, %34 ], [ %38, %36 ]
  store float %40, float* %16, align 4
  %41 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %42 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load float, float* %10, align 4
  %45 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %46 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = fcmp olt float %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32*, i32** %8, align 8
  br label %53

51:                                               ; preds = %39
  %52 = load i32*, i32** %9, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32* [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @gs_effect_set_texture(i32 %43, i32* %54)
  %56 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %57 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load float, float* %16, align 4
  %60 = call i32 @gs_effect_set_float(i32 %58, float %59)
  %61 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %62 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %65 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %64, i32 0, i32 2
  %66 = call i32 @gs_effect_set_vec4(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %73, %53
  %68 = load %struct.fade_to_color_info*, %struct.fade_to_color_info** %13, align 8
  %69 = getelementptr inbounds %struct.fade_to_color_info, %struct.fade_to_color_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @gs_effect_loop(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @gs_draw_sprite(i32* null, i32 0, i32 %74, i32 %75)
  br label %67

77:                                               ; preds = %67
  ret void
}

declare dso_local float @smoothstep(float, float, float) #1

declare dso_local i32 @gs_effect_set_texture(i32, i32*) #1

declare dso_local i32 @gs_effect_set_float(i32, float) #1

declare dso_local i32 @gs_effect_set_vec4(i32, i32*) #1

declare dso_local i64 @gs_effect_loop(i32, i8*) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
