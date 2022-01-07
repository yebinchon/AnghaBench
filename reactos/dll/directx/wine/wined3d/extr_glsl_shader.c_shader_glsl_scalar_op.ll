; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_scalar_op.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_scalar_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.wined3d_string_buffer*, %struct.TYPE_5__* }
%struct.wined3d_string_buffer = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"exp2(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"log2(abs(\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1.0 / \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"inversesqrt(abs(\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Unhandled instruction %#x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"vec%u(%s%s%s));\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s%s%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_scalar_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_scalar_op(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WINED3D_SHADER_VERSION(i32 %17, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %30, align 8
  store %struct.wined3d_string_buffer* %31, %struct.wined3d_string_buffer** %4, align 8
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = call i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer* %32, %struct.wined3d_shader_instruction* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @shader_glsl_get_write_mask_size(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @WINED3D_SHADER_VERSION(i32 4, i32 0)
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %1
  %43 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %43, i32* %47, i32 %48, %struct.glsl_src_param* %5)
  %50 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %57 [
    i32 133, label %53
    i32 132, label %53
    i32 131, label %54
    i32 130, label %54
    i32 129, label %55
    i32 128, label %56
  ]

53:                                               ; preds = %42, %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %62

54:                                               ; preds = %42, %42
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %62

55:                                               ; preds = %42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %62

56:                                               ; preds = %42
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %62

57:                                               ; preds = %42
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %58 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %56, %55, %54, %53
  %63 = load i32, i32* %8, align 4
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @WINED3D_SHADER_VERSION(i32 4, i32 0)
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %71, i8* %72, i32 %74, i8* %75)
  br label %84

77:                                               ; preds = %65, %62
  %78 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %79, i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %77, %69
  ret void
}

declare dso_local i32 @WINED3D_SHADER_VERSION(i32, i32) #1

declare dso_local i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
