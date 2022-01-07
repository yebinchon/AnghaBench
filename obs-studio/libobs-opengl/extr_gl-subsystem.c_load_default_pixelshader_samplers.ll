; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_load_default_pixelshader_samplers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_load_default_pixelshader_samplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_device = type { %struct.gs_sampler_state** }
%struct.gs_sampler_state = type { i32 }
%struct.gs_shader = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.gs_sampler_state** }

@GS_MAX_TEXTURES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_device*, %struct.gs_shader*)* @load_default_pixelshader_samplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_default_pixelshader_samplers(%struct.gs_device* %0, %struct.gs_shader* %1) #0 {
  %3 = alloca %struct.gs_device*, align 8
  %4 = alloca %struct.gs_shader*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gs_sampler_state*, align 8
  store %struct.gs_device* %0, %struct.gs_device** %3, align 8
  store %struct.gs_shader* %1, %struct.gs_shader** %4, align 8
  %7 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %8 = icmp ne %struct.gs_shader* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %49

10:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %14 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %20 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.gs_sampler_state**, %struct.gs_sampler_state*** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.gs_sampler_state*, %struct.gs_sampler_state** %22, i64 %23
  %25 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %24, align 8
  store %struct.gs_sampler_state* %25, %struct.gs_sampler_state** %6, align 8
  %26 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %6, align 8
  %27 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %28 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %27, i32 0, i32 0
  %29 = load %struct.gs_sampler_state**, %struct.gs_sampler_state*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.gs_sampler_state*, %struct.gs_sampler_state** %29, i64 %30
  store %struct.gs_sampler_state* %26, %struct.gs_sampler_state** %31, align 8
  br label %32

32:                                               ; preds = %18
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %11

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @GS_MAX_TEXTURES, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %42 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %41, i32 0, i32 0
  %43 = load %struct.gs_sampler_state**, %struct.gs_sampler_state*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.gs_sampler_state*, %struct.gs_sampler_state** %43, i64 %44
  store %struct.gs_sampler_state* null, %struct.gs_sampler_state** %45, align 8
  br label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %36

49:                                               ; preds = %9, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
