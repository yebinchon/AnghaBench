; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_select_compute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_select_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_gl_info*, %struct.glsl_context_data* }
%struct.wined3d_gl_info = type { i32 }
%struct.glsl_context_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_state = type { i32 }
%struct.shader_glsl_priv = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Using GLSL program %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"glUseProgram\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_HULL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*, %struct.wined3d_state*)* @shader_glsl_select_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_select_compute(i8* %0, %struct.wined3d_context* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.glsl_context_data*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.shader_glsl_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 2
  %14 = load %struct.glsl_context_data*, %struct.glsl_context_data** %13, align 8
  store %struct.glsl_context_data* %14, %struct.glsl_context_data** %7, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 1
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.shader_glsl_priv*
  store %struct.shader_glsl_priv* %19, %struct.shader_glsl_priv** %9, align 8
  %20 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %21 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %26 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i32 [ %29, %24 ], [ 0, %30 ]
  store i32 %32, i32* %11, align 4
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %34 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %35 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %9, align 8
  %36 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %37 = call i32 @set_glsl_compute_shader_program(%struct.wined3d_context* %33, %struct.wined3d_state* %34, %struct.shader_glsl_priv* %35, %struct.glsl_context_data* %36)
  %38 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %39 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %44 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %47, %42 ], [ 0, %48 ]
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @glUseProgram(i32 %57)
  %59 = call i32 @GL_EXTCALL(i32 %58)
  %60 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %65 = shl i32 1, %64
  %66 = or i32 %63, %65
  %67 = load i32, i32* @WINED3D_SHADER_TYPE_GEOMETRY, align 4
  %68 = shl i32 1, %67
  %69 = or i32 %66, %68
  %70 = load i32, i32* @WINED3D_SHADER_TYPE_HULL, align 4
  %71 = shl i32 1, %70
  %72 = or i32 %69, %71
  %73 = load i32, i32* @WINED3D_SHADER_TYPE_DOMAIN, align 4
  %74 = shl i32 1, %73
  %75 = or i32 %72, %74
  %76 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %77 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  ret void
}

declare dso_local i32 @set_glsl_compute_shader_program(%struct.wined3d_context*, %struct.wined3d_state*, %struct.shader_glsl_priv*, %struct.glsl_context_data*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
