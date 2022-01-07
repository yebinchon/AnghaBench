; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_device.c_d3d_device7_GetTextureStageState.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_device.c_d3d_device7_GetTextureStageState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tss_lookup = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.d3d_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"iface %p, stage %u, state %#x, value %p.\0A\00", align 1
@DDERR_INVALIDPARAMS = common dso_local global i32 0, align 4
@D3DTSS_TEXTURETRANSFORMFLAGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid state %#x passed.\0A\00", align 1
@DD_OK = common dso_local global i32 0, align 4
@tss_lookup = common dso_local global %struct.tss_lookup* null, align 8
@D3DTFP_NONE = common dso_local global i32 0, align 4
@D3DTFP_POINT = common dso_local global i32 0, align 4
@D3DTFP_LINEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unexpected mipfilter value %#x.\0A\00", align 1
@D3DTFG_POINT = common dso_local global i32 0, align 4
@D3DTFG_LINEAR = common dso_local global i32 0, align 4
@D3DTFG_ANISOTROPIC = common dso_local global i32 0, align 4
@D3DTFG_FLATCUBIC = common dso_local global i32 0, align 4
@D3DTFG_GAUSSIANCUBIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Unexpected wined3d mag filter value %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32*)* @d3d_device7_GetTextureStageState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d_device7_GetTextureStageState(i32* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.d3d_device*, align 8
  %11 = alloca %struct.tss_lookup*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.d3d_device* @impl_from_IDirect3DDevice7(i32* %12)
  store %struct.d3d_device* %13, %struct.d3d_device** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %15, i64 %16, i32* %17)
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @DDERR_INVALIDPARAMS, align 4
  store i32 %22, i32* %5, align 4
  br label %112

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @D3DTSS_TEXTURETRANSFORMFLAGS, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @DD_OK, align 4
  store i32 %30, i32* %5, align 4
  br label %112

31:                                               ; preds = %23
  %32 = load %struct.tss_lookup*, %struct.tss_lookup** @tss_lookup, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.tss_lookup, %struct.tss_lookup* %32, i64 %33
  store %struct.tss_lookup* %34, %struct.tss_lookup** %11, align 8
  %35 = call i32 (...) @wined3d_mutex_lock()
  %36 = load %struct.tss_lookup*, %struct.tss_lookup** %11, align 8
  %37 = getelementptr inbounds %struct.tss_lookup, %struct.tss_lookup* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %31
  %41 = load %struct.d3d_device*, %struct.d3d_device** %10, align 8
  %42 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.tss_lookup*, %struct.tss_lookup** %11, align 8
  %46 = getelementptr inbounds %struct.tss_lookup, %struct.tss_lookup* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wined3d_device_get_sampler_state(i32 %43, i32 %44, i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* %8, align 8
  switch i64 %51, label %96 [
    i64 134, label %52
    i64 135, label %71
  ]

52:                                               ; preds = %40
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %64 [
    i32 129, label %55
    i32 128, label %58
    i32 130, label %61
  ]

55:                                               ; preds = %52
  %56 = load i32, i32* @D3DTFP_NONE, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %70

58:                                               ; preds = %52
  %59 = load i32, i32* @D3DTFP_POINT, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load i32, i32* @D3DTFP_LINEAR, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %70

64:                                               ; preds = %52
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @D3DTFP_NONE, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %61, %58, %55
  br label %97

71:                                               ; preds = %40
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %89 [
    i32 128, label %74
    i32 130, label %77
    i32 133, label %80
    i32 132, label %83
    i32 131, label %86
  ]

74:                                               ; preds = %71
  %75 = load i32, i32* @D3DTFG_POINT, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %95

77:                                               ; preds = %71
  %78 = load i32, i32* @D3DTFG_LINEAR, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %95

80:                                               ; preds = %71
  %81 = load i32, i32* @D3DTFG_ANISOTROPIC, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %95

83:                                               ; preds = %71
  %84 = load i32, i32* @D3DTFG_FLATCUBIC, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  br label %95

86:                                               ; preds = %71
  %87 = load i32, i32* @D3DTFG_GAUSSIANCUBIC, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %95

89:                                               ; preds = %71
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @D3DTFG_POINT, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %86, %83, %80, %77, %74
  br label %97

96:                                               ; preds = %40
  br label %97

97:                                               ; preds = %96, %95, %70
  br label %109

98:                                               ; preds = %31
  %99 = load %struct.d3d_device*, %struct.d3d_device** %10, align 8
  %100 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.tss_lookup*, %struct.tss_lookup** %11, align 8
  %104 = getelementptr inbounds %struct.tss_lookup, %struct.tss_lookup* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @wined3d_device_get_texture_stage_state(i32 %101, i32 %102, i32 %106)
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %97
  %110 = call i32 (...) @wined3d_mutex_unlock()
  %111 = load i32, i32* @D3D_OK, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %27, %21
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.d3d_device* @impl_from_IDirect3DDevice7(i32*) #1

declare dso_local i32 @TRACE(i8*, i32*, i32, i64, i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_device_get_sampler_state(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wined3d_device_get_texture_stage_state(i32, i32, i32) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
