; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_capture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32, i32*, i32**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.device_state*)* @device_state_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_state_capture(i32* %0, %struct.device_state* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.device_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.device_state* %1, %struct.device_state** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.device_state*, %struct.device_state** %4, align 8
  %9 = getelementptr inbounds %struct.device_state, %struct.device_state* %8, i32 0, i32 3
  %10 = call i32 @IDirect3DDevice9_GetViewport(i32* %7, i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.device_state*, %struct.device_state** %4, align 8
  %14 = getelementptr inbounds %struct.device_state, %struct.device_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.device_state*, %struct.device_state** %4, align 8
  %21 = getelementptr inbounds %struct.device_state, %struct.device_state* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = call i32 @IDirect3DDevice9_GetRenderTarget(i32* %18, i32 %19, i32** %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load %struct.device_state*, %struct.device_state** %4, align 8
  %32 = getelementptr inbounds %struct.device_state, %struct.device_state* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.device_state*, %struct.device_state** %4, align 8
  %44 = getelementptr inbounds %struct.device_state, %struct.device_state* %43, i32 0, i32 1
  %45 = call i32 @IDirect3DDevice9_GetDepthStencilSurface(i32* %42, i32** %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.device_state*, %struct.device_state** %4, align 8
  %51 = getelementptr inbounds %struct.device_state, %struct.device_state* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @IDirect3DDevice9_GetViewport(i32*, i32*) #1

declare dso_local i32 @IDirect3DDevice9_GetRenderTarget(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9_GetDepthStencilSurface(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
