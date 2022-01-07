; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_fragment_pipe_get_emul_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_fragment_pipe_get_emul_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i64* }

@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@GL_EXT_EMUL_ARB_MULTITEXTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*)* @glsl_fragment_pipe_get_emul_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glsl_fragment_pipe_get_emul_mask(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  %4 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %5 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @GL_EXT_EMUL_ARB_MULTITEXTURE, align 4
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
