; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2egl.c_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2egl.c_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, i32, %struct.priv* }
%struct.priv = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32*)* }

@EGL_BACK_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_uninit(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %5 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %6 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %5, i32 0, i32 2
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %9 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_3__* @ra_gl_get(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %13 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %16 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @ra_tex_free(i32 %14, i32* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32*)*, i32 (i32, i32*)** %21, align 8
  %23 = load %struct.priv*, %struct.priv** %3, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 5
  %25 = call i32 %22(i32 1, i32* %24)
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %1
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.priv*, %struct.priv** %3, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @EGL_BACK_BUFFER, align 4
  %43 = call i32 @eglReleaseTexImage(i64 %38, i64 %41, i32 %42)
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @eglDestroySurface(i64 %46, i64 %49)
  br label %51

51:                                               ; preds = %35, %30, %1
  %52 = load %struct.priv*, %struct.priv** %3, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.priv*, %struct.priv** %3, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @IDirect3DSurface9_Release(i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.priv*, %struct.priv** %3, align 8
  %63 = getelementptr inbounds %struct.priv, %struct.priv* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @IDirect3DTexture9_Release(i64 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.priv*, %struct.priv** %3, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.priv*, %struct.priv** %3, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @IDirect3DQuery9_Release(i64 %79)
  br label %81

81:                                               ; preds = %76, %71
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(i32) #1

declare dso_local i32 @ra_tex_free(i32, i32*) #1

declare dso_local i32 @eglReleaseTexImage(i64, i64, i32) #1

declare dso_local i32 @eglDestroySurface(i64, i64) #1

declare dso_local i32 @IDirect3DSurface9_Release(i64) #1

declare dso_local i32 @IDirect3DTexture9_Release(i64) #1

declare dso_local i32 @IDirect3DQuery9_Release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
