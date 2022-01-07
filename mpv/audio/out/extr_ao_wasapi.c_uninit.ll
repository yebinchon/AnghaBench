; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Uninit wasapi\0A\00", align 1
@WASAPI_THREAD_SHUTDOWN = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [94 x i8] c"Unexpected return value from WaitForSingleObject while waiting for audio thread to terminate\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Uninit wasapi done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.wasapi_state*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = call i32 @MP_DBG(%struct.ao* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ao*, %struct.ao** %2, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load %struct.wasapi_state*, %struct.wasapi_state** %7, align 8
  store %struct.wasapi_state* %8, %struct.wasapi_state** %3, align 8
  %9 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %10 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ao*, %struct.ao** %2, align 8
  %15 = load i32, i32* @WASAPI_THREAD_SHUTDOWN, align 4
  %16 = call i32 @set_thread_state(%struct.ao* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %19 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %24 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @INFINITE, align 4
  %27 = call i64 @WaitForSingleObject(i64 %25, i32 %26)
  %28 = load i64, i64* @WAIT_OBJECT_0, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.ao*, %struct.ao** %2, align 8
  %32 = call i32 @MP_ERR(%struct.ao* %31, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %22, %17
  %34 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %35 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %38 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @CloseHandle(i64 %39)
  %41 = call i32 @SAFE_DESTROY(i64 %36, i32 %40)
  %42 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %43 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %46 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @CloseHandle(i64 %47)
  %49 = call i32 @SAFE_DESTROY(i64 %44, i32 %48)
  %50 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %51 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %54 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @CloseHandle(i64 %55)
  %57 = call i32 @SAFE_DESTROY(i64 %52, i32 %56)
  %58 = load %struct.ao*, %struct.ao** %2, align 8
  %59 = call i32 @wasapi_change_uninit(%struct.ao* %58)
  %60 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %61 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @talloc_free(i32 %62)
  %64 = call i32 (...) @CoUninitialize()
  %65 = load %struct.ao*, %struct.ao** %2, align 8
  %66 = call i32 @MP_DBG(%struct.ao* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MP_DBG(%struct.ao*, i8*) #1

declare dso_local i32 @set_thread_state(%struct.ao*, i32) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

declare dso_local i32 @SAFE_DESTROY(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @wasapi_change_uninit(%struct.ao*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
