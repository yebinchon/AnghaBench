; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_volume.c_volume_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_volume.c_volume_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_parent_ops = type { i32 }
%struct.d3d9_volume = type { i32, %struct.wined3d_texture*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }
%struct.wined3d_texture = type { i32 }

@d3d9_volume_vtbl = common dso_local global i32 0, align 4
@d3d9_volume_wined3d_parent_ops = common dso_local global %struct.wined3d_parent_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @volume_init(%struct.d3d9_volume* %0, %struct.wined3d_texture* %1, i32 %2, %struct.wined3d_parent_ops** %3) #0 {
  %5 = alloca %struct.d3d9_volume*, align 8
  %6 = alloca %struct.wined3d_texture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_parent_ops**, align 8
  store %struct.d3d9_volume* %0, %struct.d3d9_volume** %5, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_parent_ops** %3, %struct.wined3d_parent_ops*** %8, align 8
  %9 = load %struct.d3d9_volume*, %struct.d3d9_volume** %5, align 8
  %10 = getelementptr inbounds %struct.d3d9_volume, %struct.d3d9_volume* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32* @d3d9_volume_vtbl, i32** %11, align 8
  %12 = load %struct.d3d9_volume*, %struct.d3d9_volume** %5, align 8
  %13 = getelementptr inbounds %struct.d3d9_volume, %struct.d3d9_volume* %12, i32 0, i32 3
  %14 = call i32 @d3d9_resource_init(%struct.TYPE_4__* %13)
  %15 = load %struct.d3d9_volume*, %struct.d3d9_volume** %5, align 8
  %16 = getelementptr inbounds %struct.d3d9_volume, %struct.d3d9_volume* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %19 = call i32 @wined3d_texture_get_parent(%struct.wined3d_texture* %18)
  %20 = load %struct.d3d9_volume*, %struct.d3d9_volume** %5, align 8
  %21 = getelementptr inbounds %struct.d3d9_volume, %struct.d3d9_volume* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %23 = load %struct.d3d9_volume*, %struct.d3d9_volume** %5, align 8
  %24 = getelementptr inbounds %struct.d3d9_volume, %struct.d3d9_volume* %23, i32 0, i32 1
  store %struct.wined3d_texture* %22, %struct.wined3d_texture** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.d3d9_volume*, %struct.d3d9_volume** %5, align 8
  %27 = getelementptr inbounds %struct.d3d9_volume, %struct.d3d9_volume* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.wined3d_parent_ops**, %struct.wined3d_parent_ops*** %8, align 8
  store %struct.wined3d_parent_ops* @d3d9_volume_wined3d_parent_ops, %struct.wined3d_parent_ops** %28, align 8
  ret void
}

declare dso_local i32 @d3d9_resource_init(%struct.TYPE_4__*) #1

declare dso_local i32 @wined3d_texture_get_parent(%struct.wined3d_texture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
