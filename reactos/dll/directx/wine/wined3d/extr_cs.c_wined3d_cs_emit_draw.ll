; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_draw.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_draw* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_draw = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.wined3d_state, %struct.TYPE_7__* }
%struct.wined3d_state = type { i32 }
%struct.TYPE_7__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_DRAW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_draw(%struct.wined3d_cs* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.wined3d_cs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.wined3d_gl_info*, align 8
  %20 = alloca %struct.wined3d_state*, align 8
  %21 = alloca %struct.wined3d_cs_draw*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %10, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.wined3d_gl_info* %27, %struct.wined3d_gl_info** %19, align 8
  %28 = load %struct.wined3d_cs*, %struct.wined3d_cs** %10, align 8
  %29 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store %struct.wined3d_state* %31, %struct.wined3d_state** %20, align 8
  %32 = load %struct.wined3d_cs*, %struct.wined3d_cs** %10, align 8
  %33 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load %struct.wined3d_cs_draw* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_draw* (%struct.wined3d_cs*, i32, i32)** %35, align 8
  %37 = load %struct.wined3d_cs*, %struct.wined3d_cs** %10, align 8
  %38 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %39 = call %struct.wined3d_cs_draw* %36(%struct.wined3d_cs* %37, i32 40, i32 %38)
  store %struct.wined3d_cs_draw* %39, %struct.wined3d_cs_draw** %21, align 8
  %40 = load i32, i32* @WINED3D_CS_OP_DRAW, align 4
  %41 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %45 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %48 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %51 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %55 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %61 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %67 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %73 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %79 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %21, align 8
  %85 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.wined3d_state*, %struct.wined3d_state** %20, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  %90 = call i32 @acquire_graphics_pipeline_resources(%struct.wined3d_state* %87, i32 %88, %struct.wined3d_gl_info* %89)
  %91 = load %struct.wined3d_cs*, %struct.wined3d_cs** %10, align 8
  %92 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %94, align 8
  %96 = load %struct.wined3d_cs*, %struct.wined3d_cs** %10, align 8
  %97 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %98 = call i32 %95(%struct.wined3d_cs* %96, i32 %97)
  ret void
}

declare dso_local i32 @acquire_graphics_pipeline_resources(%struct.wined3d_state*, i32, %struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
