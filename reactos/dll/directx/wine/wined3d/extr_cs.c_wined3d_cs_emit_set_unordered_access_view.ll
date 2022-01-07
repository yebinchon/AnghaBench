; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_unordered_access_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_unordered_access_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_set_unordered_access_view* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_set_unordered_access_view = type { i32, i32, i32, %struct.wined3d_unordered_access_view*, i32 }
%struct.wined3d_unordered_access_view = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_SET_UNORDERED_ACCESS_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_set_unordered_access_view(%struct.wined3d_cs* %0, i32 %1, i32 %2, %struct.wined3d_unordered_access_view* %3, i32 %4) #0 {
  %6 = alloca %struct.wined3d_cs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_unordered_access_view*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_cs_set_unordered_access_view*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.wined3d_unordered_access_view* %3, %struct.wined3d_unordered_access_view** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %13 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.wined3d_cs_set_unordered_access_view* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_set_unordered_access_view* (%struct.wined3d_cs*, i32, i32)** %15, align 8
  %17 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %18 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %19 = call %struct.wined3d_cs_set_unordered_access_view* %16(%struct.wined3d_cs* %17, i32 32, i32 %18)
  store %struct.wined3d_cs_set_unordered_access_view* %19, %struct.wined3d_cs_set_unordered_access_view** %11, align 8
  %20 = load i32, i32* @WINED3D_CS_OP_SET_UNORDERED_ACCESS_VIEW, align 4
  %21 = load %struct.wined3d_cs_set_unordered_access_view*, %struct.wined3d_cs_set_unordered_access_view** %11, align 8
  %22 = getelementptr inbounds %struct.wined3d_cs_set_unordered_access_view, %struct.wined3d_cs_set_unordered_access_view* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.wined3d_cs_set_unordered_access_view*, %struct.wined3d_cs_set_unordered_access_view** %11, align 8
  %25 = getelementptr inbounds %struct.wined3d_cs_set_unordered_access_view, %struct.wined3d_cs_set_unordered_access_view* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.wined3d_cs_set_unordered_access_view*, %struct.wined3d_cs_set_unordered_access_view** %11, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs_set_unordered_access_view, %struct.wined3d_cs_set_unordered_access_view* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %9, align 8
  %30 = load %struct.wined3d_cs_set_unordered_access_view*, %struct.wined3d_cs_set_unordered_access_view** %11, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs_set_unordered_access_view, %struct.wined3d_cs_set_unordered_access_view* %30, i32 0, i32 3
  store %struct.wined3d_unordered_access_view* %29, %struct.wined3d_unordered_access_view** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.wined3d_cs_set_unordered_access_view*, %struct.wined3d_cs_set_unordered_access_view** %11, align 8
  %34 = getelementptr inbounds %struct.wined3d_cs_set_unordered_access_view, %struct.wined3d_cs_set_unordered_access_view* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %38, align 8
  %40 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %41 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %42 = call i32 %39(%struct.wined3d_cs* %40, i32 %41)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
