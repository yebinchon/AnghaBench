; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_samplers_range.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_samplers_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s_sampler%u\00", align 1
@WINED3D_UNMAPPED_STAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Trying to load sampler %s on unsupported unit %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Loading sampler %s on unit %u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Load sampler bindings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.shader_glsl_priv*, i32, i8*, i32, i32, i32*)* @shader_glsl_load_samplers_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_samplers_range(%struct.wined3d_gl_info* %0, %struct.shader_glsl_priv* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.shader_glsl_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.wined3d_string_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %8, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %9, align 8
  %20 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %19, i32 0, i32 0
  %21 = call %struct.wined3d_string_buffer* @string_buffer_get(i32* %20)
  store %struct.wined3d_string_buffer* %21, %struct.wined3d_string_buffer** %15, align 8
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %83, %7
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %86

26:                                               ; preds = %22
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %33 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @glGetUniformLocation(i32 %31, i32 %34)
  %36 = call i32 @GL_EXTCALL(i32 %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %83

40:                                               ; preds = %26
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %16, align 4
  %47 = add i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  br label %55

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add i32 %52, %53
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i32 [ %50, %43 ], [ %54, %51 ]
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @WINED3D_UNMAPPED_STAGE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %63 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp uge i32 %61, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60, %55
  %68 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %69 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  br label %83

73:                                               ; preds = %60
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %75 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @glUniform1i(i32 %79, i32 %80)
  %82 = call i32 @GL_EXTCALL(i32 %81)
  br label %83

83:                                               ; preds = %73, %67, %39
  %84 = load i32, i32* %16, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %22

86:                                               ; preds = %22
  %87 = call i32 @checkGLcall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %9, align 8
  %89 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %88, i32 0, i32 0
  %90 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %91 = call i32 @string_buffer_release(i32* %89, %struct.wined3d_string_buffer* %90)
  ret void
}

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32*) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @string_buffer_release(i32*, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
