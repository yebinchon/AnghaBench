; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_preload.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_resource = type { i32 }
%struct.wined3d_texture = type { i32 }
%struct.wined3d_context = type { i32 }

@WINED3D_TEXTURE_IS_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_resource*)* @texture_resource_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @texture_resource_preload(%struct.wined3d_resource* %0) #0 {
  %2 = alloca %struct.wined3d_resource*, align 8
  %3 = alloca %struct.wined3d_texture*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_resource* %0, %struct.wined3d_resource** %2, align 8
  %5 = load %struct.wined3d_resource*, %struct.wined3d_resource** %2, align 8
  %6 = call %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource* %5)
  store %struct.wined3d_texture* %6, %struct.wined3d_texture** %3, align 8
  %7 = load %struct.wined3d_resource*, %struct.wined3d_resource** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.wined3d_context* @context_acquire(i32 %9, i32* null, i32 0)
  store %struct.wined3d_context* %10, %struct.wined3d_context** %4, align 8
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %13 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %14 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WINED3D_TEXTURE_IS_SRGB, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @wined3d_texture_load(%struct.wined3d_texture* %11, %struct.wined3d_context* %12, i32 %17)
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %20 = call i32 @context_release(%struct.wined3d_context* %19)
  ret void
}

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource*) #1

declare dso_local %struct.wined3d_context* @context_acquire(i32, i32*, i32) #1

declare dso_local i32 @wined3d_texture_load(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
