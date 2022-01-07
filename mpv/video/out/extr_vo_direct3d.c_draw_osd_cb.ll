; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_draw_osd_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_draw_osd_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_bitmaps = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.osdpart = type { i32, i32, i32 }

@D3DRS_ALPHABLENDENABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SUBBITMAP_LIBASS = common dso_local global i64 0, align 8
@D3DRS_TEXTUREFACTOR = common dso_local global i32 0, align 4
@D3DTSS_COLORARG1 = common dso_local global i32 0, align 4
@D3DTA_TFACTOR = common dso_local global i32 0, align 4
@D3DTSS_ALPHAOP = common dso_local global i32 0, align 4
@D3DTOP_MODULATE = common dso_local global i32 0, align 4
@D3DRS_SRCBLEND = common dso_local global i32 0, align 4
@D3DBLEND_ONE = common dso_local global i32 0, align 4
@D3DFVF_OSD_VERTEX = common dso_local global i32 0, align 4
@D3DPT_TRIANGLELIST = common dso_local global i32 0, align 4
@D3DTA_TEXTURE = common dso_local global i32 0, align 4
@D3DTOP_SELECTARG1 = common dso_local global i32 0, align 4
@D3DBLEND_SRCALPHA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sub_bitmaps*)* @draw_osd_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_osd_cb(i8* %0, %struct.sub_bitmaps* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sub_bitmaps*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.osdpart*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sub_bitmaps* %1, %struct.sub_bitmaps** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %4, align 8
  %11 = call %struct.osdpart* @generate_osd(%struct.TYPE_5__* %9, %struct.sub_bitmaps* %10)
  store %struct.osdpart* %11, %struct.osdpart** %6, align 8
  %12 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  %13 = icmp ne %struct.osdpart* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %108

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = call i32 @d3d_begin_scene(%struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @D3DRS_ALPHABLENDENABLE, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @IDirect3DDevice9_SetRenderState(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  %29 = getelementptr inbounds %struct.osdpart, %struct.osdpart* %28, i32 0, i32 2
  %30 = call i32* @d3dtex_get_render_texture(%struct.TYPE_5__* %27, i32* %29)
  %31 = call i32 @IDirect3DDevice9_SetTexture(i32 %26, i32 0, i32* %30)
  %32 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %4, align 8
  %33 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SUBBITMAP_LIBASS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %15
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @D3DRS_TEXTUREFACTOR, align 4
  %42 = call i32 @IDirect3DDevice9_SetRenderState(i32 %40, i32 %41, i32 -1)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @D3DTSS_COLORARG1, align 4
  %47 = load i32, i32* @D3DTA_TFACTOR, align 4
  %48 = call i32 @IDirect3DDevice9_SetTextureStageState(i32 %45, i32 0, i32 %46, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @D3DTSS_ALPHAOP, align 4
  %53 = load i32, i32* @D3DTOP_MODULATE, align 4
  %54 = call i32 @IDirect3DDevice9_SetTextureStageState(i32 %51, i32 0, i32 %52, i32 %53)
  br label %62

55:                                               ; preds = %15
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @D3DRS_SRCBLEND, align 4
  %60 = load i32, i32* @D3DBLEND_ONE, align 4
  %61 = call i32 @IDirect3DDevice9_SetRenderState(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %37
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @D3DFVF_OSD_VERTEX, align 4
  %67 = call i32 @IDirect3DDevice9_SetFVF(i32 %65, i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @D3DPT_TRIANGLELIST, align 4
  %72 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  %73 = getelementptr inbounds %struct.osdpart, %struct.osdpart* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 3
  %76 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  %77 = getelementptr inbounds %struct.osdpart, %struct.osdpart* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IDirect3DDevice9_DrawPrimitiveUP(i32 %70, i32 %71, i32 %75, i32 %78, i32 4)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @D3DTSS_COLORARG1, align 4
  %84 = load i32, i32* @D3DTA_TEXTURE, align 4
  %85 = call i32 @IDirect3DDevice9_SetTextureStageState(i32 %82, i32 0, i32 %83, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @D3DTSS_ALPHAOP, align 4
  %90 = load i32, i32* @D3DTOP_SELECTARG1, align 4
  %91 = call i32 @IDirect3DDevice9_SetTextureStageState(i32 %88, i32 0, i32 %89, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @D3DRS_SRCBLEND, align 4
  %96 = load i32, i32* @D3DBLEND_SRCALPHA, align 4
  %97 = call i32 @IDirect3DDevice9_SetRenderState(i32 %94, i32 %95, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IDirect3DDevice9_SetTexture(i32 %100, i32 0, i32* null)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @D3DRS_ALPHABLENDENABLE, align 4
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i32 @IDirect3DDevice9_SetRenderState(i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %62, %14
  ret void
}

declare dso_local %struct.osdpart* @generate_osd(%struct.TYPE_5__*, %struct.sub_bitmaps*) #1

declare dso_local i32 @d3d_begin_scene(%struct.TYPE_5__*) #1

declare dso_local i32 @IDirect3DDevice9_SetRenderState(i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetTexture(i32, i32, i32*) #1

declare dso_local i32* @d3dtex_get_render_texture(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetTextureStageState(i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetFVF(i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_DrawPrimitiveUP(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
