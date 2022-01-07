; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_samplerstate_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_samplerstate_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_sampler_state = type { i32, i32* }
%struct.gs_sampler_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_sampler_state* @device_samplerstate_create(i32* %0, %struct.gs_sampler_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gs_sampler_info*, align 8
  %5 = alloca %struct.gs_sampler_state*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.gs_sampler_info* %1, %struct.gs_sampler_info** %4, align 8
  %6 = call %struct.gs_sampler_state* @bzalloc(i32 16)
  store %struct.gs_sampler_state* %6, %struct.gs_sampler_state** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %5, align 8
  %9 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %8, i32 0, i32 1
  store i32* %7, i32** %9, align 8
  %10 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %5, align 8
  %11 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %5, align 8
  %13 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %14 = call i32 @convert_sampler_info(%struct.gs_sampler_state* %12, %struct.gs_sampler_info* %13)
  %15 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %5, align 8
  ret %struct.gs_sampler_state* %15
}

declare dso_local %struct.gs_sampler_state* @bzalloc(i32) #1

declare dso_local i32 @convert_sampler_info(%struct.gs_sampler_state*, %struct.gs_sampler_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
