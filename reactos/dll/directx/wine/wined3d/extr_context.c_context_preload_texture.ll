; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_preload_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_preload_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { i32**, %struct.wined3d_texture** }
%struct.wined3d_texture = type { i32 }

@WINED3D_SAMP_SRGB_TEXTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @context_preload_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_preload_texture(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %9 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %8, i32 0, i32 1
  %10 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %10, i64 %12
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  store %struct.wined3d_texture* %14, %struct.wined3d_texture** %7, align 8
  %15 = icmp ne %struct.wined3d_texture* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %20 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @WINED3D_SAMP_SRGB_TEXTURE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wined3d_texture_load(%struct.wined3d_texture* %18, %struct.wined3d_context* %19, i32 %29)
  br label %31

31:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @wined3d_texture_load(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
