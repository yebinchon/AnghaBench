; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_constant_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_constant_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_set_constant_buffer* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_set_constant_buffer = type { i32, %struct.wined3d_buffer*, i32, i32 }
%struct.wined3d_buffer = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_SET_CONSTANT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_set_constant_buffer(%struct.wined3d_cs* %0, i32 %1, i32 %2, %struct.wined3d_buffer* %3) #0 {
  %5 = alloca %struct.wined3d_cs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_buffer*, align 8
  %9 = alloca %struct.wined3d_cs_set_constant_buffer*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_buffer* %3, %struct.wined3d_buffer** %8, align 8
  %10 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.wined3d_cs_set_constant_buffer* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_set_constant_buffer* (%struct.wined3d_cs*, i32, i32)** %13, align 8
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %16 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %17 = call %struct.wined3d_cs_set_constant_buffer* %14(%struct.wined3d_cs* %15, i32 24, i32 %16)
  store %struct.wined3d_cs_set_constant_buffer* %17, %struct.wined3d_cs_set_constant_buffer** %9, align 8
  %18 = load i32, i32* @WINED3D_CS_OP_SET_CONSTANT_BUFFER, align 4
  %19 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %9, align 8
  %20 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %9, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %9, align 8
  %26 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %8, align 8
  %28 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %9, align 8
  %29 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %28, i32 0, i32 1
  store %struct.wined3d_buffer* %27, %struct.wined3d_buffer** %29, align 8
  %30 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %33, align 8
  %35 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %36 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %37 = call i32 %34(%struct.wined3d_cs* %35, i32 %36)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
