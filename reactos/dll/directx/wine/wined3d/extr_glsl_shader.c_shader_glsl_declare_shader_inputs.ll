; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_declare_shader_inputs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_declare_shader_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in shader_in_out {\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s vec4 reg%u;\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"} shader_in;\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"in shader_in_out { vec4 reg[%u]; } shader_in;\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"vec4 ps_link[%u];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i32*, i64)* @shader_glsl_declare_shader_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_declare_shader_inputs(%struct.wined3d_gl_info* %0, %struct.wined3d_string_buffer* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca %struct.wined3d_string_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %6, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %14 = call i64 @shader_glsl_use_interface_blocks(%struct.wined3d_gl_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %21 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %35, %19
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @wined3d_extract_interpolation_mode(i32* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @shader_glsl_interpolation_qualifiers(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %45

41:                                               ; preds = %16
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %52

46:                                               ; preds = %5
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @declare_in_varying(%struct.wined3d_gl_info* %47, %struct.wined3d_string_buffer* %48, i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %45
  ret void
}

declare dso_local i64 @shader_glsl_use_interface_blocks(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @wined3d_extract_interpolation_mode(i32*, i32) #1

declare dso_local i32 @shader_glsl_interpolation_qualifiers(i32) #1

declare dso_local i32 @declare_in_varying(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
