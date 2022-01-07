; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_srgb_write_correction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_srgb_write_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"gl_FragData[0]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ps_out0\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"tmp0.xyz = pow(%s.xyz, vec3(srgb_const0.x));\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"tmp0.xyz = tmp0.xyz * vec3(srgb_const0.y) - vec3(srgb_const0.z);\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"tmp1.xyz = %s.xyz * vec3(srgb_const0.w);\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"bvec3 srgb_compare = lessThan(%s.xyz, vec3(srgb_const1.x));\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"%s.xyz = mix(tmp0.xyz, tmp1.xyz, vec3(srgb_compare));\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s = clamp(%s, 0.0, 1.0);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*)* @shader_glsl_generate_srgb_write_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_srgb_write_correction(%struct.wined3d_string_buffer* %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %4, align 8
  %6 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %7 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %15 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %14, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %19 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %19, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  %22 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %25 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %26, i8* %27)
  ret void
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
