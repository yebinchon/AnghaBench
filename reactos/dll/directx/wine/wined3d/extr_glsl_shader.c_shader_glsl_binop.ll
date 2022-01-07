; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_binop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.glsl_src_param = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"<unhandled operator>\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Opcode %s not yet handled in GLSL.\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s %s %s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_binop(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  store %struct.wined3d_string_buffer* %12, %struct.wined3d_string_buffer** %3, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %27 [
    i32 138, label %16
    i32 137, label %17
    i32 136, label %18
    i32 135, label %19
    i32 134, label %20
    i32 133, label %21
    i32 132, label %22
    i32 131, label %23
    i32 130, label %24
    i32 129, label %25
    i32 128, label %26
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %33

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %33

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %33

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %33

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %33

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %33

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %33

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %33

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %33

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %33

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %33

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @debug_d3dshaderinstructionhandler(i32 %30)
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %35 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %36 = call i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer* %34, %struct.wined3d_shader_instruction* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %38 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %37, i32* %41, i32 %42, %struct.glsl_src_param* %4)
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %44, i32* %48, i32 %49, %struct.glsl_src_param* %5)
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @shader_addline(%struct.wined3d_string_buffer* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %53, i8* %54, i32 %56)
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dshaderinstructionhandler(i32) #1

declare dso_local i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
