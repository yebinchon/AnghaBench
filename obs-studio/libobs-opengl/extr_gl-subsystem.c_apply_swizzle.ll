; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_apply_swizzle.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_apply_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_texture = type { i64, i32 }

@GS_A8 = common dso_local global i64 0, align 8
@GL_TEXTURE_SWIZZLE_R = common dso_local global i32 0, align 4
@GL_ONE = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_G = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_B = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_A = common dso_local global i32 0, align 4
@GL_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_texture*)* @apply_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_swizzle(%struct.gs_texture* %0) #0 {
  %2 = alloca %struct.gs_texture*, align 8
  store %struct.gs_texture* %0, %struct.gs_texture** %2, align 8
  %3 = load %struct.gs_texture*, %struct.gs_texture** %2, align 8
  %4 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @GS_A8, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.gs_texture*, %struct.gs_texture** %2, align 8
  %10 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GL_TEXTURE_SWIZZLE_R, align 4
  %13 = load i32, i32* @GL_ONE, align 4
  %14 = call i32 @gl_tex_param_i(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.gs_texture*, %struct.gs_texture** %2, align 8
  %16 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GL_TEXTURE_SWIZZLE_G, align 4
  %19 = load i32, i32* @GL_ONE, align 4
  %20 = call i32 @gl_tex_param_i(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.gs_texture*, %struct.gs_texture** %2, align 8
  %22 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GL_TEXTURE_SWIZZLE_B, align 4
  %25 = load i32, i32* @GL_ONE, align 4
  %26 = call i32 @gl_tex_param_i(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.gs_texture*, %struct.gs_texture** %2, align 8
  %28 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GL_TEXTURE_SWIZZLE_A, align 4
  %31 = load i32, i32* @GL_RED, align 4
  %32 = call i32 @gl_tex_param_i(i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @gl_tex_param_i(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
