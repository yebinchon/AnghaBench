; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_map2gl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_map2gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.glsl_src_param = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bitfieldReverse\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bitCount\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dFdx\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dFdxCoarse\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dFdxFine\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ycorrection.y * dFdy\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"ycorrection.y * dFdyCoarse\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ycorrection.y * dFdyFine\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"findMSB\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"findLSB\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"fract\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"roundEven\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Opcode %s not yet handled in GLSL.\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"31 - \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"));\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_map2gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_map2gl(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  store %struct.wined3d_string_buffer* %12, %struct.wined3d_string_buffer** %3, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %40 [
    i32 151, label %16
    i32 150, label %17
    i32 149, label %18
    i32 148, label %19
    i32 147, label %20
    i32 146, label %21
    i32 145, label %22
    i32 144, label %23
    i32 143, label %24
    i32 142, label %25
    i32 141, label %26
    i32 140, label %27
    i32 139, label %28
    i32 138, label %29
    i32 137, label %30
    i32 136, label %31
    i32 135, label %32
    i32 134, label %33
    i32 133, label %34
    i32 132, label %35
    i32 131, label %36
    i32 130, label %37
    i32 129, label %38
    i32 128, label %39
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %46

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %46

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %46

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %46

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %46

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %46

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %46

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %46

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %46

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %46

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %46

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %46

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %46

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %46

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %46

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %46

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %46

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %46

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %46

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  br label %46

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %5, align 8
  br label %46

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %5, align 8
  br label %46

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %46

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %46

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @debug_d3dshaderinstructionhandler(i32 %43)
  %45 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %47 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %48 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %49 = call i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer* %47, %struct.wined3d_shader_instruction* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 142
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 140
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %46
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %61 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %64)
  %66 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %62
  %71 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %72 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %71, i32* %75, i32 %76, %struct.glsl_src_param* %4)
  %78 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %79 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %80)
  store i32 1, i32* %7, align 4
  br label %82

82:                                               ; preds = %102, %70
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %85 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %90 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %91 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %89, i32* %95, i32 %96, %struct.glsl_src_param* %4)
  %98 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %99 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %82

105:                                              ; preds = %82
  br label %106

106:                                              ; preds = %105, %62
  %107 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %108 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debug_d3dshaderinstructionhandler(i32) #1

declare dso_local i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
