; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_create_device.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"No suitable Direct3D feature level found\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@D3D_DRIVER_TYPE_WARP = common dso_local global i32 0, align 4
@D3D_DRIVER_TYPE_HARDWARE = common dso_local global i32 0, align 4
@D3D11_CREATE_DEVICE_DEBUG = common dso_local global i32 0, align 4
@D3D_DRIVER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@D3D11_SDK_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32, i32, i32, i32, i32**)* @create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_device(%struct.mp_log* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32** %6, i32*** %15, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @get_feature_levels(i32 %20, i32 %21, i32** %16)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %7
  %26 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %27 = call i32 @mp_fatal(%struct.mp_log* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @E_FAIL, align 4
  store i32 %28, i32* %8, align 4
  br label %60

29:                                               ; preds = %7
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @D3D_DRIVER_TYPE_WARP, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @D3D_DRIVER_TYPE_HARDWARE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @D3D11_CREATE_DEVICE_DEBUG, align 4
  br label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %19, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @D3D_DRIVER_TYPE_UNKNOWN, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %18, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* %19, align 4
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @D3D11_SDK_VERSION, align 4
  %58 = load i32**, i32*** %15, align 8
  %59 = call i32 @pD3D11CreateDevice(i32* %45, i32 %53, i32* null, i32 %54, i32* %55, i32 %56, i32 %57, i32** %58, i32* null, i32* null)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %52, %25
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @get_feature_levels(i32, i32, i32**) #1

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*) #1

declare dso_local i32 @pD3D11CreateDevice(i32*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
