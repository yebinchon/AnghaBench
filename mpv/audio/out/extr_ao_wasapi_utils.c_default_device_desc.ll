; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_default_device_desc.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_default_device_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_desc = type { i32 }
%struct.enumerator = type { i32, i32 }

@eRender = common dso_local global i32 0, align 4
@eMultimedia = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error from GetDefaultAudioEndpoint: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_desc* (%struct.enumerator*)* @default_device_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_desc* @default_device_desc(%struct.enumerator* %0) #0 {
  %2 = alloca %struct.device_desc*, align 8
  %3 = alloca %struct.enumerator*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_desc*, align 8
  store %struct.enumerator* %0, %struct.enumerator** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.enumerator*, %struct.enumerator** %3, align 8
  %8 = getelementptr inbounds %struct.enumerator, %struct.enumerator* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @eRender, align 4
  %11 = load i32, i32* @eMultimedia, align 4
  %12 = call i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32 %9, i32 %10, i32 %11, i32** %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.enumerator*, %struct.enumerator** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @mp_HRESULT_to_str(i32 %18)
  %20 = call i32 @MP_ERR(%struct.enumerator* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.device_desc* null, %struct.device_desc** %2, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.enumerator*, %struct.enumerator** %3, align 8
  %23 = getelementptr inbounds %struct.enumerator, %struct.enumerator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.device_desc* @get_device_desc(i32 %24, i32* %25)
  store %struct.device_desc* %26, %struct.device_desc** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @SAFE_RELEASE(i32* %27)
  %29 = load %struct.device_desc*, %struct.device_desc** %6, align 8
  store %struct.device_desc* %29, %struct.device_desc** %2, align 8
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.device_desc*, %struct.device_desc** %2, align 8
  ret %struct.device_desc* %31
}

declare dso_local i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.enumerator*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local %struct.device_desc* @get_device_desc(i32, i32*) #1

declare dso_local i32 @SAFE_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
