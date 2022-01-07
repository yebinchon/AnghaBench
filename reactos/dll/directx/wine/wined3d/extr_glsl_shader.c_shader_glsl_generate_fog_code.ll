; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_fog_code.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_fog_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"gl_FragData[0]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ps_out0\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"float fog = (ffp_fog.end - ffp_varying_fogcoord) * ffp_fog.scale;\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"float fog = exp(-ffp_fog.density * ffp_varying_fogcoord);\0A\00", align 1
@.str.4 = private unnamed_addr constant [100 x i8] c"float fog = exp(-ffp_fog.density * ffp_fog.density * ffp_varying_fogcoord * ffp_varying_fogcoord);\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid fog mode %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"%s.xyz = mix(ffp_fog.color.xyz, %s.xyz, clamp(fog, 0.0, 1.0));\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, i32)* @shader_glsl_generate_fog_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_fog_code(%struct.wined3d_string_buffer* %0, %struct.wined3d_gl_info* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %9 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %24 [
    i32 128, label %14
    i32 129, label %15
    i32 131, label %18
    i32 130, label %21
  ]

14:                                               ; preds = %3
  br label %32

15:                                               ; preds = %3
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %17 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %20 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %23 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %22, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.4, i64 0, i64 0))
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  br label %32

27:                                               ; preds = %21, %18, %15
  %28 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %27, %24, %14
  ret void
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
