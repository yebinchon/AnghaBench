; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, %struct.TYPE_2__*, %struct.wined3d_shader_dst_param* }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_dst_param = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"CMP%s %s, %s, %s, %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_cmp(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_dst_param*, align 8
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca [3 x [50 x i8]], align 16
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %7 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  %9 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %8, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %9, i64 0
  store %struct.wined3d_shader_dst_param* %10, %struct.wined3d_shader_dst_param** %3, align 8
  %11 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  store %struct.wined3d_string_buffer* %15, %struct.wined3d_string_buffer** %4, align 8
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %19 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %16, %struct.wined3d_shader_dst_param* %17, i8* %18)
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* %25, i64 0, i64 0
  %27 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %20, i32* %24, i32 0, i8* %26)
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 1
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %33, i64 0, i64 0
  %35 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %28, i32* %32, i32 1, i8* %34)
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 2
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %41, i64 0, i64 0
  %43 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %36, i32* %40, i32 2, i8* %42)
  %44 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %45 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %46 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %45)
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %48 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 0
  %49 = getelementptr inbounds [50 x i8], [50 x i8]* %48, i64 0, i64 0
  %50 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 2
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %50, i64 0, i64 0
  %52 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 1
  %53 = getelementptr inbounds [50 x i8], [50 x i8]* %52, i64 0, i64 0
  %54 = call i32 @shader_addline(%struct.wined3d_string_buffer* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47, i8* %49, i8* %51, i8* %53)
  ret void
}

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
