; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_color_key_constant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_color_key_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glsl_ps_program = type { i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_texture** }
%struct.wined3d_texture = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glsl_ps_program*, %struct.wined3d_gl_info*, %struct.wined3d_state*)* @shader_glsl_load_color_key_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_color_key_constant(%struct.glsl_ps_program* %0, %struct.wined3d_gl_info* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca %struct.glsl_ps_program*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca [2 x %struct.wined3d_color], align 4
  %8 = alloca %struct.wined3d_texture*, align 8
  store %struct.glsl_ps_program* %0, %struct.glsl_ps_program** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %9 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %10 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %9, i32 0, i32 0
  %11 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %10, align 8
  %12 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %11, i64 0
  %13 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  store %struct.wined3d_texture* %13, %struct.wined3d_texture** %8, align 8
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %15 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %19 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x %struct.wined3d_color], [2 x %struct.wined3d_color]* %7, i64 0, i64 0
  %22 = call i32 @wined3d_format_get_float_color_key(i32 %17, i32* %20, %struct.wined3d_color* %21)
  %23 = load %struct.glsl_ps_program*, %struct.glsl_ps_program** %4, align 8
  %24 = getelementptr inbounds %struct.glsl_ps_program, %struct.glsl_ps_program* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x %struct.wined3d_color], [2 x %struct.wined3d_color]* %7, i64 0, i64 0
  %27 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %26, i32 0, i32 0
  %28 = call i32 @glUniform4fv(i32 %25, i32 2, i32* %27)
  %29 = call i32 @GL_EXTCALL(i32 %28)
  ret void
}

declare dso_local i32 @wined3d_format_get_float_color_key(i32, i32*, %struct.wined3d_color*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
