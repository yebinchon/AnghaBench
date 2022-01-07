; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_images.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@MAX_UNORDERED_ACCESS_VIEWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s_image%u\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Loading image %s on unit %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Load image bindings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader_reg_maps*)* @shader_glsl_load_images to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_images(%struct.wined3d_gl_info* %0, %struct.shader_glsl_priv* %1, i32 %2, %struct.wined3d_shader_reg_maps* %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_shader_reg_maps** %8, align 8
  %13 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @shader_glsl_get_prefix(i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %19 = call i64 @shader_glsl_use_layout_binding_qualifier(%struct.wined3d_gl_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %74

22:                                               ; preds = %4
  %23 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %24 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %23, i32 0, i32 0
  %25 = call %struct.wined3d_string_buffer* @string_buffer_get(i32* %24)
  store %struct.wined3d_string_buffer* %25, %struct.wined3d_string_buffer** %10, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %65, %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @MAX_UNORDERED_ACCESS_VIEWS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %65

41:                                               ; preds = %30
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %48 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @glGetUniformLocation(i32 %46, i32 %49)
  %51 = call i32 @GL_EXTCALL(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %65

55:                                               ; preds = %41
  %56 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %57 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @glUniform1i(i32 %61, i32 %62)
  %64 = call i32 @GL_EXTCALL(i32 %63)
  br label %65

65:                                               ; preds = %55, %54, %40
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %26

68:                                               ; preds = %26
  %69 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %71 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %70, i32 0, i32 0
  %72 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %73 = call i32 @string_buffer_release(i32* %71, %struct.wined3d_string_buffer* %72)
  br label %74

74:                                               ; preds = %68, %21
  ret void
}

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i64 @shader_glsl_use_layout_binding_qualifier(%struct.wined3d_gl_info*) #1

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32*) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i32) #1

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
