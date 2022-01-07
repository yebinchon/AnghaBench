; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_backbuffer_get.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_backbuffer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32 }
%struct.priv = type { i32, i32, i32, i32, i32, i32 }

@IID_ID3D11Texture2D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Couldn't get swap chain back buffer\0A\00", align 1
@EGL_TEXTURE_FORMAT = common dso_local global i32 0, align 4
@EGL_TEXTURE_RGBA = common dso_local global i32 0, align 4
@EGL_TEXTURE_TARGET = common dso_local global i32 0, align 4
@EGL_TEXTURE_2D = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_D3D_TEXTURE_ANGLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't create EGL pbuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @d3d11_backbuffer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d11_backbuffer_get(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load %struct.vo*, %struct.vo** %12, align 8
  store %struct.vo* %13, %struct.vo** %5, align 8
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 4
  %19 = bitcast i32* %18 to i8**
  %20 = call i32 @IDXGISwapChain_GetBuffer(i32 %16, i32 0, i32* @IID_ID3D11Texture2D, i8** %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.vo*, %struct.vo** %5, align 8
  %26 = call i32 @MP_FATAL(%struct.vo* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

27:                                               ; preds = %1
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* @EGL_TEXTURE_FORMAT, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @EGL_TEXTURE_RGBA, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @EGL_TEXTURE_TARGET, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @EGL_TEXTURE_2D, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @EGL_NONE, align 4
  store i32 %37, i32* %36, align 4
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EGL_D3D_TEXTURE_ANGLE, align 4
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %49 = call i32 @eglCreatePbufferFromClientBuffer(i32 %40, i32 %41, i32 %44, i32 %47, i32* %48)
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.priv*, %struct.priv** %4, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %27
  %57 = load %struct.vo*, %struct.vo** %5, align 8
  %58 = call i32 @MP_FATAL(%struct.vo* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

59:                                               ; preds = %27
  %60 = load %struct.priv*, %struct.priv** %4, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.priv*, %struct.priv** %4, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.priv*, %struct.priv** %4, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.priv*, %struct.priv** %4, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @eglMakeCurrent(i32 %62, i32 %65, i32 %68, i32 %71)
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %59, %56, %24
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @IDXGISwapChain_GetBuffer(i32, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @eglCreatePbufferFromClientBuffer(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
