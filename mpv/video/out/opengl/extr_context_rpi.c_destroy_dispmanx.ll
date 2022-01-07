; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_rpi.c_destroy_dispmanx.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_rpi.c_destroy_dispmanx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { i64, i64, i64, i64, i32 }

@EGL_NO_SURFACE = common dso_local global i64 0, align 8
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @destroy_dispmanx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_dispmanx(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.priv*, %struct.priv** %3, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* @EGL_NO_SURFACE, align 8
  %16 = load i64, i64* @EGL_NO_SURFACE, align 8
  %17 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %18 = call i32 @eglMakeCurrent(i32 %14, i64 %15, i64 %16, i32 %17)
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @eglDestroySurface(i32 %21, i64 %24)
  %26 = load i64, i64* @EGL_NO_SURFACE, align 8
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %11, %1
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.priv*, %struct.priv** %3, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @vc_dispmanx_element_remove(i64 %37, i64 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.priv*, %struct.priv** %3, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.priv*, %struct.priv** %3, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @vc_dispmanx_display_close(i64 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.priv*, %struct.priv** %3, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.priv*, %struct.priv** %3, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.priv*, %struct.priv** %3, align 8
  %63 = getelementptr inbounds %struct.priv, %struct.priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vc_dispmanx_update_submit_sync(i64 %64)
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  ret void
}

declare dso_local i32 @eglMakeCurrent(i32, i64, i64, i32) #1

declare dso_local i32 @eglDestroySurface(i32, i64) #1

declare dso_local i32 @vc_dispmanx_element_remove(i64, i64) #1

declare dso_local i32 @vc_dispmanx_display_close(i64) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
