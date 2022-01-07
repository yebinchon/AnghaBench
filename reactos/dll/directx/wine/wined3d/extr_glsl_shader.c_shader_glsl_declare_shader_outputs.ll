; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_declare_shader_outputs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_declare_shader_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"out shader_in_out {\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s vec4 reg%u;\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"} shader_out;\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"out shader_in_out { vec4 reg[%u]; } shader_out;\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"vec4 ps_link[%u];\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i64, i32*)* @shader_glsl_declare_shader_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_declare_shader_outputs(%struct.wined3d_gl_info* %0, %struct.wined3d_string_buffer* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca %struct.wined3d_string_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %6, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %15 = call i64 @shader_glsl_use_interface_blocks(%struct.wined3d_gl_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %22 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %42, %20
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %29 = call i64 @needs_interpolation_qualifiers_for_shader_outputs(%struct.wined3d_gl_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @wined3d_extract_interpolation_mode(i32* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @shader_glsl_interpolation_qualifiers(i32 %35)
  store i8* %36, i8** %13, align 8
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %47 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %52

48:                                               ; preds = %17
  %49 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  br label %59

53:                                               ; preds = %5
  %54 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %55 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @declare_out_varying(%struct.wined3d_gl_info* %54, %struct.wined3d_string_buffer* %55, i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %52
  ret void
}

declare dso_local i64 @shader_glsl_use_interface_blocks(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i64 @needs_interpolation_qualifiers_for_shader_outputs(%struct.wined3d_gl_info*) #1

declare dso_local i32 @wined3d_extract_interpolation_mode(i32*, i32) #1

declare dso_local i8* @shader_glsl_interpolation_qualifiers(i32) #1

declare dso_local i32 @declare_out_varying(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
