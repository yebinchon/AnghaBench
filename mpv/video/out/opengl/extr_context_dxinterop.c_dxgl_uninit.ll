; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_dxgl_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_dxgl_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @dxgl_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxgl_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %3 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %4 = call i32 @ra_gl_ctx_uninit(%struct.ra_ctx* %3)
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %6 = call i32 @d3d_size_dependent_destroy(%struct.ra_ctx* %5)
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = call i32 @d3d_destroy(%struct.ra_ctx* %7)
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %10 = call i32 @os_ctx_destroy(%struct.ra_ctx* %9)
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vo_w32_uninit(i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @DwmEnableMMCSS(i32 %15)
  %17 = call i32 (...) @pump_message_loop()
  ret void
}

declare dso_local i32 @ra_gl_ctx_uninit(%struct.ra_ctx*) #1

declare dso_local i32 @d3d_size_dependent_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @d3d_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @os_ctx_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @vo_w32_uninit(i32) #1

declare dso_local i32 @DwmEnableMMCSS(i32) #1

declare dso_local i32 @pump_message_loop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
