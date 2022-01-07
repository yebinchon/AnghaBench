; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_bem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_bem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, %struct.TYPE_4__*, %struct.wined3d_shader_dst_param* }
%struct.TYPE_4__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_dst_param = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"SWZ TA, bumpenvmat%d, x, z, 0, 0;\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"DP3 TC.r, TA, %s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SWZ TA, bumpenvmat%d, y, w, 0, 0;\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DP3 TC.g, TA, %s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ADD %s, %s, TC;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_bem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_bem(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_dst_param*, align 8
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [50 x i8], align 16
  %7 = alloca [2 x [50 x i8]], align 16
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 2
  %10 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %9, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %10, i64 0
  store %struct.wined3d_shader_dst_param* %11, %struct.wined3d_shader_dst_param** %3, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  store %struct.wined3d_string_buffer* %16, %struct.wined3d_string_buffer** %4, align 8
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %27 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %24, %struct.wined3d_shader_dst_param* %25, i8* %26)
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds [2 x [50 x i8]], [2 x [50 x i8]]* %7, i64 0, i64 1
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %33, i64 0, i64 0
  %35 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %28, i32* %32, i32 1, i8* %34)
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %42 = getelementptr inbounds [2 x [50 x i8]], [2 x [50 x i8]]* %7, i64 0, i64 1
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %42, i64 0, i64 0
  %44 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %51 = getelementptr inbounds [2 x [50 x i8]], [2 x [50 x i8]]* %7, i64 0, i64 1
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %51, i64 0, i64 0
  %53 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %55 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = getelementptr inbounds [2 x [50 x i8]], [2 x [50 x i8]]* %7, i64 0, i64 0
  %60 = getelementptr inbounds [50 x i8], [50 x i8]* %59, i64 0, i64 0
  %61 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %54, i32* %58, i32 0, i8* %60)
  %62 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds [2 x [50 x i8]], [2 x [50 x i8]]* %7, i64 0, i64 0
  %65 = getelementptr inbounds [50 x i8], [50 x i8]* %64, i64 0, i64 0
  %66 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %63, i8* %65)
  ret void
}

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
