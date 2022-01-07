; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_save_dds_texture_to_memory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_save_dds_texture_to_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DRTYPE_TEXTURE = common dso_local global i64 0, align 8
@D3DRTYPE_CUBETEXTURE = common dso_local global i64 0, align 8
@D3DRTYPE_VOLUMETEXTURE = common dso_local global i64 0, align 8
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cube texture not supported yet\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Volume texture not supported yet\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Mipmap not supported yet\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Saving surfaces with palettized pixel formats not implemented yet\0A\00", align 1
@D3DCUBEMAP_FACE_POSITIVE_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_dds_texture_to_memory(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @IDirect3DBaseTexture9_GetType(i32* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @D3DRTYPE_TEXTURE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @D3DRTYPE_CUBETEXTURE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @D3DRTYPE_VOLUMETEXTURE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %26, i32* %4, align 4
  br label %72

27:                                               ; preds = %21, %17, %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @D3DRTYPE_CUBETEXTURE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @D3DRTYPE_VOLUMETEXTURE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %40, i32* %4, align 4
  br label %72

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @IDirect3DTexture9_GetLevelCount(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %49, i32* %4, align 4
  br label %72

50:                                               ; preds = %42
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 @FIXME(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @D3DCUBEMAP_FACE_POSITIVE_X, align 4
  %60 = call i32 @get_surface(i64 %57, i32* %58, i32 %59, i32 0, i32** %11)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @SUCCEEDED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32**, i32*** %5, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @save_dds_surface_to_memory(i32** %65, i32* %66, i32* null)
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @IDirect3DSurface9_Release(i32* %68)
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %53, %47, %38, %31, %25
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @IDirect3DBaseTexture9_GetType(i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @IDirect3DTexture9_GetLevelCount(i32*) #1

declare dso_local i32 @get_surface(i64, i32*, i32, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @save_dds_surface_to_memory(i32**, i32*, i32*) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
