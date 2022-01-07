; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_unmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_unmap* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_unmap = type { i32, i32*, %struct.wined3d_resource*, i32 }
%struct.wined3d_resource = type { i32 }

@WINED3D_CS_QUEUE_MAP = common dso_local global i32 0, align 4
@WINED3D_CS_OP_UNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_cs_unmap(%struct.wined3d_cs* %0, %struct.wined3d_resource* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_cs*, align 8
  %5 = alloca %struct.wined3d_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_cs_unmap*, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %4, align 8
  store %struct.wined3d_resource* %1, %struct.wined3d_resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %10 = call i32 @wined3d_not_from_cs(%struct.wined3d_cs* %9)
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.wined3d_cs_unmap* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_unmap* (%struct.wined3d_cs*, i32, i32)** %14, align 8
  %16 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %17 = load i32, i32* @WINED3D_CS_QUEUE_MAP, align 4
  %18 = call %struct.wined3d_cs_unmap* %15(%struct.wined3d_cs* %16, i32 32, i32 %17)
  store %struct.wined3d_cs_unmap* %18, %struct.wined3d_cs_unmap** %7, align 8
  %19 = load i32, i32* @WINED3D_CS_OP_UNMAP, align 4
  %20 = load %struct.wined3d_cs_unmap*, %struct.wined3d_cs_unmap** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_cs_unmap, %struct.wined3d_cs_unmap* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wined3d_resource*, %struct.wined3d_resource** %5, align 8
  %23 = load %struct.wined3d_cs_unmap*, %struct.wined3d_cs_unmap** %7, align 8
  %24 = getelementptr inbounds %struct.wined3d_cs_unmap, %struct.wined3d_cs_unmap* %23, i32 0, i32 2
  store %struct.wined3d_resource* %22, %struct.wined3d_resource** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.wined3d_cs_unmap*, %struct.wined3d_cs_unmap** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_cs_unmap, %struct.wined3d_cs_unmap* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.wined3d_cs_unmap*, %struct.wined3d_cs_unmap** %7, align 8
  %29 = getelementptr inbounds %struct.wined3d_cs_unmap, %struct.wined3d_cs_unmap* %28, i32 0, i32 1
  store i32* %8, i32** %29, align 8
  %30 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %33, align 8
  %35 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %36 = load i32, i32* @WINED3D_CS_QUEUE_MAP, align 4
  %37 = call i32 %34(%struct.wined3d_cs* %35, i32 %36)
  %38 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %41, align 8
  %43 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %44 = load i32, i32* @WINED3D_CS_QUEUE_MAP, align 4
  %45 = call i32 %42(%struct.wined3d_cs* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @wined3d_not_from_cs(%struct.wined3d_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
