; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_get_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.fragment_caps = type { i32, i32, i32, i32, i32 }

@WINED3D_FRAGMENT_CAP_PROJ_CONTROL = common dso_local global i32 0, align 4
@WINED3DPMISCCAPS_TSSARGTEMP = common dso_local global i32 0, align 4
@WINED3DPMISCCAPS_PERSTAGECONSTANT = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_DISABLE = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SELECTARG1 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SELECTARG2 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE4X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE2X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSIGNED2X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSIGNED = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADD = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SUBTRACT = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSMOOTH = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDCURRENTALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDFACTORALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDTEXTUREALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDDIFFUSEALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDTEXTUREALPHAPM = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATECOLOR_ADDALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_DOTPRODUCT3 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MULTIPLYADD = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_LERP = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BUMPENVMAP = common dso_local global i32 0, align 4
@MAX_TEXTURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.fragment_caps*)* @atifs_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atifs_get_caps(%struct.wined3d_gl_info* %0, %struct.fragment_caps* %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.fragment_caps*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store %struct.fragment_caps* %1, %struct.fragment_caps** %4, align 8
  %5 = load i32, i32* @WINED3D_FRAGMENT_CAP_PROJ_CONTROL, align 4
  %6 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %7 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @WINED3DPMISCCAPS_TSSARGTEMP, align 4
  %9 = load i32, i32* @WINED3DPMISCCAPS_PERSTAGECONSTANT, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %12 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @WINED3DTEXOPCAPS_DISABLE, align 4
  %14 = load i32, i32* @WINED3DTEXOPCAPS_SELECTARG1, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WINED3DTEXOPCAPS_SELECTARG2, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE4X, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE2X, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WINED3DTEXOPCAPS_ADDSIGNED2X, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WINED3DTEXOPCAPS_ADDSIGNED, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WINED3DTEXOPCAPS_ADD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WINED3DTEXOPCAPS_SUBTRACT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WINED3DTEXOPCAPS_ADDSMOOTH, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @WINED3DTEXOPCAPS_BLENDCURRENTALPHA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WINED3DTEXOPCAPS_BLENDFACTORALPHA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @WINED3DTEXOPCAPS_BLENDTEXTUREALPHA, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @WINED3DTEXOPCAPS_BLENDDIFFUSEALPHA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @WINED3DTEXOPCAPS_BLENDTEXTUREALPHAPM, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @WINED3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @WINED3DTEXOPCAPS_MODULATECOLOR_ADDALPHA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @WINED3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WINED3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @WINED3DTEXOPCAPS_DOTPRODUCT3, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @WINED3DTEXOPCAPS_MULTIPLYADD, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @WINED3DTEXOPCAPS_LERP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @WINED3DTEXOPCAPS_BUMPENVMAP, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %61 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @MAX_TEXTURES, align 4
  %63 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %64 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %66 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %65, i32 0, i32 2
  store i32 6, i32* %66, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
