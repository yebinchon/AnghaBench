; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32, i32*, i32** }
%struct.TYPE_3__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.device_state*)* @device_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_state_init(i32* %0, %struct.device_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.device_state* %1, %struct.device_state** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @IDirect3DDevice9_GetDeviceCaps(i32* %9, %struct.TYPE_3__* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.device_state*, %struct.device_state** %5, align 8
  %20 = getelementptr inbounds %struct.device_state, %struct.device_state* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load %struct.device_state*, %struct.device_state** %5, align 8
  %23 = getelementptr inbounds %struct.device_state, %struct.device_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i32** @HeapAlloc(i32 %21, i32 0, i32 %27)
  %29 = load %struct.device_state*, %struct.device_state** %5, align 8
  %30 = getelementptr inbounds %struct.device_state, %struct.device_state* %29, i32 0, i32 2
  store i32** %28, i32*** %30, align 8
  %31 = load %struct.device_state*, %struct.device_state** %5, align 8
  %32 = getelementptr inbounds %struct.device_state, %struct.device_state* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = icmp ne i32** %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %16
  %36 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.device_state*, %struct.device_state** %5, align 8
  %41 = getelementptr inbounds %struct.device_state, %struct.device_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.device_state*, %struct.device_state** %5, align 8
  %46 = getelementptr inbounds %struct.device_state, %struct.device_state* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.device_state*, %struct.device_state** %5, align 8
  %56 = getelementptr inbounds %struct.device_state, %struct.device_state* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @D3D_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %35, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @IDirect3DDevice9_GetDeviceCaps(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32** @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
