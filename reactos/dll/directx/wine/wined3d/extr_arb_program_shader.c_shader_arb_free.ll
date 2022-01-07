; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.shader_arb_priv* }
%struct.shader_arb_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_device*)* }
%struct.TYPE_3__ = type { i32 (%struct.wined3d_device*)* }

@release_signature = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*)* @shader_arb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_free(%struct.wined3d_device* %0) #0 {
  %2 = alloca %struct.wined3d_device*, align 8
  %3 = alloca %struct.shader_arb_priv*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %2, align 8
  %4 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %4, i32 0, i32 0
  %6 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %5, align 8
  store %struct.shader_arb_priv* %6, %struct.shader_arb_priv** %3, align 8
  %7 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %3, align 8
  %8 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %7, i32 0, i32 2
  %9 = load i32, i32* @release_signature, align 4
  %10 = call i32 @wine_rb_destroy(i32* %8, i32 %9, i32* null)
  %11 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %3, align 8
  %12 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_device*)** %14, align 8
  %16 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %17 = call i32 %15(%struct.wined3d_device* %16)
  %18 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %3, align 8
  %19 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_device*)** %21, align 8
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %24 = call i32 %22(%struct.wined3d_device* %23)
  %25 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %25, i32 0, i32 0
  %27 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %26, align 8
  %28 = call i32 @heap_free(%struct.shader_arb_priv* %27)
  ret void
}

declare dso_local i32 @wine_rb_destroy(i32*, i32, i32*) #1

declare dso_local i32 @heap_free(%struct.shader_arb_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
