; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texm3x2depth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texm3x2depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.wined3d_shader_dst_param*, i32*, %struct.TYPE_8__* }
%struct.wined3d_shader_dst_param = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.wined3d_string_buffer* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@ARB_ZERO = common dso_local global i32 0, align 4
@ARB_ONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DP3 %s.y, fragment.texcoord[%u], %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"RCP %s.y, %s.y;\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MUL %s.x, %s.x, %s.y;\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"MIN %s.x, %s.x, %s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MAX result.depth, %s.x, %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_texm3x2depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_texm3x2depth(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.wined3d_shader_dst_param*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  store %struct.wined3d_string_buffer* %14, %struct.wined3d_string_buffer** %3, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 0
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %16, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i64 0
  store %struct.wined3d_shader_dst_param* %18, %struct.wined3d_shader_dst_param** %4, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARB_ZERO, align 4
  %28 = call i8* @arb_get_helper_value(i32 %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ARB_ONE, align 4
  %38 = call i8* @arb_get_helper_value(i32 %36, i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %45 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %39, i32* %43, i32 0, i8* %44)
  %46 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %47 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %47, i32 0, i32 0
  %49 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %48, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %49, i64 0
  %51 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %50, i32 0, i32 0
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %53 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %46, %struct.TYPE_10__* %51, i8* %52, i32* %7)
  %54 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %55 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %56 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %4, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %66 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %64, i8* %65)
  %67 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %68 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %69)
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %72 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %73 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %74 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %75 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %72, i8* %73, i8* %74)
  %76 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %77 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %78 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %77, i8* %78, i8* %79)
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %82 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %83)
  ret void
}

declare dso_local i8* @arb_get_helper_value(i32, i32) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction*, %struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
