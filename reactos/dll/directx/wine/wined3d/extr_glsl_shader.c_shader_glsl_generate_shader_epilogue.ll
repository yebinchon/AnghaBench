; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_shader_epilogue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_shader_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_context = type { %struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, %struct.shader_glsl_ctx_priv* }
%struct.wined3d_shader = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.shader_glsl_ctx_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unhandled shader type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_context*)* @shader_glsl_generate_shader_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_shader_epilogue(%struct.wined3d_shader_context* %0) #0 {
  %2 = alloca %struct.wined3d_shader_context*, align 8
  %3 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca %struct.wined3d_shader*, align 8
  store %struct.wined3d_shader_context* %0, %struct.wined3d_shader_context** %2, align 8
  %7 = load %struct.wined3d_shader_context*, %struct.wined3d_shader_context** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %7, i32 0, i32 3
  %9 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %8, align 8
  store %struct.shader_glsl_ctx_priv* %9, %struct.shader_glsl_ctx_priv** %3, align 8
  %10 = load %struct.wined3d_shader_context*, %struct.wined3d_shader_context** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %10, i32 0, i32 2
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %4, align 8
  %13 = load %struct.wined3d_shader_context*, %struct.wined3d_shader_context** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %13, i32 0, i32 1
  %15 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  store %struct.wined3d_string_buffer* %15, %struct.wined3d_string_buffer** %5, align 8
  %16 = load %struct.wined3d_shader_context*, %struct.wined3d_shader_context** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %16, i32 0, i32 0
  %18 = load %struct.wined3d_shader*, %struct.wined3d_shader** %17, align 8
  store %struct.wined3d_shader* %18, %struct.wined3d_shader** %6, align 8
  %19 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %49 [
    i32 129, label %24
    i32 128, label %32
    i32 131, label %40
    i32 130, label %48
    i32 132, label %48
  ]

24:                                               ; preds = %1
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %26 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %27 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %28 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %3, align 8
  %29 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @shader_glsl_generate_ps_epilogue(%struct.wined3d_gl_info* %25, %struct.wined3d_string_buffer* %26, %struct.wined3d_shader* %27, i32 %30)
  br label %56

32:                                               ; preds = %1
  %33 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %35 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %36 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %3, align 8
  %37 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @shader_glsl_generate_vs_epilogue(%struct.wined3d_gl_info* %33, %struct.wined3d_string_buffer* %34, %struct.wined3d_shader* %35, i32 %38)
  br label %56

40:                                               ; preds = %1
  %41 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %43 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %44 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %3, align 8
  %45 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @shader_glsl_generate_ds_epilogue(%struct.wined3d_gl_info* %41, %struct.wined3d_string_buffer* %42, %struct.wined3d_shader* %43, i32 %46)
  br label %56

48:                                               ; preds = %1, %1
  br label %56

49:                                               ; preds = %1
  %50 = load %struct.wined3d_shader*, %struct.wined3d_shader** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %48, %40, %32, %24
  ret void
}

declare dso_local i32 @shader_glsl_generate_ps_epilogue(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, i32) #1

declare dso_local i32 @shader_glsl_generate_vs_epilogue(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, i32) #1

declare dso_local i32 @shader_glsl_generate_ds_epilogue(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
