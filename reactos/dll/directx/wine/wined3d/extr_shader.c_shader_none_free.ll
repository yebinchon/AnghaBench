; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.shader_none_priv* }
%struct.shader_none_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_device*)* }
%struct.TYPE_3__ = type { i32 (%struct.wined3d_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*)* @shader_none_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_none_free(%struct.wined3d_device* %0) #0 {
  %2 = alloca %struct.wined3d_device*, align 8
  %3 = alloca %struct.shader_none_priv*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %2, align 8
  %4 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %4, i32 0, i32 0
  %6 = load %struct.shader_none_priv*, %struct.shader_none_priv** %5, align 8
  store %struct.shader_none_priv* %6, %struct.shader_none_priv** %3, align 8
  %7 = load %struct.shader_none_priv*, %struct.shader_none_priv** %3, align 8
  %8 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_device*)** %10, align 8
  %12 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %13 = call i32 %11(%struct.wined3d_device* %12)
  %14 = load %struct.shader_none_priv*, %struct.shader_none_priv** %3, align 8
  %15 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_device*)** %17, align 8
  %19 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %20 = call i32 %18(%struct.wined3d_device* %19)
  %21 = load %struct.shader_none_priv*, %struct.shader_none_priv** %3, align 8
  %22 = call i32 @heap_free(%struct.shader_none_priv* %21)
  ret void
}

declare dso_local i32 @heap_free(%struct.shader_none_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
