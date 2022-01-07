; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_extended.c_ui_widget_centered.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_extended.c_ui_widget_centered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.media = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ui_widget_centered.ratio = internal constant [3 x float] [float 0x3FC3333340000000, float 5.000000e-01, float 0x3FD6666660000000], align 4
@NK_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*, %struct.media*, float)* @ui_widget_centered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_widget_centered(%struct.nk_context* %0, %struct.media* %1, float %2) #0 {
  %4 = alloca %struct.nk_context*, align 8
  %5 = alloca %struct.media*, align 8
  %6 = alloca float, align 4
  store %struct.nk_context* %0, %struct.nk_context** %4, align 8
  store %struct.media* %1, %struct.media** %5, align 8
  store float %2, float* %6, align 4
  %7 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %8 = load %struct.media*, %struct.media** %5, align 8
  %9 = getelementptr inbounds %struct.media, %struct.media* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @nk_style_set_font(%struct.nk_context* %7, i32* %11)
  %13 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %14 = load i32, i32* @NK_DYNAMIC, align 4
  %15 = load float, float* %6, align 4
  %16 = call i32 @nk_layout_row(%struct.nk_context* %13, i32 %14, float %15, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @ui_widget_centered.ratio, i64 0, i64 0))
  %17 = load %struct.nk_context*, %struct.nk_context** %4, align 8
  %18 = call i32 @nk_spacing(%struct.nk_context* %17, i32 1)
  ret void
}

declare dso_local i32 @nk_style_set_font(%struct.nk_context*, i32*) #1

declare dso_local i32 @nk_layout_row(%struct.nk_context*, i32, float, i32, float*) #1

declare dso_local i32 @nk_spacing(%struct.nk_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
