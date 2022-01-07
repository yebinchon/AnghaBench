; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_lighting_footer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_lighting_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_ffp_vs_settings = type { i64 }

@.str = private unnamed_addr constant [81 x i8] c"diffuse += clamp(dot(dir, normal), 0.0, 1.0) * ffp_light[%u].diffuse.xyz * att;\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"t = dot(normal, normalize(dir - normalize(ec_pos.xyz)));\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"t = dot(normal, normalize(dir + vec3(0.0, 0.0, -1.0)));\0A\00", align 1
@.str.3 = private unnamed_addr constant [115 x i8] c"if (dot(dir, normal) > 0.0 && t > 0.0) specular += pow(t, ffp_material.shininess) * ffp_light[%u].specular * att;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_ffp_vs_settings*, i32)* @shader_glsl_ffp_vertex_lighting_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ffp_vertex_lighting_footer(%struct.wined3d_string_buffer* %0, %struct.wined3d_ffp_vs_settings* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_ffp_vs_settings*, align 8
  %6 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_ffp_vs_settings* %1, %struct.wined3d_ffp_vs_settings** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %16 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %19 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %21, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
