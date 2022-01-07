; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_get_tex_unit_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_get_tex_unit_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32*, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_shader_version = type { i32, i32 }

@MAX_TEXTURES = common dso_local global i32 0, align 4
@MAX_FRAGMENT_SAMPLERS = common dso_local global i32 0, align 4
@MAX_VERTEX_SAMPLERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unhandled shader type %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @context_get_tex_unit_mapping(%struct.wined3d_context* %0, %struct.wined3d_shader_version* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_shader_version*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_shader_version* %1, %struct.wined3d_shader_version** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 1
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %10, align 8
  %14 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %7, align 8
  %15 = icmp ne %struct.wined3d_shader_version* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @MAX_TEXTURES, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  br label %61

23:                                               ; preds = %4
  %24 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %7, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %30 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %29, i32 0, i32 0
  %31 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %7, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @wined3d_gl_limits_get_texture_unit_range(i32* %30, i32 %33, i32* %34, i32* %35)
  store i32* null, i32** %5, align 8
  br label %61

37:                                               ; preds = %23
  %38 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %7, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %50 [
    i32 129, label %41
    i32 128, label %45
  ]

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %57

45:                                               ; preds = %37
  %46 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @MAX_VERTEX_SAMPLERS, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %57

50:                                               ; preds = %37
  %51 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %8, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %45, %41
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %5, align 8
  br label %61

61:                                               ; preds = %57, %28, %16
  %62 = load i32*, i32** %5, align 8
  ret i32* %62
}

declare dso_local i32 @wined3d_gl_limits_get_texture_unit_range(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
