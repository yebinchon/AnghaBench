; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_default_control_point_phase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_default_control_point_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.wined3d_shader_signature }
%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i32, i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"shader_out[gl_InvocationID].reg[%u]%s = shader_in[gl_InvocationID].reg[%u]%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*)* @shader_glsl_generate_default_control_point_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_default_control_point_phase(%struct.wined3d_shader* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_shader_reg_maps* %2) #0 {
  %4 = alloca %struct.wined3d_shader*, align 8
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %7 = alloca %struct.wined3d_shader_signature*, align 8
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_shader_signature_element*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %4, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %5, align 8
  store %struct.wined3d_shader_reg_maps* %2, %struct.wined3d_shader_reg_maps** %6, align 8
  %11 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %11, i32 0, i32 0
  store %struct.wined3d_shader_signature* %12, %struct.wined3d_shader_signature** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %20, i32 0, i32 1
  %22 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %22, i64 %24
  store %struct.wined3d_shader_signature_element* %25, %struct.wined3d_shader_signature_element** %10, align 8
  %26 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %10, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %30 = call i32 @shader_glsl_write_mask_to_str(i32 %28, i8* %29)
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %32 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %10, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %36 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %10, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %40 = call i32 @shader_addline(%struct.wined3d_string_buffer* %31, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35, i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
