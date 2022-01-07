; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_draw_indirect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_draw_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_draw* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_draw = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.wined3d_buffer* }
%struct.TYPE_8__ = type { %struct.wined3d_state, %struct.TYPE_7__* }
%struct.wined3d_state = type { i32 }
%struct.TYPE_7__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_buffer = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_DRAW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_draw_indirect(%struct.wined3d_cs* %0, i32 %1, i32 %2, %struct.wined3d_buffer* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wined3d_cs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_gl_info*, align 8
  %14 = alloca %struct.wined3d_state*, align 8
  %15 = alloca %struct.wined3d_cs_draw*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.wined3d_buffer* %3, %struct.wined3d_buffer** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %17 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.wined3d_gl_info* %21, %struct.wined3d_gl_info** %13, align 8
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.wined3d_state* %25, %struct.wined3d_state** %14, align 8
  %26 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.wined3d_cs_draw* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_draw* (%struct.wined3d_cs*, i32, i32)** %29, align 8
  %31 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %32 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %33 = call %struct.wined3d_cs_draw* %30(%struct.wined3d_cs* %31, i32 48, i32 %32)
  store %struct.wined3d_cs_draw* %33, %struct.wined3d_cs_draw** %15, align 8
  %34 = load i32, i32* @WINED3D_CS_OP_DRAW, align 4
  %35 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %15, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %15, align 8
  %39 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %15, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %15, align 8
  %45 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %10, align 8
  %48 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %15, align 8
  %49 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store %struct.wined3d_buffer* %47, %struct.wined3d_buffer** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %15, align 8
  %55 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.wined3d_cs_draw*, %struct.wined3d_cs_draw** %15, align 8
  %61 = getelementptr inbounds %struct.wined3d_cs_draw, %struct.wined3d_cs_draw* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.wined3d_state*, %struct.wined3d_state** %14, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %66 = call i32 @acquire_graphics_pipeline_resources(%struct.wined3d_state* %63, i32 %64, %struct.wined3d_gl_info* %65)
  %67 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %10, align 8
  %68 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %67, i32 0, i32 0
  %69 = call i32 @wined3d_resource_acquire(i32* %68)
  %70 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %71 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %73, align 8
  %75 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %76 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %77 = call i32 %74(%struct.wined3d_cs* %75, i32 %76)
  ret void
}

declare dso_local i32 @acquire_graphics_pipeline_resources(%struct.wined3d_state*, i32, %struct.wined3d_gl_info*) #1

declare dso_local i32 @wined3d_resource_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
