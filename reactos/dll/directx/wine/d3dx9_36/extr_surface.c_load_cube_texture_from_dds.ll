; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_load_cube_texture_from_dds.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_load_cube_texture_from_dds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.dds_header = type { i32 }

@D3DRTYPE_CUBETEXTURE = common dso_local global i64 0, align 8
@D3DXERR_INVALIDDATA = common dso_local global i32 0, align 4
@DDS_CAPS2_CUBEMAP_ALL_FACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Only full cubemaps are supported\0A\00", align 1
@D3DCUBEMAP_FACE_POSITIVE_X = common dso_local global i32 0, align 4
@D3DCUBEMAP_FACE_NEGATIVE_Z = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_cube_texture_from_dds(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.dds_header*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.dds_header*
  store %struct.dds_header* %26, %struct.dds_header** %23, align 8
  %27 = load %struct.dds_header*, %struct.dds_header** %23, align 8
  %28 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %27, i64 1
  %29 = bitcast %struct.dds_header* %28 to i32*
  store i32* %29, i32** %24, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @D3DRTYPE_CUBETEXTURE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %36, i32* %7, align 4
  br label %128

37:                                               ; preds = %6
  %38 = load %struct.dds_header*, %struct.dds_header** %23, align 8
  %39 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DDS_CAPS2_CUBEMAP_ALL_FACES, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @DDS_CAPS2_CUBEMAP_ALL_FACES, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %47, i32* %7, align 4
  br label %128

48:                                               ; preds = %37
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @IDirect3DCubeTexture9_GetLevelCount(i32* %52)
  %54 = call i64 @min(i64 %51, i32 %53)
  store i64 %54, i64* %20, align 8
  %55 = load i32, i32* @D3DCUBEMAP_FACE_POSITIVE_X, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %123, %48
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @D3DCUBEMAP_FACE_NEGATIVE_Z, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %126

60:                                               ; preds = %56
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %64

64:                                               ; preds = %119, %60
  %65 = load i64, i64* %16, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %122

70:                                               ; preds = %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @calculate_dds_surface_size(i32 %73, i64 %74, i64 %75, i64* %19, i64* %21)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  br label %128

82:                                               ; preds = %70
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %20, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %82
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @SetRect(i32* %18, i32 0, i32 0, i64 %87, i64 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i64, i64* %16, align 8
  %93 = call i32 @IDirect3DCubeTexture9_GetCubeMapSurface(i32* %90, i32 %91, i64 %92, i32** %22)
  %94 = load i32*, i32** %22, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %24, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @D3DXLoadSurfaceFromMemory(i32* %94, i32* %95, i32* null, i32* %96, i32 %99, i64 %100, i32* null, i32* %18, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %22, align 8
  %105 = call i32 @IDirect3DSurface9_Release(i32* %104)
  %106 = load i32, i32* %14, align 4
  %107 = call i64 @FAILED(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %86
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %7, align 4
  br label %128

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111, %82
  %113 = load i64, i64* %21, align 8
  %114 = load i32*, i32** %24, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %24, align 8
  %116 = load i64, i64* %17, align 8
  %117 = sdiv i64 %116, 2
  %118 = call i64 @max(i32 1, i64 %117)
  store i64 %118, i64* %17, align 8
  br label %119

119:                                              ; preds = %112
  %120 = load i64, i64* %16, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %16, align 8
  br label %64

122:                                              ; preds = %64
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %56

126:                                              ; preds = %56
  %127 = load i32, i32* @D3D_OK, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %109, %80, %45, %35
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @IDirect3DCubeTexture9_GetLevelCount(i32*) #1

declare dso_local i32 @calculate_dds_surface_size(i32, i64, i64, i64*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @IDirect3DCubeTexture9_GetCubeMapSurface(i32*, i32, i64, i32**) #1

declare dso_local i32 @D3DXLoadSurfaceFromMemory(i32*, i32*, i32*, i32*, i32, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

declare dso_local i64 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
