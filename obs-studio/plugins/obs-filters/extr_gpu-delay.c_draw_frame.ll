; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_draw_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_delay_filter_data = type { i32, i32, i32 }
%struct.frame = type { i32 }

@OBS_EFFECT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpu_delay_filter_data*)* @draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_frame(%struct.gpu_delay_filter_data* %0) #0 {
  %2 = alloca %struct.gpu_delay_filter_data*, align 8
  %3 = alloca %struct.frame, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.gpu_delay_filter_data* %0, %struct.gpu_delay_filter_data** %2, align 8
  %7 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %8 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %7, i32 0, i32 2
  %9 = call i32 @circlebuf_peek_front(i32* %8, %struct.frame* %3, i32 4)
  %10 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  %11 = call i32* @obs_get_base_effect(i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @gs_texrender_get_texture(i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @gs_effect_get_param_by_name(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @gs_effect_set_texture(i32* %20, i32* %21)
  br label %23

23:                                               ; preds = %27, %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @gs_effect_loop(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %30 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %2, align 8
  %33 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gs_draw_sprite(i32* %28, i32 0, i32 %31, i32 %34)
  br label %23

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @circlebuf_peek_front(i32*, %struct.frame*, i32) #1

declare dso_local i32* @obs_get_base_effect(i32) #1

declare dso_local i32* @gs_texrender_get_texture(i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i64 @gs_effect_loop(i32*, i8*) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
