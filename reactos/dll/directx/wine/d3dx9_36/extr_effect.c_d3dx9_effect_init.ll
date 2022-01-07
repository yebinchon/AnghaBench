; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_effect_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_effect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3DXEffectImpl = type { i32, i32*, %struct.TYPE_6__, i32*, %struct.IDirect3DDevice9*, %struct.ID3DXEffectPool*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.IDirect3DDevice9 = type { i32 }
%struct.ID3DXEffectPool = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ID3DXEffectPool*)* }
%struct.d3dx_effect_pool = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"effect %p, device %p, data %p, data_size %lu, pool %p\0A\00", align 1
@ID3DXEffect_Vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to parse effect, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ID3DXEffectImpl*, %struct.IDirect3DDevice9*, i8*, i32, i32*, i32*, i32, i32**, %struct.ID3DXEffectPool*, i8*)* @d3dx9_effect_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_effect_init(%struct.ID3DXEffectImpl* %0, %struct.IDirect3DDevice9* %1, i8* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32** %7, %struct.ID3DXEffectPool* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ID3DXEffectImpl*, align 8
  %13 = alloca %struct.IDirect3DDevice9*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca %struct.ID3DXEffectPool*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.d3dx_effect_pool*, align 8
  store %struct.ID3DXEffectImpl* %0, %struct.ID3DXEffectImpl** %12, align 8
  store %struct.IDirect3DDevice9* %1, %struct.IDirect3DDevice9** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32** %7, i32*** %19, align 8
  store %struct.ID3DXEffectPool* %8, %struct.ID3DXEffectPool** %20, align 8
  store i8* %9, i8** %21, align 8
  store %struct.d3dx_effect_pool* null, %struct.d3dx_effect_pool** %23, align 8
  %24 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %25 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %13, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.ID3DXEffectPool*, %struct.ID3DXEffectPool** %20, align 8
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.ID3DXEffectImpl* %24, %struct.IDirect3DDevice9* %25, i8* %26, i32 %27, %struct.ID3DXEffectPool* %28)
  %30 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %31 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* @ID3DXEffect_Vtbl, i32** %32, align 8
  %33 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %34 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.ID3DXEffectPool*, %struct.ID3DXEffectPool** %20, align 8
  %36 = icmp ne %struct.ID3DXEffectPool* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %10
  %38 = load %struct.ID3DXEffectPool*, %struct.ID3DXEffectPool** %20, align 8
  %39 = getelementptr inbounds %struct.ID3DXEffectPool, %struct.ID3DXEffectPool* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ID3DXEffectPool*)*, i32 (%struct.ID3DXEffectPool*)** %41, align 8
  %43 = load %struct.ID3DXEffectPool*, %struct.ID3DXEffectPool** %20, align 8
  %44 = call i32 %42(%struct.ID3DXEffectPool* %43)
  %45 = load %struct.ID3DXEffectPool*, %struct.ID3DXEffectPool** %20, align 8
  %46 = call %struct.d3dx_effect_pool* @impl_from_ID3DXEffectPool(%struct.ID3DXEffectPool* %45)
  store %struct.d3dx_effect_pool* %46, %struct.d3dx_effect_pool** %23, align 8
  br label %47

47:                                               ; preds = %37, %10
  %48 = load %struct.ID3DXEffectPool*, %struct.ID3DXEffectPool** %20, align 8
  %49 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %50 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %49, i32 0, i32 5
  store %struct.ID3DXEffectPool* %48, %struct.ID3DXEffectPool** %50, align 8
  %51 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %13, align 8
  %52 = call i32 @IDirect3DDevice9_AddRef(%struct.IDirect3DDevice9* %51)
  %53 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %13, align 8
  %54 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %55 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %54, i32 0, i32 4
  store %struct.IDirect3DDevice9* %53, %struct.IDirect3DDevice9** %55, align 8
  %56 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %57 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %56, i32 0, i32 2
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load i32**, i32*** %19, align 8
  %64 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %65 = load %struct.d3dx_effect_pool*, %struct.d3dx_effect_pool** %23, align 8
  %66 = load i8*, i8** %21, align 8
  %67 = call i32 @d3dx9_base_effect_init(%struct.TYPE_6__* %57, i8* %58, i32 %59, i32* %60, i32* %61, i32 %62, i32** %63, %struct.ID3DXEffectImpl* %64, %struct.d3dx_effect_pool* %65, i8* %66)
  store i32 %67, i32* %22, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %47
  %71 = load i32, i32* %22, align 4
  %72 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %74 = call i32 @free_effect(%struct.ID3DXEffectImpl* %73)
  %75 = load i32, i32* %22, align 4
  store i32 %75, i32* %11, align 4
  br label %94

76:                                               ; preds = %47
  %77 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %78 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %84 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %89 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %88, i32 0, i32 3
  store i32* %87, i32** %89, align 8
  %90 = load %struct.ID3DXEffectImpl*, %struct.ID3DXEffectImpl** %12, align 8
  %91 = getelementptr inbounds %struct.ID3DXEffectImpl, %struct.ID3DXEffectImpl* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %82, %76
  %93 = load i32, i32* @D3D_OK, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %92, %70
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i32 @TRACE(i8*, %struct.ID3DXEffectImpl*, %struct.IDirect3DDevice9*, i8*, i32, %struct.ID3DXEffectPool*) #1

declare dso_local %struct.d3dx_effect_pool* @impl_from_ID3DXEffectPool(%struct.ID3DXEffectPool*) #1

declare dso_local i32 @IDirect3DDevice9_AddRef(%struct.IDirect3DDevice9*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @d3dx9_base_effect_init(%struct.TYPE_6__*, i8*, i32, i32*, i32*, i32, i32**, %struct.ID3DXEffectImpl*, %struct.d3dx_effect_pool*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @free_effect(%struct.ID3DXEffectImpl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
