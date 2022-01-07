; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_color_key_arbfp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_color_key_arbfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_device*, %struct.wined3d_gl_info* }
%struct.wined3d_device = type { %struct.shader_arb_priv*, i32* }
%struct.shader_arb_priv = type { i32*, i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_texture** }
%struct.wined3d_texture = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_color = type { i32 }

@arb_program_shader_backend = common dso_local global i32 0, align 4
@ARB_FFP_CONST_COLOR_KEY_LOW = common dso_local global i64 0, align 8
@ARB_FFP_CONST_COLOR_KEY_HIGH = common dso_local global i64 0, align 8
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_COLOR_KEY_LOW, &float_key[0].r)\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_COLOR_KEY_HIGH, &float_key[1].r)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @color_key_arbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_key_arbfp(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_texture*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca [2 x %struct.wined3d_color], align 4
  %11 = alloca %struct.shader_arb_priv*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %12, i32 0, i32 0
  %14 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %13, align 8
  %15 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %14, i64 0
  %16 = load %struct.wined3d_texture*, %struct.wined3d_texture** %15, align 8
  store %struct.wined3d_texture* %16, %struct.wined3d_texture** %7, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 1
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %18, align 8
  store %struct.wined3d_gl_info* %19, %struct.wined3d_gl_info** %8, align 8
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 0
  %22 = load %struct.wined3d_device*, %struct.wined3d_device** %21, align 8
  store %struct.wined3d_device* %22, %struct.wined3d_device** %9, align 8
  %23 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %24 = icmp ne %struct.wined3d_texture* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %82

26:                                               ; preds = %3
  %27 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %28 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, @arb_program_shader_backend
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %33 = call i64 @use_ps(%struct.wined3d_state* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %82

36:                                               ; preds = %31
  %37 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %38 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %37, i32 0, i32 0
  %39 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %38, align 8
  store %struct.shader_arb_priv* %39, %struct.shader_arb_priv** %11, align 8
  %40 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %41 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @ARB_FFP_CONST_COLOR_KEY_LOW, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 1, i32* %44, align 4
  %45 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %46 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @ARB_FFP_CONST_COLOR_KEY_HIGH, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 1, i32* %49, align 4
  %50 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %51 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* @ARB_FFP_CONST_COLOR_KEY_HIGH, align 8
  %54 = add i64 %53, 1
  %55 = call i32 @max(i32 %52, i64 %54)
  %56 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %57 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %36, %26
  %59 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %60 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %64 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds [2 x %struct.wined3d_color], [2 x %struct.wined3d_color]* %10, i64 0, i64 0
  %67 = call i32 @wined3d_format_get_float_color_key(i32 %62, i32* %65, %struct.wined3d_color* %66)
  %68 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %69 = load i64, i64* @ARB_FFP_CONST_COLOR_KEY_LOW, align 8
  %70 = getelementptr inbounds [2 x %struct.wined3d_color], [2 x %struct.wined3d_color]* %10, i64 0, i64 0
  %71 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %70, i32 0, i32 0
  %72 = call i32 @glProgramEnvParameter4fvARB(i32 %68, i64 %69, i32* %71)
  %73 = call i32 @GL_EXTCALL(i32 %72)
  %74 = call i32 @checkGLcall(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %76 = load i64, i64* @ARB_FFP_CONST_COLOR_KEY_HIGH, align 8
  %77 = getelementptr inbounds [2 x %struct.wined3d_color], [2 x %struct.wined3d_color]* %10, i64 0, i64 1
  %78 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %77, i32 0, i32 0
  %79 = call i32 @glProgramEnvParameter4fvARB(i32 %75, i64 %76, i32* %78)
  %80 = call i32 @GL_EXTCALL(i32 %79)
  %81 = call i32 @checkGLcall(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %58, %35, %25
  ret void
}

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @wined3d_format_get_float_color_key(i32, i32*, %struct.wined3d_color*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glProgramEnvParameter4fvARB(i32, i64, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
