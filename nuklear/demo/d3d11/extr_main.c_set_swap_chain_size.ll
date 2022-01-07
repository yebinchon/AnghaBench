; ModuleID = '/home/carl/AnghaBench/nuklear/demo/d3d11/extr_main.c_set_swap_chain_size.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/d3d11/extr_main.c_set_swap_chain_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@rt_view = common dso_local global i64 0, align 8
@context = common dso_local global i32 0, align 4
@swap_chain = common dso_local global i32 0, align 4
@DXGI_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@DXGI_ERROR_DEVICE_REMOVED = common dso_local global i64 0, align 8
@DXGI_ERROR_DEVICE_RESET = common dso_local global i64 0, align 8
@DXGI_ERROR_DRIVER_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i32] [i32 68, i32 88, i32 71, i32 73, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 105, i32 115, i32 32, i32 114, i32 101, i32 109, i32 111, i32 118, i32 101, i32 100, i32 32, i32 111, i32 114, i32 32, i32 114, i32 101, i32 115, i32 101, i32 116, i32 33, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 0], align 4
@DXGI_FORMAT_R8G8B8A8_UNORM = common dso_local global i32 0, align 4
@D3D11_RTV_DIMENSION_TEXTURE2D = common dso_local global i32 0, align 4
@IID_ID3D11Texture2D = common dso_local global i32 0, align 4
@device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_swap_chain_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_swap_chain_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @rt_view, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* @rt_view, align 8
  %12 = call i32 @ID3D11RenderTargetView_Release(i64 %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @context, align 4
  %15 = call i32 @ID3D11DeviceContext_OMSetRenderTargets(i32 %14, i32 0, i32* null, i32* null)
  %16 = load i32, i32* @swap_chain, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DXGI_FORMAT_UNKNOWN, align 4
  %20 = call i64 @IDXGISwapChain_ResizeBuffers(i32 %16, i32 0, i32 %17, i32 %18, i32 %19, i32 0)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @DXGI_ERROR_DEVICE_REMOVED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %13
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @DXGI_ERROR_DEVICE_RESET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @DXGI_ERROR_DRIVER_INTERNAL_ERROR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24, %13
  %33 = call i32 @MessageBoxW(i32* null, i8* bitcast ([33 x i32]* @.str to i8*), i8* bitcast ([6 x i32]* @.str.1 to i8*), i32 0)
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @SUCCEEDED(i64 %36)
  %38 = call i32 @assert(i32 %37)
  %39 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 8)
  %40 = load i32, i32* @DXGI_FORMAT_R8G8B8A8_UNORM, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @D3D11_RTV_DIMENSION_TEXTURE2D, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @swap_chain, align 4
  %45 = bitcast i32** %5 to i8**
  %46 = call i64 @IDXGISwapChain_GetBuffer(i32 %44, i32 0, i32* @IID_ID3D11Texture2D, i8** %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @SUCCEEDED(i64 %47)
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* @device, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @ID3D11Device_CreateRenderTargetView(i32 %50, i32* %51, %struct.TYPE_4__* %6, i64* @rt_view)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @SUCCEEDED(i64 %53)
  %55 = call i32 @assert(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @ID3D11Texture2D_Release(i32* %56)
  ret void
}

declare dso_local i32 @ID3D11RenderTargetView_Release(i64) #1

declare dso_local i32 @ID3D11DeviceContext_OMSetRenderTargets(i32, i32, i32*, i32*) #1

declare dso_local i64 @IDXGISwapChain_ResizeBuffers(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MessageBoxW(i32*, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @IDXGISwapChain_GetBuffer(i32, i32, i32*, i8**) #1

declare dso_local i64 @ID3D11Device_CreateRenderTargetView(i32, i32*, %struct.TYPE_4__*, i64*) #1

declare dso_local i32 @ID3D11Texture2D_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
