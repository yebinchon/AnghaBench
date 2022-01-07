; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_shader_buildstring.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_shader_buildstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32, i32 }
%struct.shader_func = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"function 'main' not found\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#version 330\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"const bool obs_glsl_compile = true;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_shader_parser*)* @gl_shader_buildstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_shader_buildstring(%struct.gl_shader_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_func*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  %5 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %6 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %5, i32 0, i32 1
  %7 = call %struct.shader_func* @shader_parser_getfunc(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.shader_func* %7, %struct.shader_func** %4, align 8
  %8 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %9 = icmp ne %struct.shader_func* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @LOG_ERROR, align 4
  %12 = call i32 @blog(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %15 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %14, i32 0, i32 0
  %16 = call i32 @dstr_copy(i32* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %18 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %17, i32 0, i32 0
  %19 = call i32 @dstr_cat(i32* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %21 = call i32 @gl_write_params(%struct.gl_shader_parser* %20)
  %22 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %23 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %24 = call i32 @gl_write_inputs(%struct.gl_shader_parser* %22, %struct.shader_func* %23)
  %25 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %26 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %27 = call i32 @gl_write_outputs(%struct.gl_shader_parser* %25, %struct.shader_func* %26)
  %28 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %29 = call i32 @gl_write_interface_block(%struct.gl_shader_parser* %28)
  %30 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %31 = call i32 @gl_write_structs(%struct.gl_shader_parser* %30)
  %32 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %33 = call i32 @gl_write_functions(%struct.gl_shader_parser* %32)
  %34 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %35 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %36 = call i32 @gl_write_main(%struct.gl_shader_parser* %34, %struct.shader_func* %35)
  %37 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %38 = call i32 @gl_rename_attributes(%struct.gl_shader_parser* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %13, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.shader_func* @shader_parser_getfunc(i32*, i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @dstr_copy(i32*, i8*) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_params(%struct.gl_shader_parser*) #1

declare dso_local i32 @gl_write_inputs(%struct.gl_shader_parser*, %struct.shader_func*) #1

declare dso_local i32 @gl_write_outputs(%struct.gl_shader_parser*, %struct.shader_func*) #1

declare dso_local i32 @gl_write_interface_block(%struct.gl_shader_parser*) #1

declare dso_local i32 @gl_write_structs(%struct.gl_shader_parser*) #1

declare dso_local i32 @gl_write_functions(%struct.gl_shader_parser*) #1

declare dso_local i32 @gl_write_main(%struct.gl_shader_parser*, %struct.shader_func*) #1

declare dso_local i32 @gl_rename_attributes(%struct.gl_shader_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
