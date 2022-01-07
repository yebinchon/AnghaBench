; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_restore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32, i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.device_state*)* @device_state_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_state_restore(i32* %0, %struct.device_state* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.device_state*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.device_state* %1, %struct.device_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %47, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.device_state*, %struct.device_state** %4, align 8
  %9 = getelementptr inbounds %struct.device_state, %struct.device_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %6
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.device_state*, %struct.device_state** %4, align 8
  %16 = getelementptr inbounds %struct.device_state, %struct.device_state* %15, i32 0, i32 3
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @IDirect3DDevice9_SetRenderTarget(i32* %13, i32 %14, i32* %21)
  %23 = load %struct.device_state*, %struct.device_state** %4, align 8
  %24 = getelementptr inbounds %struct.device_state, %struct.device_state* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %12
  %32 = load %struct.device_state*, %struct.device_state** %4, align 8
  %33 = getelementptr inbounds %struct.device_state, %struct.device_state* %32, i32 0, i32 3
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @IDirect3DSurface9_Release(i32* %38)
  br label %40

40:                                               ; preds = %31, %12
  %41 = load %struct.device_state*, %struct.device_state** %4, align 8
  %42 = getelementptr inbounds %struct.device_state, %struct.device_state* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %6

50:                                               ; preds = %6
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.device_state*, %struct.device_state** %4, align 8
  %53 = getelementptr inbounds %struct.device_state, %struct.device_state* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @IDirect3DDevice9_SetDepthStencilSurface(i32* %51, i32* %54)
  %56 = load %struct.device_state*, %struct.device_state** %4, align 8
  %57 = getelementptr inbounds %struct.device_state, %struct.device_state* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.device_state*, %struct.device_state** %4, align 8
  %62 = getelementptr inbounds %struct.device_state, %struct.device_state* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @IDirect3DSurface9_Release(i32* %63)
  %65 = load %struct.device_state*, %struct.device_state** %4, align 8
  %66 = getelementptr inbounds %struct.device_state, %struct.device_state* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60, %50
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.device_state*, %struct.device_state** %4, align 8
  %70 = getelementptr inbounds %struct.device_state, %struct.device_state* %69, i32 0, i32 1
  %71 = call i32 @IDirect3DDevice9_SetViewport(i32* %68, i32* %70)
  ret void
}

declare dso_local i32 @IDirect3DDevice9_SetRenderTarget(i32*, i32, i32*) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetDepthStencilSurface(i32*, i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetViewport(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
