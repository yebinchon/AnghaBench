; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_set_constants_device.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_set_constants_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDirect3DDevice9 = type { i32 }

@D3DXPT_VERTEXSHADER = common dso_local global i64 0, align 8
@SetVertexShaderConstantF = common dso_local global i32 0, align 4
@SetVertexShaderConstantI = common dso_local global i32 0, align 4
@SetVertexShaderConstantB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected register table %u.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3DXPT_PIXELSHADER = common dso_local global i64 0, align 8
@SetPixelShaderConstantF = common dso_local global i32 0, align 4
@SetPixelShaderConstantI = common dso_local global i32 0, align 4
@SetPixelShaderConstantB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected parameter type %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.IDirect3DDevice9*, i64, i32, i8*, i32, i32)* @set_constants_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_constants_device(i32* %0, %struct.IDirect3DDevice9* %1, i64 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.IDirect3DDevice9*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.IDirect3DDevice9* %1, %struct.IDirect3DDevice9** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @D3DXPT_VERTEXSHADER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %7
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %45 [
    i32 129, label %21
    i32 128, label %29
    i32 130, label %37
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %24 = load i32, i32* @SetVertexShaderConstantF, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @SET_D3D_STATE_(i32* %22, %struct.IDirect3DDevice9* %23, i32 %24, i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %89

29:                                               ; preds = %19
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %32 = load i32, i32* @SetVertexShaderConstantI, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @SET_D3D_STATE_(i32* %30, %struct.IDirect3DDevice9* %31, i32 %32, i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %89

37:                                               ; preds = %19
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %40 = load i32, i32* @SetVertexShaderConstantB, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @SET_D3D_STATE_(i32* %38, %struct.IDirect3DDevice9* %39, i32 %40, i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %89

45:                                               ; preds = %19
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %49, i32* %8, align 4
  br label %89

50:                                               ; preds = %7
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @D3DXPT_PIXELSHADER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  switch i32 %55, label %80 [
    i32 129, label %56
    i32 128, label %64
    i32 130, label %72
  ]

56:                                               ; preds = %54
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %59 = load i32, i32* @SetPixelShaderConstantF, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i8*, i8** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @SET_D3D_STATE_(i32* %57, %struct.IDirect3DDevice9* %58, i32 %59, i32 %60, i8* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %89

64:                                               ; preds = %54
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %67 = load i32, i32* @SetPixelShaderConstantI, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @SET_D3D_STATE_(i32* %65, %struct.IDirect3DDevice9* %66, i32 %67, i32 %68, i8* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %89

72:                                               ; preds = %54
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %75 = load i32, i32* @SetPixelShaderConstantB, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @SET_D3D_STATE_(i32* %73, %struct.IDirect3DDevice9* %74, i32 %75, i32 %76, i8* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %89

80:                                               ; preds = %54
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %84, i32* %8, align 4
  br label %89

85:                                               ; preds = %50
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %80, %72, %64, %56, %45, %37, %29, %21
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @SET_D3D_STATE_(i32*, %struct.IDirect3DDevice9*, i32, i32, i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
