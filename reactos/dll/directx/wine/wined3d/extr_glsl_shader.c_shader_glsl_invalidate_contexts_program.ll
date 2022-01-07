; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_invalidate_contexts_program.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_invalidate_contexts_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i32, %struct.wined3d_context** }
%struct.wined3d_context = type { %struct.glsl_context_data* }
%struct.glsl_context_data = type { %struct.glsl_shader_prog_link* }
%struct.glsl_shader_prog_link = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*, %struct.glsl_shader_prog_link*)* @shader_glsl_invalidate_contexts_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_invalidate_contexts_program(%struct.wined3d_device* %0, %struct.glsl_shader_prog_link* %1) #0 {
  %3 = alloca %struct.wined3d_device*, align 8
  %4 = alloca %struct.glsl_shader_prog_link*, align 8
  %5 = alloca %struct.glsl_context_data*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %3, align 8
  store %struct.glsl_shader_prog_link* %1, %struct.glsl_shader_prog_link** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %15, i32 0, i32 1
  %17 = load %struct.wined3d_context**, %struct.wined3d_context*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.wined3d_context*, %struct.wined3d_context** %17, i64 %19
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %20, align 8
  store %struct.wined3d_context* %21, %struct.wined3d_context** %6, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 0
  %24 = load %struct.glsl_context_data*, %struct.glsl_context_data** %23, align 8
  store %struct.glsl_context_data* %24, %struct.glsl_context_data** %5, align 8
  %25 = load %struct.glsl_context_data*, %struct.glsl_context_data** %5, align 8
  %26 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %25, i32 0, i32 0
  %27 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %26, align 8
  %28 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %29 = icmp eq %struct.glsl_shader_prog_link* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %32 = call i32 @shader_glsl_invalidate_current_program(%struct.wined3d_context* %31)
  br label %33

33:                                               ; preds = %30, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local i32 @shader_glsl_invalidate_current_program(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
