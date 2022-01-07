; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_compute_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_compute_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader = type { %struct.glsl_shader_private* }
%struct.glsl_shader_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Failed to find GLSL program for compute shader %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to compile compute shader %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*)* @find_glsl_compute_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_glsl_compute_shader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.glsl_shader_private*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  %9 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %9, i32 0, i32 0
  %11 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %12 = icmp ne %struct.glsl_shader_private* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %15 = call i32 @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.wined3d_shader* %14)
  %16 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %18 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %19 = call i32 @shader_glsl_compile_compute_shader(%struct.shader_glsl_priv* %16, %struct.wined3d_context* %17, %struct.wined3d_shader* %18)
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %24 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_shader* %23)
  store i32 0, i32* %4, align 4
  br label %37

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %27, i32 0, i32 0
  %29 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %28, align 8
  store %struct.glsl_shader_private* %29, %struct.glsl_shader_private** %8, align 8
  %30 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %8, align 8
  %31 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %22
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @WARN(i8*, %struct.wined3d_shader*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_glsl_compile_compute_shader(%struct.shader_glsl_priv*, %struct.wined3d_context*, %struct.wined3d_shader*) #1

declare dso_local i32 @ERR(i8*, %struct.wined3d_shader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
