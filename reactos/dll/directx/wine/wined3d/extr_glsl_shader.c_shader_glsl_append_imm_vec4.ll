; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_append_imm_vec4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_append_imm_vec4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"vec4(%s, %s, %s, %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, float*)* @shader_glsl_append_imm_vec4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_append_imm_vec4(%struct.wined3d_string_buffer* %0, float* %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca float*, align 8
  %5 = alloca [4 x [17 x i8]], align 16
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load float*, float** %4, align 8
  %7 = getelementptr inbounds float, float* %6, i64 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 0
  %10 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 0
  %11 = call i32 @wined3d_ftoa(float %8, i8* %10)
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 1
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 1
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 0
  %17 = call i32 @wined3d_ftoa(float %14, i8* %16)
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 2
  %22 = getelementptr inbounds [17 x i8], [17 x i8]* %21, i64 0, i64 0
  %23 = call i32 @wined3d_ftoa(float %20, i8* %22)
  %24 = load float*, float** %4, align 8
  %25 = getelementptr inbounds float, float* %24, i64 3
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 3
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* %27, i64 0, i64 0
  %29 = call i32 @wined3d_ftoa(float %26, i8* %28)
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %31 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 0
  %32 = getelementptr inbounds [17 x i8], [17 x i8]* %31, i64 0, i64 0
  %33 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 1
  %34 = getelementptr inbounds [17 x i8], [17 x i8]* %33, i64 0, i64 0
  %35 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 2
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* %35, i64 0, i64 0
  %37 = getelementptr inbounds [4 x [17 x i8]], [4 x [17 x i8]]* %5, i64 0, i64 3
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* %37, i64 0, i64 0
  %39 = call i32 @shader_addline(%struct.wined3d_string_buffer* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %34, i8* %36, i8* %38)
  ret void
}

declare dso_local i32 @wined3d_ftoa(float, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
