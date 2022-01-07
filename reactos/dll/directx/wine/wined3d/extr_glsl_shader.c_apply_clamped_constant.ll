; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_apply_clamped_constant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_apply_clamped_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_vec4 = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i32, %struct.wined3d_vec4*)* @apply_clamped_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_clamped_constant(%struct.wined3d_gl_info* %0, i32 %1, %struct.wined3d_vec4* %2) #0 {
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_vec4*, align 8
  %7 = alloca [4 x float], align 16
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wined3d_vec4* %2, %struct.wined3d_vec4** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %96

11:                                               ; preds = %3
  %12 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %13 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %12, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = fcmp olt float %14, -1.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %29

17:                                               ; preds = %11
  %18 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %18, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = fcmp ogt float %20, 1.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %25 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi float [ 1.000000e+00, %22 ], [ %26, %23 ]
  br label %29

29:                                               ; preds = %27, %16
  %30 = phi float [ -1.000000e+00, %16 ], [ %28, %27 ]
  %31 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 0
  store float %30, float* %31, align 16
  %32 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %33 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %32, i32 0, i32 1
  %34 = load float, float* %33, align 4
  %35 = fcmp olt float %34, -1.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %49

37:                                               ; preds = %29
  %38 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %39 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fcmp ogt float %40, 1.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  %44 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %45 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi float [ 1.000000e+00, %42 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %36
  %50 = phi float [ -1.000000e+00, %36 ], [ %48, %47 ]
  %51 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 1
  store float %50, float* %51, align 4
  %52 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %53 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %52, i32 0, i32 2
  %54 = load float, float* %53, align 4
  %55 = fcmp olt float %54, -1.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %69

57:                                               ; preds = %49
  %58 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  %61 = fcmp ogt float %60, 1.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %67

63:                                               ; preds = %57
  %64 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %65 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %64, i32 0, i32 2
  %66 = load float, float* %65, align 4
  br label %67

67:                                               ; preds = %63, %62
  %68 = phi float [ 1.000000e+00, %62 ], [ %66, %63 ]
  br label %69

69:                                               ; preds = %67, %56
  %70 = phi float [ -1.000000e+00, %56 ], [ %68, %67 ]
  %71 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 2
  store float %70, float* %71, align 8
  %72 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %73 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %72, i32 0, i32 3
  %74 = load float, float* %73, align 4
  %75 = fcmp olt float %74, -1.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %89

77:                                               ; preds = %69
  %78 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %79 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %78, i32 0, i32 3
  %80 = load float, float* %79, align 4
  %81 = fcmp ogt float %80, 1.000000e+00
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %87

83:                                               ; preds = %77
  %84 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %6, align 8
  %85 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %84, i32 0, i32 3
  %86 = load float, float* %85, align 4
  br label %87

87:                                               ; preds = %83, %82
  %88 = phi float [ 1.000000e+00, %82 ], [ %86, %83 ]
  br label %89

89:                                               ; preds = %87, %76
  %90 = phi float [ -1.000000e+00, %76 ], [ %88, %87 ]
  %91 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 3
  store float %90, float* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 0
  %94 = call i32 @glUniform4fv(i32 %92, i32 1, float* %93)
  %95 = call i32 @GL_EXTCALL(i32 %94)
  br label %96

96:                                               ; preds = %89, %10
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
