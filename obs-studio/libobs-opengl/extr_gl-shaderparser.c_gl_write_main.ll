; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.shader_func = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"void main(void)\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_func*)* @gl_write_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_main(%struct.gl_shader_parser* %0, %struct.shader_func* %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_func*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.shader_func* %1, %struct.shader_func** %4, align 8
  %5 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %6 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %5, i32 0, i32 0
  %7 = call i32 @dstr_cat(i32* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %9 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %10 = call i32 @gl_write_main_vars(%struct.gl_shader_parser* %8, %struct.shader_func* %9)
  %11 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %12 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %13 = call i32 @gl_write_main_storage_inputs(%struct.gl_shader_parser* %11, %struct.shader_func* %12)
  %14 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %15 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %16 = call i32 @gl_write_main_func_call(%struct.gl_shader_parser* %14, %struct.shader_func* %15)
  %17 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %18 = load %struct.shader_func*, %struct.shader_func** %4, align 8
  %19 = call i32 @gl_write_main_storage_outputs(%struct.gl_shader_parser* %17, %struct.shader_func* %18)
  %20 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %21 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %20, i32 0, i32 0
  %22 = call i32 @dstr_cat(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_main_vars(%struct.gl_shader_parser*, %struct.shader_func*) #1

declare dso_local i32 @gl_write_main_storage_inputs(%struct.gl_shader_parser*, %struct.shader_func*) #1

declare dso_local i32 @gl_write_main_func_call(%struct.gl_shader_parser*, %struct.shader_func*) #1

declare dso_local i32 @gl_write_main_storage_outputs(%struct.gl_shader_parser*, %struct.shader_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
