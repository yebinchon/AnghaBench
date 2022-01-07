; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_map* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_map = type { i32, i32, i32*, %struct.wined3d_box*, %struct.wined3d_map_desc*, %struct.wined3d_resource*, i32 }
%struct.wined3d_resource = type { i32 }
%struct.wined3d_map_desc = type { i32 }
%struct.wined3d_box = type { i32 }

@WINED3D_CS_QUEUE_MAP = common dso_local global i32 0, align 4
@WINED3D_CS_OP_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_cs_map(%struct.wined3d_cs* %0, %struct.wined3d_resource* %1, i32 %2, %struct.wined3d_map_desc* %3, %struct.wined3d_box* %4, i32 %5) #0 {
  %7 = alloca %struct.wined3d_cs*, align 8
  %8 = alloca %struct.wined3d_resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_map_desc*, align 8
  %11 = alloca %struct.wined3d_box*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_cs_map*, align 8
  %14 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %7, align 8
  store %struct.wined3d_resource* %1, %struct.wined3d_resource** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wined3d_map_desc* %3, %struct.wined3d_map_desc** %10, align 8
  store %struct.wined3d_box* %4, %struct.wined3d_box** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %16 = call i32 @wined3d_not_from_cs(%struct.wined3d_cs* %15)
  %17 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %18 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.wined3d_cs_map* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_map* (%struct.wined3d_cs*, i32, i32)** %20, align 8
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %23 = load i32, i32* @WINED3D_CS_QUEUE_MAP, align 4
  %24 = call %struct.wined3d_cs_map* %21(%struct.wined3d_cs* %22, i32 48, i32 %23)
  store %struct.wined3d_cs_map* %24, %struct.wined3d_cs_map** %13, align 8
  %25 = load i32, i32* @WINED3D_CS_OP_MAP, align 4
  %26 = load %struct.wined3d_cs_map*, %struct.wined3d_cs_map** %13, align 8
  %27 = getelementptr inbounds %struct.wined3d_cs_map, %struct.wined3d_cs_map* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.wined3d_resource*, %struct.wined3d_resource** %8, align 8
  %29 = load %struct.wined3d_cs_map*, %struct.wined3d_cs_map** %13, align 8
  %30 = getelementptr inbounds %struct.wined3d_cs_map, %struct.wined3d_cs_map* %29, i32 0, i32 5
  store %struct.wined3d_resource* %28, %struct.wined3d_resource** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.wined3d_cs_map*, %struct.wined3d_cs_map** %13, align 8
  %33 = getelementptr inbounds %struct.wined3d_cs_map, %struct.wined3d_cs_map* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.wined3d_map_desc*, %struct.wined3d_map_desc** %10, align 8
  %35 = load %struct.wined3d_cs_map*, %struct.wined3d_cs_map** %13, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs_map, %struct.wined3d_cs_map* %35, i32 0, i32 4
  store %struct.wined3d_map_desc* %34, %struct.wined3d_map_desc** %36, align 8
  %37 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %38 = load %struct.wined3d_cs_map*, %struct.wined3d_cs_map** %13, align 8
  %39 = getelementptr inbounds %struct.wined3d_cs_map, %struct.wined3d_cs_map* %38, i32 0, i32 3
  store %struct.wined3d_box* %37, %struct.wined3d_box** %39, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.wined3d_cs_map*, %struct.wined3d_cs_map** %13, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs_map, %struct.wined3d_cs_map* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.wined3d_cs_map*, %struct.wined3d_cs_map** %13, align 8
  %44 = getelementptr inbounds %struct.wined3d_cs_map, %struct.wined3d_cs_map* %43, i32 0, i32 2
  store i32* %14, i32** %44, align 8
  %45 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %46 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %48, align 8
  %50 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %51 = load i32, i32* @WINED3D_CS_QUEUE_MAP, align 4
  %52 = call i32 %49(%struct.wined3d_cs* %50, i32 %51)
  %53 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %54 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %56, align 8
  %58 = load %struct.wined3d_cs*, %struct.wined3d_cs** %7, align 8
  %59 = load i32, i32* @WINED3D_CS_QUEUE_MAP, align 4
  %60 = call i32 %57(%struct.wined3d_cs* %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  ret i32 %61
}

declare dso_local i32 @wined3d_not_from_cs(%struct.wined3d_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
