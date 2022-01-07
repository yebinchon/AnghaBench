; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_thread_resume.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_thread_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Thread Resume\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"IAudioClient_Start returned %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @thread_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_resume(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.wasapi_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  store %struct.wasapi_state* %7, %struct.wasapi_state** %3, align 8
  %8 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %9 = call i32 @MP_DBG(%struct.wasapi_state* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = call i32 @thread_reset(%struct.ao* %10)
  %12 = load %struct.ao*, %struct.ao** %2, align 8
  %13 = call i32 @thread_feed(%struct.ao* %12)
  %14 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %15 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IAudioClient_Start(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mp_HRESULT_to_str(i32 %23)
  %25 = call i32 @MP_ERR(%struct.wasapi_state* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @MP_DBG(%struct.wasapi_state*, i8*) #1

declare dso_local i32 @thread_reset(%struct.ao*) #1

declare dso_local i32 @thread_feed(%struct.ao*) #1

declare dso_local i32 @IAudioClient_Start(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.wasapi_state*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
