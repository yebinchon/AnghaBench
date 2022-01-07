; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_select.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, %struct.wined3d_gl_info*, %struct.glsl_context_data* }
%struct.wined3d_gl_info = type { i64* }
%struct.glsl_context_data = type { i64, %struct.glsl_shader_prog_link* }
%struct.glsl_shader_prog_link = type { i32, i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.wined3d_state = type { i32 }
%struct.shader_glsl_priv = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.wined3d_gl_info*, i32)* }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_gl_info*, i32)* }

@GL_FIXED_ONLY_ARB = common dso_local global i64 0, align 8
@ARB_COLOR_BUFFER_FLOAT = common dso_local global i64 0, align 8
@GL_CLAMP_VERTEX_COLOR_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glClampColorARB\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Vertex color clamp needs to be changed, but extension not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Using GLSL program %u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"glUseProgram\00", align 1
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*, %struct.wined3d_state*)* @shader_glsl_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_select(i8* %0, %struct.wined3d_context* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.glsl_context_data*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.shader_glsl_priv*, align 8
  %10 = alloca %struct.glsl_shader_prog_link*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 3
  %16 = load %struct.glsl_context_data*, %struct.glsl_context_data** %15, align 8
  store %struct.glsl_context_data* %16, %struct.glsl_context_data** %7, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 2
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %18, align 8
  store %struct.wined3d_gl_info* %19, %struct.wined3d_gl_info** %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.shader_glsl_priv*
  store %struct.shader_glsl_priv* %21, %struct.shader_glsl_priv** %9, align 8
  %22 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %9, align 8
  %23 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %25, align 8
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %28 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %29 = call i32 @use_vs(%struct.wined3d_state* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 %26(%struct.wined3d_gl_info* %27, i32 %32)
  %34 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %9, align 8
  %35 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %37, align 8
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %40 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %41 = call i32 @use_ps(%struct.wined3d_state* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 %38(%struct.wined3d_gl_info* %39, i32 %44)
  %46 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %47 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %46, i32 0, i32 1
  %48 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %47, align 8
  %49 = icmp ne %struct.glsl_shader_prog_link* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %3
  %51 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %52 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %51, i32 0, i32 1
  %53 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %52, align 8
  %54 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %55, %50 ], [ 0, %56 ]
  store i32 %58, i32* %13, align 4
  %59 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %60 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %61 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %9, align 8
  %62 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %63 = call i32 @set_glsl_shader_program(%struct.wined3d_context* %59, %struct.wined3d_state* %60, %struct.shader_glsl_priv* %61, %struct.glsl_context_data* %62)
  %64 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %65 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %64, i32 0, i32 1
  %66 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %65, align 8
  store %struct.glsl_shader_prog_link* %66, %struct.glsl_shader_prog_link** %10, align 8
  %67 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %68 = icmp ne %struct.glsl_shader_prog_link* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %57
  %70 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %71 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  %73 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %74 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  %77 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %78 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %83 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %84 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @context_enable_clip_distances(%struct.wined3d_context* %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %69
  br label %90

88:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  %89 = load i64, i64* @GL_FIXED_ONLY_ARB, align 8
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %88, %87
  %91 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %92 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %99 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %101 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @ARB_COLOR_BUFFER_FLOAT, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %96
  %108 = load i32, i32* @GL_CLAMP_VERTEX_COLOR_ARB, align 4
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @glClampColorARB(i32 %108, i64 %109)
  %111 = call i32 @GL_EXTCALL(i32 %110)
  %112 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %115

113:                                              ; preds = %96
  %114 = call i32 @FIXME(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %107
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @glUseProgram(i32 %123)
  %125 = call i32 @GL_EXTCALL(i32 %124)
  %126 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %127 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %128 = icmp ne %struct.glsl_shader_prog_link* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %131 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %134 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129, %122
  br label %138

138:                                              ; preds = %137, %116
  %139 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %140 = shl i32 1, %139
  %141 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %142 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  ret void
}

declare dso_local i32 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @set_glsl_shader_program(%struct.wined3d_context*, %struct.wined3d_state*, %struct.shader_glsl_priv*, %struct.glsl_context_data*) #1

declare dso_local i32 @context_enable_clip_distances(%struct.wined3d_context*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glClampColorARB(i32, i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
