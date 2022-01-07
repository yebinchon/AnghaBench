; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_thread_control.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_thread_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { i64, i32 }

@CONTROL_FALSE = common dso_local global i32 0, align 4
@CONTROL_OK = common dso_local global i32 0, align 4
@AUDCLNT_SHAREMODE_EXCLUSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32, i8*)* @thread_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_control(%struct.ao* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wasapi_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.ao*, %struct.ao** %5, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 0
  %13 = load %struct.wasapi_state*, %struct.wasapi_state** %12, align 8
  store %struct.wasapi_state* %13, %struct.wasapi_state** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %52 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %17 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @CONTROL_FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @mp_from_utf8(i32* null, i8* %23)
  store i32* %24, i32** %9, align 8
  store i32* null, i32** %10, align 8
  br label %25

25:                                               ; preds = %39, %22
  %26 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %27 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @IAudioSessionControl_SetDisplayName(i32 %28, i32* %29, i32* null)
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @CoTaskMemFree(i32* %32)
  %34 = call i32 @SAFE_DESTROY(i32* %31, i32 %33)
  %35 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %36 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @IAudioSessionControl_GetDisplayName(i32 %37, i32** %10)
  br label %39

39:                                               ; preds = %25
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @wcscmp(i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %25, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @CoTaskMemFree(i32* %46)
  %48 = call i32 @SAFE_DESTROY(i32* %45, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @talloc_free(i32* %49)
  %51 = load i32, i32* @CONTROL_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %3
  %53 = load %struct.wasapi_state*, %struct.wasapi_state** %8, align 8
  %54 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.ao*, %struct.ao** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @thread_control_exclusive(%struct.ao* %59, i32 %60, i8* %61)
  br label %68

63:                                               ; preds = %52
  %64 = load %struct.ao*, %struct.ao** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @thread_control_shared(%struct.ao* %64, i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i32 [ %62, %58 ], [ %67, %63 ]
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %44, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32* @mp_from_utf8(i32*, i8*) #1

declare dso_local i32 @IAudioSessionControl_SetDisplayName(i32, i32*, i32*) #1

declare dso_local i32 @SAFE_DESTROY(i32*, i32) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IAudioSessionControl_GetDisplayName(i32, i32**) #1

declare dso_local i32 @wcscmp(i32*, i32*) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @thread_control_exclusive(%struct.ao*, i32, i8*) #1

declare dso_local i32 @thread_control_shared(%struct.ao*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
