; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_breakc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_breakc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.wined3d_string_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.control_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SUBC TA, %s, %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"BRA loop_%u_end (%s.x);\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"BRK (%s.x);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_breakc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_breakc(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.control_frame*, align 8
  %6 = alloca [50 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  store %struct.wined3d_string_buffer* %13, %struct.wined3d_string_buffer** %3, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @shader_is_vshader_version(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.control_frame* @find_last_loop(i32 %27)
  store %struct.control_frame* %28, %struct.control_frame** %5, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @get_compare(i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %39 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %33, i32* %37, i32 0, i8* %38)
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %46 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %40, i32* %44, i32 1, i8* %45)
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %1
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %53 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %52)
  %54 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %55 = load %struct.control_frame*, %struct.control_frame** %5, align 8
  %56 = getelementptr inbounds %struct.control_frame, %struct.control_frame* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61)
  br label %71

63:                                               ; preds = %1
  %64 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %65 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %66 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %67 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %65, i8* %66)
  %68 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %63, %49
  ret void
}

declare dso_local i64 @shader_is_vshader_version(i32) #1

declare dso_local %struct.control_frame* @find_last_loop(i32) #1

declare dso_local i8* @get_compare(i32) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
