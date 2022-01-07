; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_ass_draw_rect_ccw.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_ass_draw_rect_ccw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ass_draw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ass_draw*, float, float, float, float)* @ass_draw_rect_ccw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ass_draw_rect_ccw(%struct.ass_draw* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.ass_draw*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.ass_draw* %0, %struct.ass_draw** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %11 = load %struct.ass_draw*, %struct.ass_draw** %6, align 8
  %12 = load float, float* %7, align 4
  %13 = load float, float* %8, align 4
  %14 = call i32 @ass_draw_move_to(%struct.ass_draw* %11, float %12, float %13)
  %15 = load %struct.ass_draw*, %struct.ass_draw** %6, align 8
  %16 = load float, float* %7, align 4
  %17 = load float, float* %10, align 4
  %18 = call i32 @ass_draw_line_to(%struct.ass_draw* %15, float %16, float %17)
  %19 = load %struct.ass_draw*, %struct.ass_draw** %6, align 8
  %20 = load float, float* %9, align 4
  %21 = load float, float* %10, align 4
  %22 = call i32 @ass_draw_line_to(%struct.ass_draw* %19, float %20, float %21)
  %23 = load %struct.ass_draw*, %struct.ass_draw** %6, align 8
  %24 = load float, float* %9, align 4
  %25 = load float, float* %8, align 4
  %26 = call i32 @ass_draw_line_to(%struct.ass_draw* %23, float %24, float %25)
  ret void
}

declare dso_local i32 @ass_draw_move_to(%struct.ass_draw*, float, float) #1

declare dso_local i32 @ass_draw_line_to(%struct.ass_draw*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
