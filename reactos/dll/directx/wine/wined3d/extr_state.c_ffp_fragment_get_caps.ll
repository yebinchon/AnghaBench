; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_ffp_fragment_get_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_ffp_fragment_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }
%struct.fragment_caps = type { i32, i32, i32, i64, i64 }

@WINED3DTEXOPCAPS_ADD = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSIGNED = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_ADDSIGNED2X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE2X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATE4X = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SELECTARG1 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SELECTARG2 = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_DISABLE = common dso_local global i32 0, align 4
@ARB_TEXTURE_ENV_COMBINE = common dso_local global i64 0, align 8
@EXT_TEXTURE_ENV_COMBINE = common dso_local global i64 0, align 8
@NV_TEXTURE_ENV_COMBINE4 = common dso_local global i64 0, align 8
@WINED3DTEXOPCAPS_BLENDDIFFUSEALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDTEXTUREALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDFACTORALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDCURRENTALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_LERP = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_SUBTRACT = common dso_local global i32 0, align 4
@ATI_TEXTURE_ENV_COMBINE3 = common dso_local global i64 0, align 8
@WINED3DTEXOPCAPS_ADDSMOOTH = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MULTIPLYADD = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_MODULATECOLOR_ADDALPHA = common dso_local global i32 0, align 4
@WINED3DTEXOPCAPS_BLENDTEXTUREALPHAPM = common dso_local global i32 0, align 4
@ARB_TEXTURE_ENV_DOT3 = common dso_local global i64 0, align 8
@WINED3DTEXOPCAPS_DOTPRODUCT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.fragment_caps*)* @ffp_fragment_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffp_fragment_get_caps(%struct.wined3d_gl_info* %0, %struct.fragment_caps* %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.fragment_caps*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store %struct.fragment_caps* %1, %struct.fragment_caps** %4, align 8
  %5 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %6 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %8 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @WINED3DTEXOPCAPS_ADD, align 4
  %10 = load i32, i32* @WINED3DTEXOPCAPS_ADDSIGNED, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WINED3DTEXOPCAPS_ADDSIGNED2X, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE2X, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WINED3DTEXOPCAPS_MODULATE4X, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WINED3DTEXOPCAPS_SELECTARG1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WINED3DTEXOPCAPS_SELECTARG2, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WINED3DTEXOPCAPS_DISABLE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %27 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @ARB_TEXTURE_ENV_COMBINE, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %2
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %37 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @EXT_TEXTURE_ENV_COMBINE, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NV_TEXTURE_ENV_COMBINE4, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %43, %35, %2
  %52 = load i32, i32* @WINED3DTEXOPCAPS_BLENDDIFFUSEALPHA, align 4
  %53 = load i32, i32* @WINED3DTEXOPCAPS_BLENDTEXTUREALPHA, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WINED3DTEXOPCAPS_BLENDFACTORALPHA, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WINED3DTEXOPCAPS_BLENDCURRENTALPHA, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WINED3DTEXOPCAPS_LERP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WINED3DTEXOPCAPS_SUBTRACT, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %64 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %51, %43
  %68 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %69 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @ATI_TEXTURE_ENV_COMBINE3, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %77 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @NV_TEXTURE_ENV_COMBINE4, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %75, %67
  %84 = load i32, i32* @WINED3DTEXOPCAPS_ADDSMOOTH, align 4
  %85 = load i32, i32* @WINED3DTEXOPCAPS_MULTIPLYADD, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WINED3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @WINED3DTEXOPCAPS_MODULATECOLOR_ADDALPHA, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @WINED3DTEXOPCAPS_BLENDTEXTUREALPHAPM, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %94 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %83, %75
  %98 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %99 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @ARB_TEXTURE_ENV_DOT3, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load i32, i32* @WINED3DTEXOPCAPS_DOTPRODUCT3, align 4
  %107 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %108 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %97
  %112 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %113 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %117 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %119 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.fragment_caps*, %struct.fragment_caps** %4, align 8
  %123 = getelementptr inbounds %struct.fragment_caps, %struct.fragment_caps* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
