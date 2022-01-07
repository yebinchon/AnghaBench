; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_surface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDirect3DBaseTexture9 = type { i32 }
%struct.IDirect3DSurface9 = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unexpected texture type\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.IDirect3DBaseTexture9*, i32, i32, %struct.IDirect3DSurface9**)* @get_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_surface(i32 %0, %struct.IDirect3DBaseTexture9* %1, i32 %2, i32 %3, %struct.IDirect3DSurface9** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.IDirect3DBaseTexture9*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.IDirect3DSurface9**, align 8
  store i32 %0, i32* %7, align 4
  store %struct.IDirect3DBaseTexture9* %1, %struct.IDirect3DBaseTexture9** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.IDirect3DSurface9** %4, %struct.IDirect3DSurface9*** %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %26 [
    i32 128, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %5
  %14 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %8, align 8
  %15 = bitcast %struct.IDirect3DBaseTexture9* %14 to i32*
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.IDirect3DSurface9**, %struct.IDirect3DSurface9*** %11, align 8
  %18 = call i32 @IDirect3DTexture9_GetSurfaceLevel(i32* %15, i32 %16, %struct.IDirect3DSurface9** %17)
  store i32 %18, i32* %6, align 4
  br label %29

19:                                               ; preds = %5
  %20 = load %struct.IDirect3DBaseTexture9*, %struct.IDirect3DBaseTexture9** %8, align 8
  %21 = bitcast %struct.IDirect3DBaseTexture9* %20 to i32*
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.IDirect3DSurface9**, %struct.IDirect3DSurface9*** %11, align 8
  %25 = call i32 @IDirect3DCubeTexture9_GetCubeMapSurface(i32* %21, i32 %22, i32 %23, %struct.IDirect3DSurface9** %24)
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %5
  %27 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %19, %13
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @IDirect3DTexture9_GetSurfaceLevel(i32*, i32, %struct.IDirect3DSurface9**) #1

declare dso_local i32 @IDirect3DCubeTexture9_GetCubeMapSurface(i32*, i32, i32, %struct.IDirect3DSurface9**) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
