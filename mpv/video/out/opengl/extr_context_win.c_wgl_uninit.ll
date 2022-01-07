; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_wgl_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_wgl_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32, i64 }

@destroy_gl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @wgl_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wgl_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 1
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = call i32 @ra_gl_ctx_uninit(%struct.ra_ctx* %7)
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @wglMakeCurrent(i32 %16, i32 0)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @destroy_gl, align 4
  %23 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %24 = call i32 @vo_w32_run_on_thread(i32 %21, i32 %22, %struct.ra_ctx* %23)
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @DwmEnableMMCSS(i32 %25)
  %27 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vo_w32_uninit(i32 %29)
  ret void
}

declare dso_local i32 @ra_gl_ctx_uninit(%struct.ra_ctx*) #1

declare dso_local i32 @wglMakeCurrent(i32, i32) #1

declare dso_local i32 @vo_w32_run_on_thread(i32, i32, %struct.ra_ctx*) #1

declare dso_local i32 @DwmEnableMMCSS(i32) #1

declare dso_local i32 @vo_w32_uninit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
