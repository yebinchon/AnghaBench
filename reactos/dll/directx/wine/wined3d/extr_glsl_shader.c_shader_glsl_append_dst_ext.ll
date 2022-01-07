; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_append_dst_ext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_append_dst_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_instruction = type { i32 }
%struct.wined3d_shader_dst_param = type { i64 }
%struct.glsl_dst_param = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s%s = %s(\00", align 1
@shift_glsl_tab = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s%s = %sintBitsToFloat(\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s%s = %suintBitsToFloat(\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unhandled data type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i32)* @shader_glsl_append_dst_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_instruction* %1, %struct.wined3d_shader_dst_param* %2, i32 %3) #0 {
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca %struct.wined3d_shader_instruction*, align 8
  %7 = alloca %struct.wined3d_shader_dst_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.glsl_dst_param, align 4
  %10 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %5, align 8
  store %struct.wined3d_shader_instruction* %1, %struct.wined3d_shader_instruction** %6, align 8
  store %struct.wined3d_shader_dst_param* %2, %struct.wined3d_shader_dst_param** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %12 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %7, align 8
  %13 = call i32 @shader_glsl_add_dst_param(%struct.wined3d_shader_instruction* %11, %struct.wined3d_shader_dst_param* %12, %struct.glsl_dst_param* %9)
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %56 [
    i32 132, label %17
    i32 131, label %30
    i32 130, label %43
    i32 129, label %43
    i32 128, label %43
  ]

17:                                               ; preds = %15
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @shift_glsl_tab, align 8
  %24 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %7, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @shader_addline(%struct.wined3d_string_buffer* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22, i32 %28)
  br label %71

30:                                               ; preds = %15
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @shift_glsl_tab, align 8
  %37 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %7, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @shader_addline(%struct.wined3d_string_buffer* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35, i32 %41)
  br label %71

43:                                               ; preds = %15, %15, %15
  %44 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @shift_glsl_tab, align 8
  %50 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %7, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @shader_addline(%struct.wined3d_string_buffer* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48, i32 %54)
  br label %71

56:                                               ; preds = %15
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @shift_glsl_tab, align 8
  %65 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %7, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %56, %43, %30, %17
  br label %72

72:                                               ; preds = %71, %4
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @shader_glsl_add_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, %struct.glsl_dst_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
