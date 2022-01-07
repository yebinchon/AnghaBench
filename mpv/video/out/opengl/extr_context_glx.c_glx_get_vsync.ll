; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_glx_get_vsync.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_glx.c_glx_get_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.vo_vsync_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*, %struct.vo_vsync_info*)* @glx_get_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glx_get_vsync(%struct.ra_ctx* %0, %struct.vo_vsync_info* %1) #0 {
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.vo_vsync_info*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  store %struct.vo_vsync_info* %1, %struct.vo_vsync_info** %4, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load %struct.priv*, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %12 = call i32 @oml_sync_get_info(i32* %10, %struct.vo_vsync_info* %11)
  ret void
}

declare dso_local i32 @oml_sync_get_info(i32*, %struct.vo_vsync_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
