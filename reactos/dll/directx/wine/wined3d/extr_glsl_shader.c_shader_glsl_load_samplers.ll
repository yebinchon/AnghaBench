; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_samplers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_samplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { %struct.wined3d_shader_version }
%struct.wined3d_shader_version = type { i32 }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader_reg_maps*)* @shader_glsl_load_samplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_samplers(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, i32 %2, %struct.wined3d_shader_reg_maps* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_shader_version*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_shader_reg_maps** %8, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 0
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %9, align 8
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %19 = call i64 @shader_glsl_use_layout_binding_qualifier(%struct.wined3d_gl_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %53

22:                                               ; preds = %4
  %23 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %24 = icmp ne %struct.wined3d_shader_reg_maps* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %26, i32 0, i32 0
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi %struct.wined3d_shader_version* [ %27, %25 ], [ null, %28 ]
  store %struct.wined3d_shader_version* %30, %struct.wined3d_shader_version** %10, align 8
  %31 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %10, align 8
  %32 = icmp ne %struct.wined3d_shader_version* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %10, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  %41 = call i8* @shader_glsl_get_prefix(i32 %40)
  store i8* %41, i8** %14, align 8
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %43 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %10, align 8
  %44 = call i32* @context_get_tex_unit_mapping(%struct.wined3d_context* %42, %struct.wined3d_shader_version* %43, i32* %12, i32* %13)
  store i32* %44, i32** %11, align 8
  %45 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %46 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @shader_glsl_load_samplers_range(%struct.wined3d_gl_info* %45, %struct.shader_glsl_priv* %46, i32 %47, i8* %48, i32 %49, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %39, %21
  ret void
}

declare dso_local i64 @shader_glsl_use_layout_binding_qualifier(%struct.wined3d_gl_info*) #1

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i32* @context_get_tex_unit_mapping(%struct.wined3d_context*, %struct.wined3d_shader_version*, i32*, i32*) #1

declare dso_local i32 @shader_glsl_load_samplers_range(%struct.wined3d_gl_info*, %struct.shader_glsl_priv*, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
