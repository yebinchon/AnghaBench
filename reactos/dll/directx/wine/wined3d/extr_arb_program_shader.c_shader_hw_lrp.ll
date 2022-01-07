; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_lrp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_lrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.wined3d_string_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"SUB TA, %s, %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MAD%s %s, %s, TA, %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_lrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_lrp(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca [50 x i8], align 16
  %5 = alloca [3 x [50 x i8]], align 16
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %6 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  store %struct.wined3d_string_buffer* %10, %struct.wined3d_string_buffer** %3, align 8
  %11 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @shader_is_pshader_version(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %23 = call i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction* %22)
  br label %73

24:                                               ; preds = %1
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %31 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %25, i32* %29, i8* %30)
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %5, i64 0, i64 0
  %38 = getelementptr inbounds [50 x i8], [50 x i8]* %37, i64 0, i64 0
  %39 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %32, i32* %36, i32 0, i8* %38)
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %5, i64 0, i64 1
  %46 = getelementptr inbounds [50 x i8], [50 x i8]* %45, i64 0, i64 0
  %47 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %40, i32* %44, i32 1, i8* %46)
  %48 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %5, i64 0, i64 2
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %53, i64 0, i64 0
  %55 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %48, i32* %52, i32 2, i8* %54)
  %56 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %57 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %5, i64 0, i64 1
  %58 = getelementptr inbounds [50 x i8], [50 x i8]* %57, i64 0, i64 0
  %59 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %5, i64 0, i64 2
  %60 = getelementptr inbounds [50 x i8], [50 x i8]* %59, i64 0, i64 0
  %61 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %60)
  %62 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %63 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %64 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %68 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %5, i64 0, i64 0
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %68, i64 0, i64 0
  %70 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %5, i64 0, i64 2
  %71 = getelementptr inbounds [50 x i8], [50 x i8]* %70, i64 0, i64 0
  %72 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %67, i8* %69, i8* %71)
  br label %73

73:                                               ; preds = %24, %21
  ret void
}

declare dso_local i64 @shader_is_pshader_version(i32) #1

declare dso_local i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, i32*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
