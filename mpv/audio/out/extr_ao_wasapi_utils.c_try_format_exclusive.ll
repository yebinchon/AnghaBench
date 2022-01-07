; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_try_format_exclusive.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_try_format_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AUDCLNT_SHAREMODE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Trying %s (exclusive) -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.TYPE_3__*)* @try_format_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_format_exclusive(%struct.ao* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.wasapi_state*, align 8
  %6 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.ao*, %struct.ao** %3, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 0
  %9 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  store %struct.wasapi_state* %9, %struct.wasapi_state** %5, align 8
  %10 = load %struct.wasapi_state*, %struct.wasapi_state** %5, align 8
  %11 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @IAudioClient_IsFormatSupported(i32 %12, i32 %13, i32* %15, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ao*, %struct.ao** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @waveformat_to_str(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mp_format_res_str(i32 %21)
  %23 = call i32 @MP_VERBOSE(%struct.ao* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SUCCEEDED(i32 %24)
  ret i32 %25
}

declare dso_local i32 @IAudioClient_IsFormatSupported(i32, i32, i32*, i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32, i32) #1

declare dso_local i32 @waveformat_to_str(i32*) #1

declare dso_local i32 @mp_format_res_str(i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
