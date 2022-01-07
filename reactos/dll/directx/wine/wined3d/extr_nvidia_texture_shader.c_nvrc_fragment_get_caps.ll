; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvrc_fragment_get_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvrc_fragment_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fragment_caps = type { i32, i32, i32, i32, i64 }

@WINED3DPMISCCAPS_TSSARGTEMP = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADD = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSIGNED = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSIGNED2X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE2X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE4X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SELECTARG1 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SELECTARG2 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_DISABLE = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDDIFFUSEALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDTEXTUREALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDFACTORALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDCURRENTALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_LERP = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SUBTRACT = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSMOOTH = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MULTIPLYADD = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATECOLOR_ADDALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDTEXTUREALPHAPM = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_DOTPRODUCT3 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA = common dso_local global i32 0, align 4
@NV_TEXTURE_SHADER2 = common dso_local global i64 0, align 8
@WINED3DTEXOPCAPS_BUMPENVMAP = common dso_local global i32 0, align 4
@MAX_TEXTURES = common dso_local global i32 0, align 4
@NV_REGISTER_COMBINERS2 = common dso_local global i64 0, align 8
@WINED3DPMISCCAPS_PERSTAGECONSTANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.fragment_caps*)* @nvrc_fragment_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvrc_fragment_get_caps(%struct.wined3d_gl_info* %0, %struct.fragment_caps* %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.fragment_caps*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store %struct.fragment_caps* %1, %struct.fragment_caps** %4, align 8
  %5 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %6 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @WINED3DPMISCCAPS_TSSARGTEMP, align 4
  %8 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %9 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @WINED3DTEXOPCAPS_ADD, align 4
  %11 = load i32, i32* @WINED3DTEXOPCAPS_ADDSIGNED, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WINED3DTEXOPCAPS_ADDSIGNED2X, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE2X, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE4X, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WINED3DTEXOPCAPS_SELECTARG1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WINED3DTEXOPCAPS_SELECTARG2, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WINED3DTEXOPCAPS_DISABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WINED3DTEXOPCAPS_BLENDDIFFUSEALPHA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WINED3DTEXOPCAPS_BLENDTEXTUREALPHA, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WINED3DTEXOPCAPS_BLENDFACTORALPHA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WINED3DTEXOPCAPS_BLENDCURRENTALPHA, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @WINED3DTEXOPCAPS_LERP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WINED3DTEXOPCAPS_SUBTRACT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WINED3DTEXOPCAPS_ADDSMOOTH, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @WINED3DTEXOPCAPS_MULTIPLYADD, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WINED3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WINED3DTEXOPCAPS_MODULATECOLOR_ADDALPHA, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WINED3DTEXOPCAPS_BLENDTEXTUREALPHAPM, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @WINED3DTEXOPCAPS_DOTPRODUCT3, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @WINED3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @WINED3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %56 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %58 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @NV_TEXTURE_SHADER2, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %2
  %65 = load i32, i32* @WINED3DTEXOPCAPS_BUMPENVMAP, align 4
  %66 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %67 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %2
  %71 = load i32, i32* @MAX_TEXTURES, align 4
  %72 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %73 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @min(i32 %71, i32 %75)
  %77 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %78 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %80 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %84 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
