; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_draw_osd_part.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_draw_osd_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vdpctx* }
%struct.vdpctx = type { i64, i32*, %struct.osd_bitmap_surface*, %struct.vdp_functions* }
%struct.osd_bitmap_surface = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.vdp_functions = type { i32 (i32, i32*, i32, i32*, i32*, %struct.TYPE_5__*, i32)* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_SRC_ALPHA = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_STATE_VERSION = common dso_local global i32 0, align 4
@VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE = common dso_local global i32 0, align 4
@VDP_RGBA_FORMAT_B8G8R8A8 = common dso_local global i64 0, align 8
@VDP_OUTPUT_SURFACE_RENDER_ROTATE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"OSD: Error when rendering\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32)* @draw_osd_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_osd_part(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vdpctx*, align 8
  %6 = alloca %struct.vdp_functions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.osd_bitmap_surface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.vo*, %struct.vo** %3, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.vdpctx*, %struct.vdpctx** %15, align 8
  store %struct.vdpctx* %16, %struct.vdpctx** %5, align 8
  %17 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %18 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %17, i32 0, i32 3
  %19 = load %struct.vdp_functions*, %struct.vdp_functions** %18, align 8
  store %struct.vdp_functions* %19, %struct.vdp_functions** %6, align 8
  %20 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %21 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %20, i32 0, i32 2
  %22 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %22, i64 %24
  store %struct.osd_bitmap_surface* %25, %struct.osd_bitmap_surface** %8, align 8
  %26 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %27 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.vdpctx*, %struct.vdpctx** %5, align 8
  %30 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %35 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_SRC_ALPHA, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %37 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %39 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %41 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %43 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %45 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %47 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_STATE_VERSION, align 4
  store i32 %47, i32* %46, align 4
  %48 = bitcast %struct.TYPE_5__* %12 to i8*
  %49 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 28, i1 false)
  %50 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %99, %2
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %55 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %102

58:                                               ; preds = %52
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %13, align 8
  %59 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %60 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VDP_RGBA_FORMAT_B8G8R8A8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %13, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.vdp_functions*, %struct.vdp_functions** %6, align 8
  %67 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %66, i32 0, i32 0
  %68 = load i32 (i32, i32*, i32, i32*, i32*, %struct.TYPE_5__*, i32)*, i32 (i32, i32*, i32, i32*, i32*, %struct.TYPE_5__*, i32)** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %71 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %78 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %81 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %88 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %95 = load i32, i32* @VDP_OUTPUT_SURFACE_RENDER_ROTATE_0, align 4
  %96 = call i32 %68(i32 %69, i32* %76, i32 %79, i32* %86, i32* %93, %struct.TYPE_5__* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.vo*, %struct.vo** %3, align 8
  %98 = call i32 @CHECK_VDP_WARNING(%struct.vo* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %65
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %52

102:                                              ; preds = %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.vo*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
