; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_get_backbuffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_get_backbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_tex = type { i32 }
%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32 }

@IID_ID3D11Texture2D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Couldn't get swapchain image\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ra_tex* (%struct.ra_ctx*)* @get_backbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ra_tex* @get_backbuffer(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ra_tex*, align 8
  %6 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.ra_tex* null, %struct.ra_tex** %5, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = bitcast i32** %4 to i8**
  %14 = call i32 @IDXGISwapChain_GetBuffer(i32 %12, i32 0, i32* @IID_ID3D11Texture2D, i8** %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %20 = call i32 @MP_ERR(%struct.ra_ctx* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.ra_tex* @ra_d3d11_wrap_tex(i32 %24, i32* %25)
  store %struct.ra_tex* %26, %struct.ra_tex** %5, align 8
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @SAFE_RELEASE(i32* %28)
  %30 = load %struct.ra_tex*, %struct.ra_tex** %5, align 8
  ret %struct.ra_tex* %30
}

declare dso_local i32 @IDXGISwapChain_GetBuffer(i32, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra_ctx*, i8*) #1

declare dso_local %struct.ra_tex* @ra_d3d11_wrap_tex(i32, i32*) #1

declare dso_local i32 @SAFE_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
