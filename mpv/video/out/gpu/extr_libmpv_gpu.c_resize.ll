; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_libmpv_gpu.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_libmpv_gpu.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.render_backend = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.mp_rect = type { i32 }
%struct.mp_osd_res = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.render_backend*, %struct.mp_rect*, %struct.mp_rect*, %struct.mp_osd_res*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(%struct.render_backend* %0, %struct.mp_rect* %1, %struct.mp_rect* %2, %struct.mp_osd_res* %3) #0 {
  %5 = alloca %struct.render_backend*, align 8
  %6 = alloca %struct.mp_rect*, align 8
  %7 = alloca %struct.mp_rect*, align 8
  %8 = alloca %struct.mp_osd_res*, align 8
  %9 = alloca %struct.priv*, align 8
  store %struct.render_backend* %0, %struct.render_backend** %5, align 8
  store %struct.mp_rect* %1, %struct.mp_rect** %6, align 8
  store %struct.mp_rect* %2, %struct.mp_rect** %7, align 8
  store %struct.mp_osd_res* %3, %struct.mp_osd_res** %8, align 8
  %10 = load %struct.render_backend*, %struct.render_backend** %5, align 8
  %11 = getelementptr inbounds %struct.render_backend, %struct.render_backend* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %9, align 8
  %13 = load %struct.priv*, %struct.priv** %9, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mp_rect*, %struct.mp_rect** %6, align 8
  %17 = load %struct.mp_rect*, %struct.mp_rect** %7, align 8
  %18 = load %struct.mp_osd_res*, %struct.mp_osd_res** %8, align 8
  %19 = call i32 @gl_video_resize(i32 %15, %struct.mp_rect* %16, %struct.mp_rect* %17, %struct.mp_osd_res* %18)
  ret void
}

declare dso_local i32 @gl_video_resize(i32, %struct.mp_rect*, %struct.mp_rect*, %struct.mp_osd_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
