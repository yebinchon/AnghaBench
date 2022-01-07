; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_disable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32)* }
%struct.shader_arb_priv = type { i64, %struct.TYPE_8__*, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { i32 (%struct.wined3d_gl_info*, i64)* }
%struct.TYPE_5__ = type { i32 (%struct.wined3d_gl_info*, i64)* }

@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"glDisable(GL_FRAGMENT_PROGRAM_ARB)\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ARB_VERTEX_PROGRAM = common dso_local global i64 0, align 8
@GL_VERTEX_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"glDisable(GL_VERTEX_PROGRAM_ARB)\00", align 1
@ARB_COLOR_BUFFER_FLOAT = common dso_local global i64 0, align 8
@GL_CLAMP_VERTEX_COLOR_ARB = common dso_local global i32 0, align 4
@GL_FIXED_ONLY_ARB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"glClampColorARB\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_HULL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*)* @shader_arb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_disable(i8* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.shader_arb_priv*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %7 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %7, i32 0, i32 1
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  store %struct.wined3d_gl_info* %9, %struct.wined3d_gl_info** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.shader_arb_priv*
  store %struct.shader_arb_priv* %11, %struct.shader_arb_priv** %6, align 8
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %26 = call i32 %24(i32 %25)
  %27 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %6, align 8
  %29 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %19, %2
  %31 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %6, align 8
  %32 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.wined3d_gl_info*, i64)*, i32 (%struct.wined3d_gl_info*, i64)** %34, align 8
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %37 = load i64, i64* @FALSE, align 8
  %38 = call i32 %35(%struct.wined3d_gl_info* %36, i64 %37)
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %40 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @ARB_VERTEX_PROGRAM, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %30
  %47 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %6, align 8
  %48 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %50 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %55 = call i32 %53(i32 %54)
  %56 = call i32 @checkGLcall(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %46, %30
  %58 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %6, align 8
  %59 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32 (%struct.wined3d_gl_info*, i64)*, i32 (%struct.wined3d_gl_info*, i64)** %61, align 8
  %63 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %64 = load i64, i64* @FALSE, align 8
  %65 = call i32 %62(%struct.wined3d_gl_info* %63, i64 %64)
  %66 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %67 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @ARB_COLOR_BUFFER_FLOAT, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %57
  %74 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %6, align 8
  %75 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* @GL_CLAMP_VERTEX_COLOR_ARB, align 4
  %80 = load i32, i32* @GL_FIXED_ONLY_ARB, align 4
  %81 = call i32 @glClampColorARB(i32 %79, i32 %80)
  %82 = call i32 @GL_EXTCALL(i32 %81)
  %83 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i64, i64* @FALSE, align 8
  %85 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %6, align 8
  %86 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %78, %73, %57
  %88 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %91 = shl i32 1, %90
  %92 = or i32 %89, %91
  %93 = load i32, i32* @WINED3D_SHADER_TYPE_GEOMETRY, align 4
  %94 = shl i32 1, %93
  %95 = or i32 %92, %94
  %96 = load i32, i32* @WINED3D_SHADER_TYPE_HULL, align 4
  %97 = shl i32 1, %96
  %98 = or i32 %95, %97
  %99 = load i32, i32* @WINED3D_SHADER_TYPE_DOMAIN, align 4
  %100 = shl i32 1, %99
  %101 = or i32 %98, %100
  %102 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %103 = shl i32 1, %102
  %104 = or i32 %101, %103
  %105 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %106 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  ret void
}

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glClampColorARB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
