; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_add_instruction_modifiers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_add_instruction_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.wined3d_shader_dst_param*, i32, %struct.TYPE_2__* }
%struct.wined3d_shader_dst_param = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MUL%s %s%s, %s, %s;\0A\00", align 1
@shift_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_arb_add_instruction_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_add_instruction_modifiers(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca [50 x i8], align 16
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_dst_param*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  store %struct.wined3d_string_buffer* %13, %struct.wined3d_string_buffer** %6, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 0
  %23 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %22, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %23, i64 0
  store %struct.wined3d_shader_dst_param* %24, %struct.wined3d_shader_dst_param** %8, align 8
  %25 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %8, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %52

31:                                               ; preds = %20
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %8, align 8
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %35 = call i32 @shader_arb_get_write_mask(%struct.wined3d_shader_instruction* %32, %struct.wined3d_shader_dst_param* %33, i8* %34)
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %8, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %37, i32 0, i32 1
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %40 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %36, i32* %38, i8* %39, i32* %7)
  %41 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %42 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %43 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %42)
  %44 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %46 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %47 = load i32*, i32** @shift_tab, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @shader_addline(%struct.wined3d_string_buffer* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %44, i8* %45, i8* %46, i32 %50)
  br label %52

52:                                               ; preds = %31, %30, %19
  ret void
}

declare dso_local i32 @shader_arb_get_write_mask(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction*, i32*, i8*, i32*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
