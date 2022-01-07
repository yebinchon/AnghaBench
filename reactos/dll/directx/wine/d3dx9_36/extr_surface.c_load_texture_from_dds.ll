; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_load_texture_from_dds.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_load_texture_from_dds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }
%struct.dds_header = type { i32 }

@D3DRTYPE_TEXTURE = common dso_local global i64 0, align 8
@D3DRTYPE_CUBETEXTURE = common dso_local global i64 0, align 8
@D3DRTYPE_VOLUMETEXTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Trying to load a %u resource as a 2D texture, returning failure.\0A\00", align 1
@D3DXERR_INVALIDDATA = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_texture_from_dds(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4, %struct.TYPE_3__* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.dds_header*, align 8
  %28 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = bitcast i8* %29 to %struct.dds_header*
  store %struct.dds_header* %30, %struct.dds_header** %27, align 8
  %31 = load %struct.dds_header*, %struct.dds_header** %27, align 8
  %32 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %31, i64 1
  %33 = bitcast %struct.dds_header* %32 to i32*
  store i32* %33, i32** %28, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @D3DRTYPE_TEXTURE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @D3DRTYPE_CUBETEXTURE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @D3DRTYPE_VOLUMETEXTURE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @WARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %56, i32* %9, align 4
  br label %146

57:                                               ; preds = %45, %39, %8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %24, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %25, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @IDirect3DTexture9_GetLevelCount(i32* %67)
  %69 = call i32 @min(i32 %66, i32 %68)
  store i32 %69, i32* %22, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @D3DRTYPE_VOLUMETEXTURE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  store i32 1, i32* %22, align 4
  br label %76

76:                                               ; preds = %75, %57
  store i32 0, i32* %21, align 4
  br label %77

77:                                               ; preds = %137, %76
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add i32 %79, %80
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %140

83:                                               ; preds = %77
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %25, align 4
  %89 = call i32 @calculate_dds_surface_size(i32 %86, i32 %87, i32 %88, i32* %20, i32* %23)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i64 @FAILED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %9, align 4
  br label %146

95:                                               ; preds = %83
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp uge i32 %96, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %95
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @SetRect(i32* %19, i32 0, i32 0, i32 %100, i32 %101)
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub i32 %104, %105
  %107 = call i32 @IDirect3DTexture9_GetSurfaceLevel(i32* %103, i32 %106, i32** %26)
  %108 = load i32*, i32** %26, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load i32*, i32** %28, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @D3DXLoadSurfaceFromMemory(i32* %108, i32* %109, i32* null, i32* %110, i32 %113, i32 %114, i32* null, i32* %19, i32 %115, i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32*, i32** %26, align 8
  %119 = call i32 @IDirect3DSurface9_Release(i32* %118)
  %120 = load i32, i32* %18, align 4
  %121 = call i64 @FAILED(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %99
  %124 = load i32, i32* %18, align 4
  store i32 %124, i32* %9, align 4
  br label %146

125:                                              ; preds = %99
  br label %126

126:                                              ; preds = %125, %95
  %127 = load i32, i32* %23, align 4
  %128 = load i32*, i32** %28, align 8
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %28, align 8
  %131 = load i32, i32* %24, align 4
  %132 = udiv i32 %131, 2
  %133 = call i32 @max(i32 1, i32 %132)
  store i32 %133, i32* %24, align 4
  %134 = load i32, i32* %25, align 4
  %135 = udiv i32 %134, 2
  %136 = call i32 @max(i32 1, i32 %135)
  store i32 %136, i32* %25, align 4
  br label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %21, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %21, align 4
  br label %77

140:                                              ; preds = %77
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sub i32 %141, %142
  %144 = load i32*, i32** %17, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* @D3D_OK, align 4
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %140, %123, %93, %51
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @IDirect3DTexture9_GetLevelCount(i32*) #1

declare dso_local i32 @calculate_dds_surface_size(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3DTexture9_GetSurfaceLevel(i32*, i32, i32**) #1

declare dso_local i32 @D3DXLoadSurfaceFromMemory(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
