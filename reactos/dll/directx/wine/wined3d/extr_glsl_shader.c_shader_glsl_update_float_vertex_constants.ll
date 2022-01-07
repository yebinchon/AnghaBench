; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_update_float_vertex_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_update_float_vertex_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.shader_glsl_priv* }
%struct.shader_glsl_priv = type { i32, %struct.constant_heap }
%struct.constant_heap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*, i64, i64)* @shader_glsl_update_float_vertex_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_update_float_vertex_constants(%struct.wined3d_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.constant_heap*, align 8
  %9 = alloca i64, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %10, i32 0, i32 0
  %12 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  store %struct.shader_glsl_priv* %12, %struct.shader_glsl_priv** %7, align 8
  %13 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %14 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %13, i32 0, i32 1
  store %struct.constant_heap* %14, %struct.constant_heap** %8, align 8
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %9, align 8
  br label %16

16:                                               ; preds = %29, %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.constant_heap*, %struct.constant_heap** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %26 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @update_heap_entry(%struct.constant_heap* %23, i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %16

32:                                               ; preds = %16
  ret void
}

declare dso_local i32 @update_heap_entry(%struct.constant_heap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
