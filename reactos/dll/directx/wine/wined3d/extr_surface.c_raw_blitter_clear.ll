; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_raw_blitter_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_raw_blitter_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { %struct.TYPE_2__*, %struct.wined3d_blitter* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_fb_state = type { i32 }
%struct.wined3d_color = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"No blitter to handle clear.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Forwarding to blitter %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)* @raw_blitter_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_blitter_clear(%struct.wined3d_blitter* %0, %struct.wined3d_device* %1, i32 %2, %struct.wined3d_fb_state* %3, i32 %4, i32* %5, i32* %6, i32 %7, %struct.wined3d_color* %8, float %9, i32 %10) #0 {
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
  br i1 %27, label %30, label %28

28:                                               ; preds = %11
  %29 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %50

30:                                               ; preds = %11
  %31 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %23, align 8
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_blitter* %31)
  %33 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %23, align 8
  %34 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)*, i32 (%struct.wined3d_blitter*, %struct.wined3d_device*, i32, %struct.wined3d_fb_state*, i32, i32*, i32*, i32, %struct.wined3d_color*, float, i32)** %36, align 8
  %38 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %23, align 8
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = load i32, i32* %19, align 4
  %46 = load %struct.wined3d_color*, %struct.wined3d_color** %20, align 8
  %47 = load float, float* %21, align 4
  %48 = load i32, i32* %22, align 4
  %49 = call i32 %37(%struct.wined3d_blitter* %38, %struct.wined3d_device* %39, i32 %40, %struct.wined3d_fb_state* %41, i32 %42, i32* %43, i32* %44, i32 %45, %struct.wined3d_color* %46, float %47, i32 %48)
  br label %50

50:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_blitter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
