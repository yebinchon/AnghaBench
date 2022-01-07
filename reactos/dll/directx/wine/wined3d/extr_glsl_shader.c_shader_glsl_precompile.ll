; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_precompile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_precompile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_4__, %struct.wined3d_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { i32 }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_shader*)* @shader_glsl_precompile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_precompile(i8* %0, %struct.wined3d_shader* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wined3d_shader*, align 8
  %5 = alloca %struct.wined3d_device*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wined3d_shader* %1, %struct.wined3d_shader** %4, align 8
  %7 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %7, i32 0, i32 1
  %9 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  store %struct.wined3d_device* %9, %struct.wined3d_device** %5, align 8
  %10 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WINED3D_SHADER_TYPE_COMPUTE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %19 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %18, i32* null, i32 0)
  store %struct.wined3d_context* %19, %struct.wined3d_context** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %22 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %23 = call i32 @shader_glsl_compile_compute_shader(i8* %20, %struct.wined3d_context* %21, %struct.wined3d_shader* %22)
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %25 = call i32 @context_release(%struct.wined3d_context* %24)
  br label %26

26:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @shader_glsl_compile_compute_shader(i8*, %struct.wined3d_context*, %struct.wined3d_shader*) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
