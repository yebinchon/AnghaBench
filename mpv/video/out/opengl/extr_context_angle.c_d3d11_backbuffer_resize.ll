; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_backbuffer_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_backbuffer_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32 }
%struct.priv = type { i32, i32, i32 }

@DXGI_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't resize swapchain: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't get back buffer after resize\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @d3d11_backbuffer_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d11_backbuffer_resize(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %3, align 8
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load %struct.vo*, %struct.vo** %12, align 8
  store %struct.vo* %13, %struct.vo** %4, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %21 = call i32 @update_sizes(%struct.ra_ctx* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.priv*, %struct.priv** %3, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %63

34:                                               ; preds = %27, %1
  %35 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %36 = call i32 @d3d11_backbuffer_release(%struct.ra_ctx* %35)
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.priv*, %struct.priv** %3, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DXGI_FORMAT_UNKNOWN, align 4
  %47 = call i32 @IDXGISwapChain_ResizeBuffers(i32 %39, i32 0, i32 %42, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.vo*, %struct.vo** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mp_HRESULT_to_str(i32 %53)
  %55 = call i32 (%struct.vo*, i8*, ...) @MP_FATAL(%struct.vo* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %34
  %57 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %58 = call i32 @d3d11_backbuffer_get(%struct.ra_ctx* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load %struct.vo*, %struct.vo** %4, align 8
  %62 = call i32 (%struct.vo*, i8*, ...) @MP_FATAL(%struct.vo* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %33, %60, %56
  ret void
}

declare dso_local i32 @update_sizes(%struct.ra_ctx*) #1

declare dso_local i32 @d3d11_backbuffer_release(%struct.ra_ctx*) #1

declare dso_local i32 @IDXGISwapChain_ResizeBuffers(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*, ...) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @d3d11_backbuffer_get(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
