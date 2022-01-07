; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_add_subs.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_add_subs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32 }
%struct.mp_image = type { i32 }
%struct.mp_osd_res = type { i32 }

@OSD_DRAW_SUB_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.mp_image*)* @add_subs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_subs(%struct.MPContext* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.mp_osd_res, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %6 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %7 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 0
  %8 = call i32 @osd_res_from_image_params(i32* %7)
  %9 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OSD_DRAW_SUB_ONLY, align 4
  %17 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %18 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @osd_draw_on_image(i32 %12, i32 %19, i32 %15, i32 %16, %struct.mp_image* %17)
  ret void
}

declare dso_local i32 @osd_res_from_image_params(i32*) #1

declare dso_local i32 @osd_draw_on_image(i32, i32, i32, i32, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
