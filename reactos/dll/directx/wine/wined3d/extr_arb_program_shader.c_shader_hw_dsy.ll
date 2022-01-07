; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_dsy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_dsy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"DDY %s, %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MUL%s %s, %s, ycorrection.y;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_dsy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_dsy(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca [50 x i8], align 16
  %5 = alloca [50 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  store %struct.wined3d_string_buffer* %12, %struct.wined3d_string_buffer** %3, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %19 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %13, %struct.TYPE_4__* %17, i8* %18)
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %26 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %20, i32* %24, i32 0, i8* %25)
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %34 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %27, i32* %32, i8* %33, i32* %7)
  %35 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %38 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37)
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44, i8* %45)
  ret void
}

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction*, i32*, i8*, i32*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
