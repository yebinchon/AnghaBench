; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_d3d.c_d3d11_create_standalone.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_d3d.c_d3d11_create_standalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVBufferRef = type { i32 }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }
%struct.hwcontext_create_dev_params = type { i32 }

@D3D_DRIVER_TYPE_HARDWARE = common dso_local global i32 0, align 4
@D3D11_CREATE_DEVICE_VIDEO_SUPPORT = common dso_local global i32 0, align 4
@D3D11_SDK_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to create D3D11 Device: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate AVHWDeviceContext.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.AVBufferRef* (%struct.mpv_global*, %struct.mp_log*, %struct.hwcontext_create_dev_params*)* @d3d11_create_standalone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.AVBufferRef* @d3d11_create_standalone(%struct.mpv_global* %0, %struct.mp_log* %1, %struct.hwcontext_create_dev_params* %2) #0 {
  %4 = alloca %struct.AVBufferRef*, align 8
  %5 = alloca %struct.mpv_global*, align 8
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.hwcontext_create_dev_params*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.AVBufferRef*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %5, align 8
  store %struct.mp_log* %1, %struct.mp_log** %6, align 8
  store %struct.hwcontext_create_dev_params* %2, %struct.hwcontext_create_dev_params** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = call i32 (...) @d3d_load_dlls()
  %12 = load i32, i32* @D3D_DRIVER_TYPE_HARDWARE, align 4
  %13 = load i32, i32* @D3D11_CREATE_DEVICE_VIDEO_SUPPORT, align 4
  %14 = load i32, i32* @D3D11_SDK_VERSION, align 4
  %15 = call i32 @d3d11_D3D11CreateDevice(i32* null, i32 %12, i32* null, i32 %13, i32* null, i32 0, i32 %14, i32** %8, i32* null, i32* null)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @mp_HRESULT_to_str(i32 %21)
  %23 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %4, align 8
  br label %36

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.AVBufferRef* @d3d11_wrap_device_ref(i32* %25)
  store %struct.AVBufferRef* %26, %struct.AVBufferRef** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ID3D11Device_Release(i32* %27)
  %29 = load %struct.AVBufferRef*, %struct.AVBufferRef** %10, align 8
  %30 = icmp ne %struct.AVBufferRef* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %33 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.AVBufferRef*, %struct.AVBufferRef** %10, align 8
  store %struct.AVBufferRef* %35, %struct.AVBufferRef** %4, align 8
  br label %36

36:                                               ; preds = %34, %19
  %37 = load %struct.AVBufferRef*, %struct.AVBufferRef** %4, align 8
  ret %struct.AVBufferRef* %37
}

declare dso_local i32 @d3d_load_dlls(...) #1

declare dso_local i32 @d3d11_D3D11CreateDevice(i32*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local %struct.AVBufferRef* @d3d11_wrap_device_ref(i32*) #1

declare dso_local i32 @ID3D11Device_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
