; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_depth_bias_scale.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_depth_bias_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_caps_gl_ctx = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32*, i32, i32, i32, i32 }
%struct.wined3d_d3d_info = type { i32 }

@WINED3D_GL_RES_TYPE_RB = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Testing depth bias scale for format %s.\0A\00", align 1
@WINED3D_NORMALIZED_DEPTH_BIAS = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_caps_gl_ctx*, %struct.wined3d_d3d_info*)* @init_format_depth_bias_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_format_depth_bias_scale(%struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_d3d_info* %1) #0 {
  %3 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %4 = alloca %struct.wined3d_d3d_info*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_format*, align 8
  store %struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_caps_gl_ctx** %3, align 8
  store %struct.wined3d_d3d_info* %1, %struct.wined3d_d3d_info** %4, align 8
  %8 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %8, i32 0, i32 0
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_gl_info* %10, %struct.wined3d_gl_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %79, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %11
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %18, i32 0, i32 1
  %20 = load %struct.wined3d_format*, %struct.wined3d_format** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %20, i64 %22
  store %struct.wined3d_format* %23, %struct.wined3d_format** %7, align 8
  %24 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %25 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @WINED3D_GL_RES_TYPE_RB, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %17
  %34 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %35 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @debug_d3dformat(i32 %36)
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %3, align 8
  %40 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %41 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @wined3d_adapter_find_polyoffset_scale(%struct.wined3d_caps_gl_ctx* %39, i32 %42)
  %44 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %45 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WINED3D_NORMALIZED_DEPTH_BIAS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %33
  %53 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %54 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WINED3DFMT_FLAG_FLOAT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %64 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = udiv i32 %65, 16777216
  store i32 %66, i32* %64, align 8
  br label %76

67:                                               ; preds = %52
  %68 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %69 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %73 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = udiv i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %67, %62
  br label %77

77:                                               ; preds = %76, %33
  br label %78

78:                                               ; preds = %77, %17
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %11

82:                                               ; preds = %11
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local i32 @wined3d_adapter_find_polyoffset_scale(%struct.wined3d_caps_gl_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
