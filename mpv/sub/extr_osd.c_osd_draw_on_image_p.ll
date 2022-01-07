; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_draw_on_image_p.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_draw_on_image_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }
%struct.mp_image_pool = type { i32 }
%struct.mp_image = type { i32 }
%struct.mp_osd_res = type { i32 }
%struct.draw_on_image_closure = type { %struct.mp_image_pool*, %struct.mp_image*, %struct.osd_state* }

@mp_draw_sub_formats = common dso_local global i32 0, align 4
@draw_on_image = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_draw_on_image_p(%struct.osd_state* %0, i32 %1, double %2, i32 %3, %struct.mp_image_pool* %4, %struct.mp_image* %5) #0 {
  %7 = alloca %struct.mp_osd_res, align 4
  %8 = alloca %struct.osd_state*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_image_pool*, align 8
  %12 = alloca %struct.mp_image*, align 8
  %13 = alloca %struct.draw_on_image_closure, align 8
  %14 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %7, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  store %struct.osd_state* %0, %struct.osd_state** %8, align 8
  store double %2, double* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.mp_image_pool* %4, %struct.mp_image_pool** %11, align 8
  store %struct.mp_image* %5, %struct.mp_image** %12, align 8
  %15 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %13, i32 0, i32 0
  %16 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %17 = bitcast %struct.osd_state* %16 to %struct.mp_image_pool*
  store %struct.mp_image_pool* %17, %struct.mp_image_pool** %15, align 8
  %18 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %13, i32 0, i32 1
  %19 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  store %struct.mp_image* %19, %struct.mp_image** %18, align 8
  %20 = getelementptr inbounds %struct.draw_on_image_closure, %struct.draw_on_image_closure* %13, i32 0, i32 2
  %21 = load %struct.mp_image_pool*, %struct.mp_image_pool** %11, align 8
  %22 = bitcast %struct.mp_image_pool* %21 to %struct.osd_state*
  store %struct.osd_state* %22, %struct.osd_state** %20, align 8
  %23 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %24 = load double, double* %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @mp_draw_sub_formats, align 4
  %27 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @osd_draw(%struct.osd_state* %23, i32 %28, double %24, i32 %25, i32 %26, i32* @draw_on_image, %struct.draw_on_image_closure* %13)
  ret void
}

declare dso_local i32 @osd_draw(%struct.osd_state*, i32, double, i32, i32, i32*, %struct.draw_on_image_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
