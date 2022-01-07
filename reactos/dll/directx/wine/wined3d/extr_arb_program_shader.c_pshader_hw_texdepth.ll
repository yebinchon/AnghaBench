; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texdepth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_6__*, %struct.wined3d_shader_dst_param* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.wined3d_string_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_dst_param = type { i32 }

@ARB_ZERO = common dso_local global i32 0, align 4
@ARB_ONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MIN %s.y, %s.y, %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"RCP %s.y, %s.y;\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MUL TA.x, %s.x, %s.y;\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"MIN TA.x, TA.x, %s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MAX result.depth, TA.x, %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_texdepth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_texdepth(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_dst_param*, align 8
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 1
  %10 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %9, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %10, i64 0
  store %struct.wined3d_shader_dst_param* %11, %struct.wined3d_shader_dst_param** %3, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  store %struct.wined3d_string_buffer* %16, %struct.wined3d_string_buffer** %4, align 8
  %17 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ARB_ZERO, align 4
  %26 = call i8* @arb_get_helper_value(i32 %24, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ARB_ONE, align 4
  %36 = call i8* @arb_get_helper_value(i32 %34, i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %38 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %40 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %37, %struct.wined3d_shader_dst_param* %38, i8* %39)
  %41 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43, i8* %44)
  %46 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %48 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %49 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %53 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52)
  %54 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  ret void
}

declare dso_local i8* @arb_get_helper_value(i32, i32) #1

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
