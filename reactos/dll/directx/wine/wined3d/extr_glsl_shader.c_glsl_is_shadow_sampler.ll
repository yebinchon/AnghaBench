; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_is_shadow_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_is_shadow_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wined3d_shader_version }
%struct.wined3d_shader_version = type { i32, i64 }
%struct.ps_compile_args = type { i32 }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, %struct.ps_compile_args*, i32, i32)* @glsl_is_shadow_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glsl_is_shadow_sampler(%struct.wined3d_shader* %0, %struct.ps_compile_args* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_shader*, align 8
  %7 = alloca %struct.ps_compile_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_shader_version*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %6, align 8
  store %struct.ps_compile_args* %1, %struct.ps_compile_args** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.wined3d_shader_version* %13, %struct.wined3d_shader_version** %10, align 8
  %14 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %10, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %4
  %27 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %10, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.ps_compile_args*, %struct.ps_compile_args** %7, align 8
  %34 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %32, %26
  %41 = phi i1 [ false, %26 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
