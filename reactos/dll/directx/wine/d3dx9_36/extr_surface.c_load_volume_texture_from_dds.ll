; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_load_volume_texture_from_dds.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_load_volume_texture_from_dds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.dds_header = type { i32 }

@D3DRTYPE_VOLUMETEXTURE = common dso_local global i64 0, align 8
@D3DXERR_INVALIDDATA = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_volume_texture_from_dds(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.dds_header*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.dds_header*
  store %struct.dds_header* %27, %struct.dds_header** %24, align 8
  %28 = load %struct.dds_header*, %struct.dds_header** %24, align 8
  %29 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %28, i64 1
  %30 = bitcast %struct.dds_header* %29 to i32*
  store i32* %30, i32** %25, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @D3DRTYPE_VOLUMETEXTURE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %37, i32* %7, align 4
  br label %127

38:                                               ; preds = %6
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %20, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %21, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %22, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @IDirect3DVolumeTexture9_GetLevelCount(i32* %51)
  %53 = call i64 @min(i32 %50, i32 %52)
  store i64 %53, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %54

54:                                               ; preds = %122, %38
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %125

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %20, align 8
  %63 = load i64, i64* %21, align 8
  %64 = call i32 @calculate_dds_surface_size(i32 %61, i64 %62, i64 %63, i64* %18, i64* %17)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %127

70:                                               ; preds = %58
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @IDirect3DVolumeTexture9_GetVolumeLevel(i32* %71, i64 %72, i32** %23)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %127

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = load i64, i64* %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* %22, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load i32*, i32** %23, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32*, i32** %25, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @D3DXLoadVolumeFromMemory(i32* %89, i32* %90, i32* null, i32* %91, i32 %94, i64 %95, i64 %96, i32* null, %struct.TYPE_6__* %19, i32 %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32*, i32** %23, align 8
  %101 = call i32 @IDirect3DVolume9_Release(i32* %100)
  %102 = load i32, i32* %14, align 4
  %103 = call i64 @FAILED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %79
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %7, align 4
  br label %127

107:                                              ; preds = %79
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* %17, align 8
  %110 = mul nsw i64 %108, %109
  %111 = load i32*, i32** %25, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 %110
  store i32* %112, i32** %25, align 8
  %113 = load i64, i64* %20, align 8
  %114 = sdiv i64 %113, 2
  %115 = call i64 @max(i32 1, i64 %114)
  store i64 %115, i64* %20, align 8
  %116 = load i64, i64* %21, align 8
  %117 = sdiv i64 %116, 2
  %118 = call i64 @max(i32 1, i64 %117)
  store i64 %118, i64* %21, align 8
  %119 = load i64, i64* %22, align 8
  %120 = sdiv i64 %119, 2
  %121 = call i64 @max(i32 1, i64 %120)
  store i64 %121, i64* %22, align 8
  br label %122

122:                                              ; preds = %107
  %123 = load i64, i64* %15, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %15, align 8
  br label %54

125:                                              ; preds = %54
  %126 = load i32, i32* @D3D_OK, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %105, %77, %68, %36
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @IDirect3DVolumeTexture9_GetLevelCount(i32*) #1

declare dso_local i32 @calculate_dds_surface_size(i32, i64, i64, i64*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DVolumeTexture9_GetVolumeLevel(i32*, i64, i32**) #1

declare dso_local i32 @D3DXLoadVolumeFromMemory(i32*, i32*, i32*, i32*, i32, i64, i64, i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @IDirect3DVolume9_Release(i32*) #1

declare dso_local i64 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
