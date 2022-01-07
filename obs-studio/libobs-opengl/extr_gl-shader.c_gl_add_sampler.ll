; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_sampler.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i32, i32 }
%struct.shader_sampler = type { i32 }
%struct.gs_sampler_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_shader*, %struct.shader_sampler*)* @gl_add_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_add_sampler(%struct.gs_shader* %0, %struct.shader_sampler* %1) #0 {
  %3 = alloca %struct.gs_shader*, align 8
  %4 = alloca %struct.shader_sampler*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gs_sampler_info, align 4
  store %struct.gs_shader* %0, %struct.gs_shader** %3, align 8
  store %struct.shader_sampler* %1, %struct.shader_sampler** %4, align 8
  %7 = load %struct.shader_sampler*, %struct.shader_sampler** %4, align 8
  %8 = call i32 @shader_sampler_convert(%struct.shader_sampler* %7, %struct.gs_sampler_info* %6)
  %9 = load %struct.gs_shader*, %struct.gs_shader** %3, align 8
  %10 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @device_samplerstate_create(i32 %11, %struct.gs_sampler_info* %6)
  store i32* %12, i32** %5, align 8
  %13 = load %struct.gs_shader*, %struct.gs_shader** %3, align 8
  %14 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @da_push_back(i32 %15, i32** %5)
  ret void
}

declare dso_local i32 @shader_sampler_convert(%struct.shader_sampler*, %struct.gs_sampler_info*) #1

declare dso_local i32* @device_samplerstate_create(i32, %struct.gs_sampler_info*) #1

declare dso_local i32 @da_push_back(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
