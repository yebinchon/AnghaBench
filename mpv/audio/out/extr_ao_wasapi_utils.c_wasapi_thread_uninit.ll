; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_wasapi_thread_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_wasapi_thread_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Thread shutdown\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Thread uninit done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wasapi_thread_uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.wasapi_state*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = getelementptr inbounds %struct.ao, %struct.ao* %4, i32 0, i32 0
  %6 = load %struct.wasapi_state*, %struct.wasapi_state** %5, align 8
  store %struct.wasapi_state* %6, %struct.wasapi_state** %3, align 8
  %7 = load %struct.ao*, %struct.ao** %2, align 8
  %8 = call i32 @MP_DBG(%struct.ao* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %10 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %15 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IAudioClient_Stop(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %20 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @SAFE_RELEASE(i64 %21)
  %23 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %24 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @SAFE_RELEASE(i64 %25)
  %27 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %28 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @SAFE_RELEASE(i64 %29)
  %31 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %32 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @SAFE_RELEASE(i64 %33)
  %35 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %36 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @SAFE_RELEASE(i64 %37)
  %39 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %40 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @SAFE_RELEASE(i64 %41)
  %43 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %44 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @SAFE_RELEASE(i64 %45)
  %47 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %48 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %51 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @AvRevertMmThreadCharacteristics(i32 %52)
  %54 = call i32 @SAFE_DESTROY(i32 %49, i32 %53)
  %55 = load %struct.ao*, %struct.ao** %2, align 8
  %56 = call i32 @MP_DBG(%struct.ao* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MP_DBG(%struct.ao*, i8*) #1

declare dso_local i32 @IAudioClient_Stop(i64) #1

declare dso_local i32 @SAFE_RELEASE(i64) #1

declare dso_local i32 @SAFE_DESTROY(i32, i32) #1

declare dso_local i32 @AvRevertMmThreadCharacteristics(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
