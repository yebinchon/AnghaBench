; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_vp_ffp_get_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_vp_ffp_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wined3d_vertex_caps = type { i32, i32, i32, i32, i64, i32, i32, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@WINED3DVTXPCAPS_DIRECTIONALLIGHTS = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_MATERIALSOURCE7 = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_POSITIONALLIGHTS = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_LOCALVIEWER = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_VERTEXFOG = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_TEXGEN = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_TEXGEN_SPHEREMAP = common dso_local global i32 0, align 4
@WINED3DFVFCAPS_PSIZE = common dso_local global i32 0, align 4
@NV_FOG_DISTANCE = common dso_local global i64 0, align 8
@WINED3DPRASTERCAPS_FOGRANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_vertex_caps*)* @vp_ffp_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp_ffp_get_caps(%struct.wined3d_gl_info* %0, %struct.wined3d_vertex_caps* %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.wined3d_vertex_caps*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store %struct.wined3d_vertex_caps* %1, %struct.wined3d_vertex_caps** %4, align 8
  %5 = load i8*, i8** @FALSE, align 8
  %6 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %7 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %6, i32 0, i32 8
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @FALSE, align 8
  %9 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %24 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @WINED3DVTXPCAPS_DIRECTIONALLIGHTS, align 4
  %26 = load i32, i32* @WINED3DVTXPCAPS_MATERIALSOURCE7, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WINED3DVTXPCAPS_POSITIONALLIGHTS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WINED3DVTXPCAPS_LOCALVIEWER, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WINED3DVTXPCAPS_VERTEXFOG, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @WINED3DVTXPCAPS_TEXGEN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WINED3DVTXPCAPS_TEXGEN_SPHEREMAP, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @WINED3DFVFCAPS_PSIZE, align 4
  %41 = or i32 %40, 8
  %42 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %49 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %53 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @NV_FOG_DISTANCE, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %2
  %60 = load i32, i32* @WINED3DPRASTERCAPS_FOGRANGE, align 4
  %61 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %62 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
