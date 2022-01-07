; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_init_d3d11_tex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_init_d3d11_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@DXGI_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@D3D11_USAGE_DEFAULT = common dso_local global i32 0, align 4
@D3D11_RESOURCE_MISC_SHARED = common dso_local global i32 0, align 4
@D3D11_BIND_RENDER_TARGET = common dso_local global i32 0, align 4
@D3D11_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"gl_shtex_init_d3d11_tex: failed to create texture\00", align 1
@GUID_IDXGIResource = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"gl_shtex_init_d3d11_tex: failed to get IDXGIResource\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"gl_shtex_init_d3d11_tex: failed to get shared handle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gl_shtex_init_d3d11_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_shtex_init_d3d11_tex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 40, i1 false)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 4), align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 3), align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @DXGI_FORMAT_B8G8R8A8_UNORM, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @D3D11_USAGE_DEFAULT, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @D3D11_RESOURCE_MISC_SHARED, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @D3D11_BIND_RENDER_TARGET, align 4
  %21 = load i32, i32* @D3D11_BIND_SHADER_RESOURCE, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 2), align 4
  %25 = call i32 @ID3D11Device_CreateTexture2D(i32 %24, %struct.TYPE_6__* %4, i32* null, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 1))
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %0
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @hlog_hr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %1, align 4
  br label %54

32:                                               ; preds = %0
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 1), align 4
  %34 = bitcast i32** %2 to i8**
  %35 = call i32 @ID3D11Device_QueryInterface(i32 %33, i32* @GUID_IDXGIResource, i8** %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @hlog_hr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 0, i32* %1, align 4
  br label %54

42:                                               ; preds = %32
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @IDXGIResource_GetSharedHandle(i32* %43, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @data, i32 0, i32 0))
  store i32 %44, i32* %3, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @IDXGIResource_Release(i32* %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @hlog_hr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 0, i32* %1, align 4
  br label %54

53:                                               ; preds = %42
  store i32 1, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %50, %39, %29
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ID3D11Device_CreateTexture2D(i32, %struct.TYPE_6__*, i32*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @hlog_hr(i8*, i32) #2

declare dso_local i32 @ID3D11Device_QueryInterface(i32, i32*, i8**) #2

declare dso_local i32 @IDXGIResource_GetSharedHandle(i32*, i32*) #2

declare dso_local i32 @IDXGIResource_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
