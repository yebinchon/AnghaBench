; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xcursor-xcb.c_xcb_xcursor_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xcursor-xcb.c_xcb_xcursor_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@GS_BLEND_SRCALPHA = common dso_local global i32 0, align 4
@GS_BLEND_INVSRCALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xcb_xcursor_render(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = call i32* (...) @gs_get_effect()
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @gs_effect_get_param_by_name(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gs_effect_set_texture(i32* %14, i32 %17)
  %19 = call i32 (...) @gs_blend_state_push()
  %20 = load i32, i32* @GS_BLEND_SRCALPHA, align 4
  %21 = load i32, i32* @GS_BLEND_INVSRCALPHA, align 4
  %22 = call i32 @gs_blend_function(i32 %20, i32 %21)
  %23 = call i32 @gs_enable_color(i32 1, i32 1, i32 1, i32 0)
  %24 = call i32 (...) @gs_matrix_push()
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gs_matrix_translate3f(i32 %27, i32 %30, float 0.000000e+00)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gs_draw_sprite(i32 %34, i32 0, i32 0, i32 0)
  %36 = call i32 (...) @gs_matrix_pop()
  %37 = call i32 @gs_enable_color(i32 1, i32 1, i32 1, i32 1)
  %38 = call i32 (...) @gs_blend_state_pop()
  br label %39

39:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32* @gs_get_effect(...) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32) #1

declare dso_local i32 @gs_blend_state_push(...) #1

declare dso_local i32 @gs_blend_function(i32, i32) #1

declare dso_local i32 @gs_enable_color(i32, i32, i32, i32) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_translate3f(i32, i32, float) #1

declare dso_local i32 @gs_draw_sprite(i32, i32, i32, i32) #1

declare dso_local i32 @gs_matrix_pop(...) #1

declare dso_local i32 @gs_blend_state_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
