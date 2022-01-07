; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_blitter_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_blitter_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { %struct.TYPE_2__*, %struct.wined3d_blitter* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_fb_state = type { i32 }
%struct.wined3d_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)* @arbfp_blitter_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arbfp_blitter_clear(%struct.wined3d_blitter* %0, %struct.wined3d_device* %1, i32 %2, %struct.wined3d_fb_state* %3, i32 %4, i32* %5, i32* %6, i32 %7, %struct.wined3d_color* %8, float %9, i32 %10) #0 {
  %12 = alloca %struct.wined3d_blitter*, align 8
  %13 = alloca %struct.wined3d_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_fb_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.wined3d_color*, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.wined3d_blitter*, align 8
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %12, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.wined3d_fb_state* %3, %struct.wined3d_fb_state** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.wined3d_color* %8, %struct.wined3d_color** %20, align 8
  store float %9, float* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %12, align 8
  %25 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %24, i32 0, i32 1
  %26 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %25, align 8
  store %struct.wined3d_blitter* %26, %struct.wined3d_blitter** %23, align 8
  %27 = icmp ne %struct.wined3d_blitter* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %11
  %29 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %23, align 8
  %30 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)*, i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)** %32, align 8
  %34 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %23, align 8
  %35 = load %struct.wined3d_device*, %struct.wined3d_device** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32*, i32** %17, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = load i32, i32* %19, align 4
  %42 = load %struct.wined3d_color*, %struct.wined3d_color** %20, align 8
  %43 = load float, float* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = call i32 %33(%struct.wined3d_blitter* %34, %struct.wined3d_device* %35, i32 %36, %struct.wined3d_fb_state* %37, i32 %38, i32* %39, i32* %40, i32 %41, %struct.wined3d_color* %42, float %43, i32 %44)
  br label %46

46:                                               ; preds = %28, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
