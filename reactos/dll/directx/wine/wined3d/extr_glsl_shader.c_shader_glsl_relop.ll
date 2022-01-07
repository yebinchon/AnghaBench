; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_relop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_relop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.glsl_src_param = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"greaterThanEqual\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lessThan\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"notEqual\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"<unhandled operator>\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unhandled opcode %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"uvec%u(%s(%s, %s)) * 0xffffffffu);\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%s %s %s ? 0xffffffffu : 0u);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_relop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_relop(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  store %struct.wined3d_string_buffer* %13, %struct.wined3d_string_buffer** %3, align 8
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = call i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer* %14, %struct.wined3d_shader_instruction* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @shader_glsl_get_write_mask_size(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %19, i32* %23, i32 %24, %struct.glsl_src_param* %4)
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %26, i32* %30, i32 %31, %struct.glsl_src_param* %5)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %63

35:                                               ; preds = %1
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %49 [
    i32 137, label %39
    i32 135, label %40
    i32 136, label %41
    i32 134, label %42
    i32 129, label %43
    i32 131, label %44
    i32 133, label %45
    i32 128, label %46
    i32 130, label %47
    i32 132, label %48
  ]

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %54

40:                                               ; preds = %35
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %54

41:                                               ; preds = %35
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %54

42:                                               ; preds = %35
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %54

43:                                               ; preds = %35
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %54

44:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %54

45:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %54

46:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %54

47:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %54

48:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %54

49:                                               ; preds = %35
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %50 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39
  %55 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %56, i8* %57, i32 %59, i32 %61)
  br label %90

63:                                               ; preds = %1
  %64 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %77 [
    i32 137, label %67
    i32 135, label %68
    i32 136, label %69
    i32 134, label %70
    i32 129, label %71
    i32 131, label %72
    i32 133, label %73
    i32 128, label %74
    i32 130, label %75
    i32 132, label %76
  ]

67:                                               ; preds = %63
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %82

68:                                               ; preds = %63
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %82

69:                                               ; preds = %63
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %82

70:                                               ; preds = %63
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %82

71:                                               ; preds = %63
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %82

72:                                               ; preds = %63
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %82

73:                                               ; preds = %63
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %82

74:                                               ; preds = %63
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %82

75:                                               ; preds = %63
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %82

76:                                               ; preds = %63
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %82

77:                                               ; preds = %63
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %78 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67
  %83 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %84 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %85, i8* %86, i32 %88)
  br label %90

90:                                               ; preds = %82, %54
  ret void
}

declare dso_local i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
