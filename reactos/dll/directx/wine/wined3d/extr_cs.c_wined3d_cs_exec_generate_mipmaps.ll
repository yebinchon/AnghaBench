; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_generate_mipmaps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_generate_mipmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32 }
%struct.wined3d_cs_generate_mipmaps = type { %struct.wined3d_shader_resource_view* }
%struct.wined3d_shader_resource_view = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_generate_mipmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_generate_mipmaps(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_generate_mipmaps*, align 8
  %6 = alloca %struct.wined3d_shader_resource_view*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_cs_generate_mipmaps*
  store %struct.wined3d_cs_generate_mipmaps* %8, %struct.wined3d_cs_generate_mipmaps** %5, align 8
  %9 = load %struct.wined3d_cs_generate_mipmaps*, %struct.wined3d_cs_generate_mipmaps** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs_generate_mipmaps, %struct.wined3d_cs_generate_mipmaps* %9, i32 0, i32 0
  %11 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %10, align 8
  store %struct.wined3d_shader_resource_view* %11, %struct.wined3d_shader_resource_view** %6, align 8
  %12 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %6, align 8
  %13 = call i32 @shader_resource_view_generate_mipmaps(%struct.wined3d_shader_resource_view* %12)
  %14 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %6, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wined3d_resource_release(i32 %16)
  ret void
}

declare dso_local i32 @shader_resource_view_generate_mipmaps(%struct.wined3d_shader_resource_view*) #1

declare dso_local i32 @wined3d_resource_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
