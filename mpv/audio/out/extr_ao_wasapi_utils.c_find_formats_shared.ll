; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_find_formats_shared.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_find_formats_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Trying %s (shared) -> %s\0A\00", align 1
@AUDCLNT_E_UNSUPPORTED_FORMAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Closest match is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Fallback to mix format %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Error finding shared mode format: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.TYPE_4__*)* @find_formats_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_formats_shared(%struct.ao* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.wasapi_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.ao*, %struct.ao** %4, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load %struct.wasapi_state*, %struct.wasapi_state** %10, align 8
  store %struct.wasapi_state* %11, %struct.wasapi_state** %6, align 8
  %12 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  %13 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i64 @IAudioClient_IsFormatSupported(i32 %14, i32 %15, i32* %17, i32** %7)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.ao*, %struct.ao** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @waveformat_to_str(i32* %21)
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @mp_format_res_str(i64 %23)
  %25 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @AUDCLNT_E_UNSUPPORTED_FORMAT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @EXIT_ON_ERROR(i64 %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i64, i64* %8, align 8
  switch i64 %33, label %46 [
    i64 128, label %34
    i64 129, label %35
  ]

34:                                               ; preds = %32
  br label %63

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @waveformat_copy(%struct.TYPE_4__* %36, i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @CoTaskMemFree(i32* %39)
  %41 = load %struct.ao*, %struct.ao** %4, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @waveformat_to_str(i32* %43)
  %45 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %63

46:                                               ; preds = %32
  %47 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  %48 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IAudioClient_GetMixFormat(i32 %49, i32** %7)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @EXIT_ON_ERROR(i64 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @waveformat_copy(%struct.TYPE_4__* %53, i32* %54)
  %56 = load %struct.ao*, %struct.ao** %4, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @waveformat_to_str(i32* %58)
  %60 = call i32 (%struct.ao*, i8*, i32, ...) @MP_VERBOSE(%struct.ao* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @CoTaskMemFree(i32* %61)
  br label %63

63:                                               ; preds = %46, %35, %34
  store i32 1, i32* %3, align 4
  br label %69

64:                                               ; No predecessors!
  %65 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @mp_HRESULT_to_str(i64 %66)
  %68 = call i32 @MP_ERR(%struct.wasapi_state* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @IAudioClient_IsFormatSupported(i32, i32, i32*, i32**) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32, ...) #1

declare dso_local i32 @waveformat_to_str(i32*) #1

declare dso_local i32 @mp_format_res_str(i64) #1

declare dso_local i32 @EXIT_ON_ERROR(i64) #1

declare dso_local i32 @waveformat_copy(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i64 @IAudioClient_GetMixFormat(i32, i32**) #1

declare dso_local i32 @MP_ERR(%struct.wasapi_state*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
