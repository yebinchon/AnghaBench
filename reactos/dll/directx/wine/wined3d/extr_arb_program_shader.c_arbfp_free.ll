; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.shader_arb_priv*, i32*, %struct.TYPE_2__* }
%struct.shader_arb_priv = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@arbfp_free_ffpshader = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@arb_program_shader_backend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*)* @arbfp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arbfp_free(%struct.wined3d_device* %0) #0 {
  %2 = alloca %struct.wined3d_device*, align 8
  %3 = alloca %struct.shader_arb_priv*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %2, align 8
  %4 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %4, i32 0, i32 0
  %6 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %5, align 8
  store %struct.shader_arb_priv* %6, %struct.shader_arb_priv** %3, align 8
  %7 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %3, align 8
  %8 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %7, i32 0, i32 1
  %9 = load i32, i32* @arbfp_free_ffpshader, align 4
  %10 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @wine_rb_destroy(i32* %8, i32 %9, i32* %13)
  %15 = load i32, i32* @FALSE, align 4
  %16 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %3, align 8
  %17 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, @arb_program_shader_backend
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %23, i32 0, i32 0
  %25 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %24, align 8
  %26 = call i32 @heap_free(%struct.shader_arb_priv* %25)
  br label %27

27:                                               ; preds = %22, %1
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
