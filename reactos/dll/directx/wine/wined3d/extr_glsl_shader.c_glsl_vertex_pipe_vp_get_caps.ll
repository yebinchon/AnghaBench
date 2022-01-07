; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_vp_get_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_vp_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_vertex_caps = type { i32, i32, i32, i32, i32, i64, i32, i32, i8*, i8* }

@TRUE = common dso_local global i8* null, align 8
@MAX_ACTIVE_LIGHTS = common dso_local global i32 0, align 4
@MAX_VERTEX_BLENDS = common dso_local global i32 0, align 4
@MAX_VERTEX_INDEX_BLENDS = common dso_local global i64 0, align 8
@WINED3DVTXPCAPS_TEXGEN = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_MATERIALSOURCE7 = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_VERTEXFOG = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_DIRECTIONALLIGHTS = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_POSITIONALLIGHTS = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_LOCALVIEWER = common dso_local global i32 0, align 4
@WINED3DVTXPCAPS_TEXGEN_SPHEREMAP = common dso_local global i32 0, align 4
@WINED3DFVFCAPS_PSIZE = common dso_local global i32 0, align 4
@WINED3DPRASTERCAPS_FOGRANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_vertex_caps*)* @glsl_vertex_pipe_vp_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_vp_get_caps(%struct.wined3d_gl_info* %0, %struct.wined3d_vertex_caps* %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.wined3d_vertex_caps*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store %struct.wined3d_vertex_caps* %1, %struct.wined3d_vertex_caps** %4, align 8
  %5 = load i8*, i8** @TRUE, align 8
  %6 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %7 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %6, i32 0, i32 9
  store i8* %5, i8** %7, align 8
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %9 = call i32 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** @TRUE, align 8
  %16 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %16, i32 0, i32 8
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @MAX_ACTIVE_LIGHTS, align 4
  %19 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %20 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MAX_VERTEX_BLENDS, align 4
  %22 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* @MAX_VERTEX_INDEX_BLENDS, align 8
  %25 = sub nsw i64 %24, 1
  %26 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %26, i32 0, i32 5
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @WINED3DVTXPCAPS_TEXGEN, align 4
  %29 = load i32, i32* @WINED3DVTXPCAPS_MATERIALSOURCE7, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WINED3DVTXPCAPS_VERTEXFOG, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WINED3DVTXPCAPS_DIRECTIONALLIGHTS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @WINED3DVTXPCAPS_POSITIONALLIGHTS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @WINED3DVTXPCAPS_LOCALVIEWER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WINED3DVTXPCAPS_TEXGEN_SPHEREMAP, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %42 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @WINED3DFVFCAPS_PSIZE, align 4
  %44 = or i32 %43, 8
  %45 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %46 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %48 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %52 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @WINED3DPRASTERCAPS_FOGRANGE, align 4
  %54 = load %struct.wined3d_vertex_caps*, %struct.wined3d_vertex_caps** %4, align 8
  %55 = getelementptr inbounds %struct.wined3d_vertex_caps, %struct.wined3d_vertex_caps* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
