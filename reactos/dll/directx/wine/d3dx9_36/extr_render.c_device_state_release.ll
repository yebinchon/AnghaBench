; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_render.c_device_state_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_state*)* @device_state_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_state_release(%struct.device_state* %0) #0 {
  %2 = alloca %struct.device_state*, align 8
  %3 = alloca i32, align 4
  store %struct.device_state* %0, %struct.device_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.device_state*, %struct.device_state** %2, align 8
  %7 = getelementptr inbounds %struct.device_state, %struct.device_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.device_state*, %struct.device_state** %2, align 8
  %12 = getelementptr inbounds %struct.device_state, %struct.device_state* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.device_state*, %struct.device_state** %2, align 8
  %21 = getelementptr inbounds %struct.device_state, %struct.device_state* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @IDirect3DSurface9_Release(i64 %26)
  br label %28

28:                                               ; preds = %19, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.device_state*, %struct.device_state** %2, align 8
  %35 = getelementptr inbounds %struct.device_state, %struct.device_state* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = call i32 @HeapFree(i32 %33, i32 0, i64* %36)
  %38 = load %struct.device_state*, %struct.device_state** %2, align 8
  %39 = getelementptr inbounds %struct.device_state, %struct.device_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.device_state*, %struct.device_state** %2, align 8
  %44 = getelementptr inbounds %struct.device_state, %struct.device_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @IDirect3DSurface9_Release(i64 %45)
  br label %47

47:                                               ; preds = %42, %32
  ret void
}

declare dso_local i32 @IDirect3DSurface9_Release(i64) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
