; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_disable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.shader_none_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_gl_info*, i32)* }
%struct.TYPE_3__ = type { i32 (%struct.wined3d_gl_info*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_HULL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*)* @shader_none_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_none_disable(i8* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.shader_none_priv*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.shader_none_priv*
  store %struct.shader_none_priv* %8, %struct.shader_none_priv** %5, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 1
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %6, align 8
  %12 = load %struct.shader_none_priv*, %struct.shader_none_priv** %5, align 8
  %13 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %15, align 8
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 %16(%struct.wined3d_gl_info* %17, i32 %18)
  %20 = load %struct.shader_none_priv*, %struct.shader_none_priv** %5, align 8
  %21 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %23, align 8
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 %24(%struct.wined3d_gl_info* %25, i32 %26)
  %28 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @WINED3D_SHADER_TYPE_GEOMETRY, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @WINED3D_SHADER_TYPE_HULL, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @WINED3D_SHADER_TYPE_DOMAIN, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %46 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
