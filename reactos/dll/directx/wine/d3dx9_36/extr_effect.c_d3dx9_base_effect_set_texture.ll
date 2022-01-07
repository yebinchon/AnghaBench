; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_texture.c"
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
@D3D_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, %struct.IDirect3DBaseTexture9*)* @d3dx9_base_effect_set_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_set_texture(%struct.d3dx9_base_effect* %0, i32 %1, %struct.IDirect3DBaseTexture9* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.IDirect3DBaseTexture9*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca %struct.IDirect3DBaseTexture9*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.IDirect3DBaseTexture9* %2, %struct.IDirect3DBaseTexture9** %7, align 8
  %10 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %10, i32 %11)
  store %struct.d3dx_parameter* %12, %struct.d3dx_parameter** %8, align 8
  %13 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %14 = icmp ne %struct.d3dx_parameter* %13, null
  br i1 %14, label %15, label %82

15:                                               ; preds = %3
  %16 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %17 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %82, label %20

20:                                               ; preds = %15
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @D3DXPT_TEXTURE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %28 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @D3DXPT_TEXTURE1D, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %34 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @D3DXPT_TEXTURE2D, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %40 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @D3DXPT_TEXTURE3D, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %46 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @D3DXPT_TEXTURECUBE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44, %38, %32, %26, %20
  %51 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %52 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.IDirect3DBaseTexture9**
  %55 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %54, align 8
  store %struct.IDirect3DBaseTexture9* %55, %struct.IDirect3DBaseTexture9** %9, align 8
  %56 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %7, align 8
  %57 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %9, align 8
  %58 = icmp eq %struct.IDirect3DBaseTexture9* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @D3D_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %85

61:                                               ; preds = %50
  %62 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %7, align 8
  %63 = icmp ne %struct.IDirect3DBaseTexture9* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %7, align 8
  %66 = call i32 @IDirect3DBaseTexture9_AddRef(%struct.IDirect3DBaseTexture9* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %9, align 8
  %69 = icmp ne %struct.IDirect3DBaseTexture9* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %9, align 8
  %72 = call i32 @IDirect3DBaseTexture9_Release(%struct.IDirect3DBaseTexture9* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %7, align 8
  %75 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %76 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.IDirect3DBaseTexture9**
  store %struct.IDirect3DBaseTexture9* %74, %struct.IDirect3DBaseTexture9** %78, align 8
  %79 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %80 = call i32 @set_dirty(%struct.d3dx_parameter* %79)
  %81 = load i32, i32* @D3D_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %44, %15, %3
  %83 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %73, %59
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @IDirect3DBaseTexture9_AddRef(%struct.IDirect3DBaseTexture9*) #1

declare dso_local i32 @IDirect3DBaseTexture9_Release(%struct.IDirect3DBaseTexture9*) #1

declare dso_local i32 @set_dirty(%struct.d3dx_parameter*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
