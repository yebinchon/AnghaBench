; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_unmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32 }
%struct.wined3d_cs_unmap = type { i32, i32*, %struct.wined3d_resource* }
%struct.wined3d_resource = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_resource*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_unmap(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_unmap*, align 8
  %6 = alloca %struct.wined3d_resource*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_cs_unmap*
  store %struct.wined3d_cs_unmap* %8, %struct.wined3d_cs_unmap** %5, align 8
  %9 = load %struct.wined3d_cs_unmap*, %struct.wined3d_cs_unmap** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs_unmap, %struct.wined3d_cs_unmap* %9, i32 0, i32 2
  %11 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  store %struct.wined3d_resource* %11, %struct.wined3d_resource** %6, align 8
  %12 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %13 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.wined3d_resource*, i32)*, i32 (%struct.wined3d_resource*, i32)** %15, align 8
  %17 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %18 = load %struct.wined3d_cs_unmap*, %struct.wined3d_cs_unmap** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_unmap, %struct.wined3d_cs_unmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(%struct.wined3d_resource* %17, i32 %20)
  %22 = load %struct.wined3d_cs_unmap*, %struct.wined3d_cs_unmap** %5, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs_unmap, %struct.wined3d_cs_unmap* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32 %21, i32* %24, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
