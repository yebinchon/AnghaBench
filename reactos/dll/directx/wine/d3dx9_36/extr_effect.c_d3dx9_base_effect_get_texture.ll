; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.IDirect3DBaseTexture9 = type { i32 }
%struct.d3dx_parameter = type { i64, i64, i32 }

@D3DXPT_TEXTURE = common dso_local global i64 0, align 8
@D3DXPT_TEXTURE1D = common dso_local global i64 0, align 8
@D3DXPT_TEXTURE2D = common dso_local global i64 0, align 8
@D3DXPT_TEXTURE3D = common dso_local global i64 0, align 8
@D3DXPT_TEXTURECUBE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Returning %p\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, %struct.IDirect3DBaseTexture9**)* @d3dx9_base_effect_get_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_texture(%struct.d3dx9_base_effect* %0, i32 %1, %struct.IDirect3DBaseTexture9** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.IDirect3DBaseTexture9**, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.IDirect3DBaseTexture9** %2, %struct.IDirect3DBaseTexture9*** %7, align 8
  %9 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %9, i32 %10)
  store %struct.d3dx_parameter* %11, %struct.d3dx_parameter** %8, align 8
  %12 = load %struct.IDirect3DBaseTexture9**, %struct.IDirect3DBaseTexture9*** %7, align 8
  %13 = icmp ne %struct.IDirect3DBaseTexture9** %12, null
  br i1 %13, label %14, label %71

14:                                               ; preds = %3
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %16 = icmp ne %struct.d3dx_parameter* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %14
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %71, label %22

22:                                               ; preds = %17
  %23 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %24 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @D3DXPT_TEXTURE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %22
  %29 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %30 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @D3DXPT_TEXTURE1D, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @D3DXPT_TEXTURE2D, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %42 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @D3DXPT_TEXTURE3D, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %48 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @D3DXPT_TEXTURECUBE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46, %40, %34, %28, %22
  %53 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %54 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.IDirect3DBaseTexture9**
  %57 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %56, align 8
  %58 = load %struct.IDirect3DBaseTexture9**, %struct.IDirect3DBaseTexture9*** %7, align 8
  store %struct.IDirect3DBaseTexture9* %57, %struct.IDirect3DBaseTexture9** %58, align 8
  %59 = load %struct.IDirect3DBaseTexture9**, %struct.IDirect3DBaseTexture9*** %7, align 8
  %60 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %59, align 8
  %61 = icmp ne %struct.IDirect3DBaseTexture9* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.IDirect3DBaseTexture9**, %struct.IDirect3DBaseTexture9*** %7, align 8
  %64 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %63, align 8
  %65 = call i32 @IDirect3DBaseTexture9_AddRef(%struct.IDirect3DBaseTexture9* %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct.IDirect3DBaseTexture9**, %struct.IDirect3DBaseTexture9*** %7, align 8
  %68 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %67, align 8
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.IDirect3DBaseTexture9* %68)
  %70 = load i32, i32* @D3D_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %74

71:                                               ; preds = %46, %17, %14, %3
  %72 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @IDirect3DBaseTexture9_AddRef(%struct.IDirect3DBaseTexture9*) #1

declare dso_local i32 @TRACE(i8*, %struct.IDirect3DBaseTexture9*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
