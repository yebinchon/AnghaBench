; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_init_volume_control.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_init_volume_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wasapi_state = type { i64, i32, i32, i64, i32, i32 }

@AUDCLNT_SHAREMODE_EXCLUSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Activating pEndpointVolume interface\0A\00", align 1
@IID_IAudioEndpointVolume = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"IAudioEndpointVolume::QueryHardwareSupport\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"IAudioClient::Initialize pAudioVolume\0A\00", align 1
@IID_ISimpleAudioVolume = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Error setting up volume control: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wasapi_state*)* @init_volume_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_volume_control(%struct.wasapi_state* %0) #0 {
  %2 = alloca %struct.wasapi_state*, align 8
  %3 = alloca i32, align 4
  store %struct.wasapi_state* %0, %struct.wasapi_state** %2, align 8
  %4 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %5 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %11 = call i32 @MP_DBG(%struct.wasapi_state* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %13 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLSCTX_ALL, align 4
  %16 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %17 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %16, i32 0, i32 2
  %18 = bitcast i32* %17 to i8**
  %19 = call i32 @IMMDeviceActivator_Activate(i32 %14, i32* @IID_IAudioEndpointVolume, i32 %15, i32* null, i8** %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @EXIT_ON_ERROR(i32 %20)
  %22 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %23 = call i32 @MP_DBG(%struct.wasapi_state* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %25 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %28 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %27, i32 0, i32 3
  %29 = call i32 @IAudioEndpointVolume_QueryHardwareSupport(i32 %26, i64* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @EXIT_ON_ERROR(i32 %30)
  br label %44

32:                                               ; preds = %1
  %33 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %34 = call i32 @MP_DBG(%struct.wasapi_state* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %36 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %39 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to i8**
  %41 = call i32 @IAudioClient_GetService(i32 %37, i32* @IID_ISimpleAudioVolume, i8** %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @EXIT_ON_ERROR(i32 %42)
  br label %44

44:                                               ; preds = %32, %9
  br label %60

45:                                               ; No predecessors!
  %46 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %47 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %49 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @SAFE_RELEASE(i32 %50)
  %52 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %53 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @SAFE_RELEASE(i32 %54)
  %56 = load %struct.wasapi_state*, %struct.wasapi_state** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @mp_HRESULT_to_str(i32 %57)
  %59 = call i32 @MP_WARN(%struct.wasapi_state* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @MP_DBG(%struct.wasapi_state*, i8*) #1

declare dso_local i32 @IMMDeviceActivator_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @EXIT_ON_ERROR(i32) #1

declare dso_local i32 @IAudioEndpointVolume_QueryHardwareSupport(i32, i64*) #1

declare dso_local i32 @IAudioClient_GetService(i32, i32*, i8**) #1

declare dso_local i32 @SAFE_RELEASE(i32) #1

declare dso_local i32 @MP_WARN(%struct.wasapi_state*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
