; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.shader_glsl_priv* }
%struct.shader_glsl_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, %struct.shader_glsl_priv*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_device*)* }
%struct.TYPE_3__ = type { i32 (%struct.wined3d_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*)* @shader_glsl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_free(%struct.wined3d_device* %0) #0 {
  %2 = alloca %struct.wined3d_device*, align 8
  %3 = alloca %struct.shader_glsl_priv*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %2, align 8
  %4 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %4, i32 0, i32 0
  %6 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %5, align 8
  store %struct.shader_glsl_priv* %6, %struct.shader_glsl_priv** %3, align 8
  %7 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %7, i32 0, i32 7
  %9 = call i32 @wine_rb_destroy(i32* %8, i32* null, i32* null)
  %10 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %10, i32 0, i32 6
  %12 = call i32 @constant_heap_free(i32* %11)
  %13 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %13, i32 0, i32 5
  %15 = call i32 @constant_heap_free(i32* %14)
  %16 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %16, i32 0, i32 4
  %18 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %17, align 8
  %19 = call i32 @heap_free(%struct.shader_glsl_priv* %18)
  %20 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %20, i32 0, i32 3
  %22 = call i32 @string_buffer_list_cleanup(i32* %21)
  %23 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %23, i32 0, i32 2
  %25 = call i32 @string_buffer_free(i32* %24)
  %26 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_device*)** %29, align 8
  %31 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %32 = call i32 %30(%struct.wined3d_device* %31)
  %33 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_device*)** %36, align 8
  %38 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %39 = call i32 %37(%struct.wined3d_device* %38)
  %40 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %40, i32 0, i32 0
  %42 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %41, align 8
  %43 = call i32 @heap_free(%struct.shader_glsl_priv* %42)
  %44 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %44, i32 0, i32 0
  store %struct.shader_glsl_priv* null, %struct.shader_glsl_priv** %45, align 8
  ret void
}

declare dso_local i32 @wine_rb_destroy(i32*, i32*, i32*) #1

declare dso_local i32 @constant_heap_free(i32*) #1

declare dso_local i32 @heap_free(%struct.shader_glsl_priv*) #1

declare dso_local i32 @string_buffer_list_cleanup(i32*) #1

declare dso_local i32 @string_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
