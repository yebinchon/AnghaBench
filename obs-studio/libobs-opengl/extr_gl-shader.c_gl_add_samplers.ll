; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_samplers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_samplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i32 }
%struct.gl_shader_parser = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.shader_sampler* }
%struct.shader_sampler = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_shader*, %struct.gl_shader_parser*)* @gl_add_samplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_add_samplers(%struct.gs_shader* %0, %struct.gl_shader_parser* %1) #0 {
  %3 = alloca %struct.gs_shader*, align 8
  %4 = alloca %struct.gl_shader_parser*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shader_sampler*, align 8
  store %struct.gs_shader* %0, %struct.gs_shader** %3, align 8
  store %struct.gl_shader_parser* %1, %struct.gl_shader_parser** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %10 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %8, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %17 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.shader_sampler*, %struct.shader_sampler** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %20, i64 %21
  store %struct.shader_sampler* %22, %struct.shader_sampler** %6, align 8
  %23 = load %struct.gs_shader*, %struct.gs_shader** %3, align 8
  %24 = load %struct.shader_sampler*, %struct.shader_sampler** %6, align 8
  %25 = call i32 @gl_add_sampler(%struct.gs_shader* %23, %struct.shader_sampler* %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %7

29:                                               ; preds = %7
  ret void
}

declare dso_local i32 @gl_add_sampler(%struct.gs_shader*, %struct.shader_sampler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
