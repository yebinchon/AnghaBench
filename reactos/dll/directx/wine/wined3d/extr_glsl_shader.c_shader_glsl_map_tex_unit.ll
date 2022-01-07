; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_map_tex_unit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_map_tex_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_shader_version = type { i32 }

@WINED3D_UNMAPPED_STAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_shader_version*, i32)* @shader_glsl_map_tex_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_map_tex_unit(%struct.wined3d_context* %0, %struct.wined3d_shader_version* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_shader_version*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_shader_version* %1, %struct.wined3d_shader_version** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %12 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %13 = call i32* @context_get_tex_unit_mapping(%struct.wined3d_context* %11, %struct.wined3d_shader_version* %12, i32* %9, i32* %10)
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @WINED3D_UNMAPPED_STAGE, align 4
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %22, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32* @context_get_tex_unit_mapping(%struct.wined3d_context*, %struct.wined3d_shader_version*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
