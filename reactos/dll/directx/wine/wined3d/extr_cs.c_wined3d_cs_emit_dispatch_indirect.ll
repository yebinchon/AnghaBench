; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_dispatch_indirect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_dispatch_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_dispatch* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_dispatch = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.wined3d_buffer* }
%struct.TYPE_10__ = type { %struct.wined3d_state }
%struct.wined3d_state = type { i32 }
%struct.wined3d_buffer = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_DISPATCH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_dispatch_indirect(%struct.wined3d_cs* %0, %struct.wined3d_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_cs*, align 8
  %5 = alloca %struct.wined3d_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_state*, align 8
  %8 = alloca %struct.wined3d_cs_dispatch*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %4, align 8
  store %struct.wined3d_buffer* %1, %struct.wined3d_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store %struct.wined3d_state* %12, %struct.wined3d_state** %7, align 8
  %13 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.wined3d_cs_dispatch* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_dispatch* (%struct.wined3d_cs*, i32, i32)** %16, align 8
  %18 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %19 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %20 = call %struct.wined3d_cs_dispatch* %17(%struct.wined3d_cs* %18, i32 32, i32 %19)
  store %struct.wined3d_cs_dispatch* %20, %struct.wined3d_cs_dispatch** %8, align 8
  %21 = load i32, i32* @WINED3D_CS_OP_DISPATCH, align 4
  %22 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %8, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %8, align 8
  %26 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %29 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %8, align 8
  %30 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store %struct.wined3d_buffer* %28, %struct.wined3d_buffer** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %8, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  %40 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %41 = call i32 @acquire_compute_pipeline_resources(%struct.wined3d_state* %40)
  %42 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %42, i32 0, i32 0
  %44 = call i32 @wined3d_resource_acquire(i32* %43)
  %45 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %46 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %48, align 8
  %50 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %51 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %52 = call i32 %49(%struct.wined3d_cs* %50, i32 %51)
  ret void
}

declare dso_local i32 @acquire_compute_pipeline_resources(%struct.wined3d_state*) #1

declare dso_local i32 @wined3d_resource_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
