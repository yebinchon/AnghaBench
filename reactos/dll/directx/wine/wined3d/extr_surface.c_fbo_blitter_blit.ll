; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_fbo_blitter_blit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_fbo_blitter_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { %struct.TYPE_6__*, %struct.wined3d_blitter* }
%struct.TYPE_6__ = type { i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)* }
%struct.wined3d_context = type { i32 }
%struct.wined3d_surface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wined3d_resource }
%struct.wined3d_resource = type { i32, %struct.TYPE_5__*, %struct.wined3d_device* }
%struct.TYPE_5__ = type { i64 }
%struct.wined3d_device = type { i32 }
%struct.wined3d_color_key = type { i32 }

@WINED3D_BLIT_OP_RAW_BLIT = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@WINED3D_BLIT_OP_DEPTH_BLIT = common dso_local global i32 0, align 4
@WINED3D_BLIT_OP_COLOR_BLIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Colour blit.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Depth/stencil blit.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"This blitter does not implement blit op %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)* @fbo_blitter_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbo_blitter_blit(%struct.wined3d_blitter* %0, i32 %1, %struct.wined3d_context* %2, %struct.wined3d_surface* %3, i32 %4, i32* %5, %struct.wined3d_surface* %6, i32 %7, i32* %8, %struct.wined3d_color_key* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_blitter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_context*, align 8
  %16 = alloca %struct.wined3d_surface*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.wined3d_surface*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.wined3d_color_key*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.wined3d_resource*, align 8
  %25 = alloca %struct.wined3d_resource*, align 8
  %26 = alloca %struct.wined3d_device*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.wined3d_blitter*, align 8
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %13, align 8
  store i32 %1, i32* %14, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %15, align 8
  store %struct.wined3d_surface* %3, %struct.wined3d_surface** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store %struct.wined3d_surface* %6, %struct.wined3d_surface** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store %struct.wined3d_color_key* %9, %struct.wined3d_color_key** %22, align 8
  store i32 %10, i32* %23, align 4
  %29 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %30 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.wined3d_resource* %32, %struct.wined3d_resource** %24, align 8
  %33 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %34 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.wined3d_resource* %36, %struct.wined3d_resource** %25, align 8
  %37 = load %struct.wined3d_resource*, %struct.wined3d_resource** %25, align 8
  %38 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %37, i32 0, i32 2
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %38, align 8
  store %struct.wined3d_device* %39, %struct.wined3d_device** %26, align 8
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %27, align 4
  %41 = load i32, i32* %27, align 4
  %42 = load i32, i32* @WINED3D_BLIT_OP_RAW_BLIT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %11
  %45 = load %struct.wined3d_resource*, %struct.wined3d_resource** %25, align 8
  %46 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.wined3d_resource*, %struct.wined3d_resource** %24, align 8
  %51 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %44
  %57 = load %struct.wined3d_resource*, %struct.wined3d_resource** %25, align 8
  %58 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %61 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @WINED3D_BLIT_OP_DEPTH_BLIT, align 4
  store i32 %66, i32* %27, align 4
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @WINED3D_BLIT_OP_COLOR_BLIT, align 4
  store i32 %68, i32* %27, align 4
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %44, %11
  %71 = load i32, i32* %27, align 4
  %72 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %73 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wined3d_resource*, %struct.wined3d_resource** %24, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.wined3d_resource*, %struct.wined3d_resource** %25, align 8
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @fbo_blitter_supported(i32 %71, i32 %74, %struct.wined3d_resource* %75, i32 %76, %struct.wined3d_resource* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %70
  %82 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %13, align 8
  %83 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %82, i32 0, i32 1
  %84 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %83, align 8
  store %struct.wined3d_blitter* %84, %struct.wined3d_blitter** %28, align 8
  %85 = icmp ne %struct.wined3d_blitter* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %28, align 8
  %88 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)*, i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)** %90, align 8
  %92 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %28, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %95 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %99 = load i32, i32* %20, align 4
  %100 = load i32*, i32** %21, align 8
  %101 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %22, align 8
  %102 = load i32, i32* %23, align 4
  %103 = call i32 %91(%struct.wined3d_blitter* %92, i32 %93, %struct.wined3d_context* %94, %struct.wined3d_surface* %95, i32 %96, i32* %97, %struct.wined3d_surface* %98, i32 %99, i32* %100, %struct.wined3d_color_key* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  br label %141

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* @WINED3D_BLIT_OP_COLOR_BLIT, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.wined3d_device*, %struct.wined3d_device** %26, align 8
  %112 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %113 = load i32, i32* %23, align 4
  %114 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %118 = load i32, i32* %20, align 4
  %119 = load i32*, i32** %21, align 8
  %120 = call i32 @surface_blt_fbo(%struct.wined3d_device* %111, %struct.wined3d_context* %112, i32 %113, %struct.wined3d_surface* %114, i32 %115, i32* %116, %struct.wined3d_surface* %117, i32 %118, i32* %119)
  %121 = load i32, i32* %20, align 4
  store i32 %121, i32* %12, align 4
  br label %141

122:                                              ; preds = %105
  %123 = load i32, i32* %27, align 4
  %124 = load i32, i32* @WINED3D_BLIT_OP_DEPTH_BLIT, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.wined3d_device*, %struct.wined3d_device** %26, align 8
  %129 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %130 = load i32, i32* %17, align 4
  %131 = load i32*, i32** %18, align 8
  %132 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %133 = load i32, i32* %20, align 4
  %134 = load i32*, i32** %21, align 8
  %135 = call i32 @surface_depth_blt_fbo(%struct.wined3d_device* %128, %struct.wined3d_surface* %129, i32 %130, i32* %131, %struct.wined3d_surface* %132, i32 %133, i32* %134)
  %136 = load i32, i32* %20, align 4
  store i32 %136, i32* %12, align 4
  br label %141

137:                                              ; preds = %122
  %138 = load i32, i32* %27, align 4
  %139 = call i32 @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %20, align 4
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %137, %126, %109, %86
  %142 = load i32, i32* %12, align 4
  ret i32 %142
}

declare dso_local i32 @fbo_blitter_supported(i32, i32, %struct.wined3d_resource*, i32, %struct.wined3d_resource*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @surface_blt_fbo(%struct.wined3d_device*, %struct.wined3d_context*, i32, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*) #1

declare dso_local i32 @surface_depth_blt_fbo(%struct.wined3d_device*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
