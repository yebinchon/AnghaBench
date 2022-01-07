; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.shader_caps = type { float, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"Shader model %u.\0A\00", align 1
@wined3d_settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ARB_VERTEX_SHADER = common dso_local global i64 0, align 8
@ARB_FRAGMENT_SHADER = common dso_local global i64 0, align 8
@WINED3D_MAX_VS_CONSTS_F = common dso_local global i32 0, align 4
@WINED3D_MAX_PS_CONSTS_F = common dso_local global i32 0, align 4
@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@WINED3D_SHADER_CAP_VS_CLIPPING = common dso_local global i32 0, align 4
@WINED3D_SHADER_CAP_SRGB_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.shader_caps*)* @shader_glsl_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_get_caps(%struct.wined3d_gl_info* %0, %struct.shader_caps* %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.shader_caps*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store %struct.shader_caps* %1, %struct.shader_caps** %4, align 8
  %6 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %7 = call i32 @shader_glsl_get_shader_model(%struct.wined3d_gl_info* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 5), align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @min(i32 %10, i32 %11)
  %13 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %14 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 4), align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @min(i32 %15, i32 %16)
  %18 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %19 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %18, i32 0, i32 10
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 3), align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @min(i32 %20, i32 %21)
  %23 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %24 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 2), align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @min(i32 %25, i32 %26)
  %28 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %29 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 1), align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @min(i32 %30, i32 %31)
  %33 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %34 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 0), align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @min(i32 %35, i32 %36)
  %38 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %39 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %41 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @ARB_VERTEX_SHADER, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %2
  %48 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %49 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i8* [ %50, %47 ], [ null, %51 ]
  %54 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %55 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @ARB_FRAGMENT_SHADER, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %65 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i8* [ %66, %63 ], [ null, %67 ]
  %70 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %71 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @WINED3D_MAX_VS_CONSTS_F, align 4
  %73 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %74 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @min(i32 %72, i32 %76)
  %78 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %79 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @WINED3D_MAX_PS_CONSTS_F, align 4
  %81 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %82 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @min(i32 %80, i32 %84)
  %86 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %87 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %89 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %93 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp uge i32 %94, 4
  br i1 %95, label %96, label %100

96:                                               ; preds = %68
  %97 = load float, float* @FLT_MAX, align 4
  %98 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %99 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %98, i32 0, i32 0
  store float %97, float* %99, align 8
  br label %103

100:                                              ; preds = %68
  %101 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %102 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %101, i32 0, i32 0
  store float 1.024000e+03, float* %102, align 8
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i32, i32* @WINED3D_SHADER_CAP_VS_CLIPPING, align 4
  %105 = load i32, i32* @WINED3D_SHADER_CAP_SRGB_WRITE, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %108 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  ret void
}

declare dso_local i32 @shader_glsl_get_shader_model(%struct.wined3d_gl_info*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
