; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_fragment_implementation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_fragment_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_backend_ops = type { i32 }
%struct.fragment_pipeline = type { i32 }
%struct.wined3d_gl_info = type { i64* }

@glsl_shader_backend = common dso_local global %struct.wined3d_shader_backend_ops zeroinitializer, align 4
@ARB_FRAGMENT_SHADER = common dso_local global i64 0, align 8
@glsl_fragment_pipe = common dso_local global %struct.fragment_pipeline zeroinitializer, align 4
@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@arbfp_fragment_pipeline = common dso_local global %struct.fragment_pipeline zeroinitializer, align 4
@ATI_FRAGMENT_SHADER = common dso_local global i64 0, align 8
@atifs_fragment_pipeline = common dso_local global %struct.fragment_pipeline zeroinitializer, align 4
@NV_REGISTER_COMBINERS = common dso_local global i64 0, align 8
@NV_TEXTURE_SHADER2 = common dso_local global i64 0, align 8
@nvts_fragment_pipeline = common dso_local global %struct.fragment_pipeline zeroinitializer, align 4
@nvrc_fragment_pipeline = common dso_local global %struct.fragment_pipeline zeroinitializer, align 4
@ffp_fragment_pipeline = common dso_local global %struct.fragment_pipeline zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fragment_pipeline* (%struct.wined3d_gl_info*, %struct.wined3d_shader_backend_ops*)* @select_fragment_implementation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fragment_pipeline* @select_fragment_implementation(%struct.wined3d_gl_info* %0, %struct.wined3d_shader_backend_ops* %1) #0 {
  %3 = alloca %struct.fragment_pipeline*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_shader_backend_ops*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store %struct.wined3d_shader_backend_ops* %1, %struct.wined3d_shader_backend_ops** %5, align 8
  %6 = load %struct.wined3d_shader_backend_ops*, %struct.wined3d_shader_backend_ops** %5, align 8
  %7 = icmp eq %struct.wined3d_shader_backend_ops* %6, @glsl_shader_backend
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @ARB_FRAGMENT_SHADER, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store %struct.fragment_pipeline* @glsl_fragment_pipe, %struct.fragment_pipeline** %3, align 8
  br label %62

17:                                               ; preds = %8, %2
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.fragment_pipeline* @arbfp_fragment_pipeline, %struct.fragment_pipeline** %3, align 8
  br label %62

26:                                               ; preds = %17
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @ATI_FRAGMENT_SHADER, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store %struct.fragment_pipeline* @atifs_fragment_pipeline, %struct.fragment_pipeline** %3, align 8
  br label %62

35:                                               ; preds = %26
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %37 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NV_REGISTER_COMBINERS, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NV_TEXTURE_SHADER2, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store %struct.fragment_pipeline* @nvts_fragment_pipeline, %struct.fragment_pipeline** %3, align 8
  br label %62

52:                                               ; preds = %43, %35
  %53 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @NV_REGISTER_COMBINERS, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store %struct.fragment_pipeline* @nvrc_fragment_pipeline, %struct.fragment_pipeline** %3, align 8
  br label %62

61:                                               ; preds = %52
  store %struct.fragment_pipeline* @ffp_fragment_pipeline, %struct.fragment_pipeline** %3, align 8
  br label %62

62:                                               ; preds = %61, %60, %51, %34, %25, %16
  %63 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %3, align 8
  ret %struct.fragment_pipeline* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
