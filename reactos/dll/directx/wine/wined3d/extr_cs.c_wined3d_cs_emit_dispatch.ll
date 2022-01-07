; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_dispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_dispatch* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_dispatch = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.wined3d_state }
%struct.wined3d_state = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_DISPATCH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_dispatch(%struct.wined3d_cs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wined3d_cs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_state*, align 8
  %10 = alloca %struct.wined3d_cs_dispatch*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.wined3d_state* %14, %struct.wined3d_state** %9, align 8
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.wined3d_cs_dispatch* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_dispatch* (%struct.wined3d_cs*, i32, i32)** %18, align 8
  %20 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %21 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %22 = call %struct.wined3d_cs_dispatch* %19(%struct.wined3d_cs* %20, i32 20, i32 %21)
  store %struct.wined3d_cs_dispatch* %22, %struct.wined3d_cs_dispatch** %10, align 8
  %23 = load i32, i32* @WINED3D_CS_OP_DISPATCH, align 4
  %24 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %10, align 8
  %25 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %10, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %10, align 8
  %32 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %10, align 8
  %38 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %10, align 8
  %44 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 %42, i32* %47, align 4
  %48 = load %struct.wined3d_state*, %struct.wined3d_state** %9, align 8
  %49 = call i32 @acquire_compute_pipeline_resources(%struct.wined3d_state* %48)
  %50 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %51 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %53, align 8
  %55 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %56 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %57 = call i32 %54(%struct.wined3d_cs* %55, i32 %56)
  ret void
}

declare dso_local i32 @acquire_compute_pipeline_resources(%struct.wined3d_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
