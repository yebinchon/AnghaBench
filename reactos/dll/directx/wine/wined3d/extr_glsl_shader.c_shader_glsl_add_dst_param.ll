; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_add_dst_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_add_dst_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32 }
%struct.wined3d_shader_dst_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.glsl_dst_param = type { i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, %struct.glsl_dst_param*)* @shader_glsl_add_dst_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_add_dst_param(%struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_dst_param* %1, %struct.glsl_dst_param* %2) #0 {
  %4 = alloca %struct.wined3d_shader_instruction*, align 8
  %5 = alloca %struct.wined3d_shader_dst_param*, align 8
  %6 = alloca %struct.glsl_dst_param*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %4, align 8
  store %struct.wined3d_shader_dst_param* %1, %struct.wined3d_shader_dst_param** %5, align 8
  store %struct.glsl_dst_param* %2, %struct.glsl_dst_param** %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.glsl_dst_param*, %struct.glsl_dst_param** %6, align 8
  %10 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  %13 = load %struct.glsl_dst_param*, %struct.glsl_dst_param** %6, align 8
  %14 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i32 0, i32 0
  %19 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.glsl_dst_param*, %struct.glsl_dst_param** %6, align 8
  %24 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %27 = call i32 @shader_glsl_get_register_name(%struct.TYPE_2__* %18, i32 %22, i8* %25, i32* %7, %struct.wined3d_shader_instruction* %26)
  %28 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %29 = load %struct.glsl_dst_param*, %struct.glsl_dst_param** %6, align 8
  %30 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param* %28, i8* %31)
  ret i32 %32
}

declare dso_local i32 @shader_glsl_get_register_name(%struct.TYPE_2__*, i32, i8*, i32*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
