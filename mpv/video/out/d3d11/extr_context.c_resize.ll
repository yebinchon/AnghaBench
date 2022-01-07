; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_2__*, i32, %struct.priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.priv = type { i32, i32 }

@DXGI_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't resize swapchain: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 2
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.priv*, %struct.priv** %4, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  %14 = call i32 @ra_tex_free(i32 %11, i32* %13)
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DXGI_FORMAT_UNKNOWN, align 4
  %29 = call i32 @IDXGISwapChain_ResizeBuffers(i32 %17, i32 0, i32 %22, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mp_HRESULT_to_str(i32 %35)
  %37 = call i32 @MP_FATAL(%struct.ra_ctx* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %1
  %39 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %40 = call i32 @get_backbuffer(%struct.ra_ctx* %39)
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ra_tex_free(i32, i32*) #1

declare dso_local i32 @IDXGISwapChain_ResizeBuffers(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_FATAL(%struct.ra_ctx*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @get_backbuffer(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
