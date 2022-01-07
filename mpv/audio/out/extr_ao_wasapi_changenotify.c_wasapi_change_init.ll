; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_changenotify.c_wasapi_change_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_changenotify.c_wasapi_change_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { i32, %struct.change_notify }
%struct.change_notify = type { i32, i32, %struct.TYPE_2__, i32, %struct.ao* }
%struct.TYPE_2__ = type { i32* }

@CLSID_MMDeviceEnumerator = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@IID_IMMDeviceEnumerator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Monitoring for hotplug events\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Monitoring changes in device %ls\0A\00", align 1
@sIMMNotificationClientVtbl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Error setting up device change monitoring: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wasapi_change_init(%struct.ao* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wasapi_state*, align 8
  %7 = alloca %struct.change_notify*, align 8
  %8 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ao*, %struct.ao** %4, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load %struct.wasapi_state*, %struct.wasapi_state** %10, align 8
  store %struct.wasapi_state* %11, %struct.wasapi_state** %6, align 8
  %12 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  %13 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %12, i32 0, i32 1
  store %struct.change_notify* %13, %struct.change_notify** %7, align 8
  %14 = load i32, i32* @CLSCTX_ALL, align 4
  %15 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %16 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to i8**
  %18 = call i32 @CoCreateInstance(i32* @CLSID_MMDeviceEnumerator, i32* null, i32 %14, i32* @IID_IMMDeviceEnumerator, i8** %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @EXIT_ON_ERROR(i32 %19)
  %21 = load %struct.ao*, %struct.ao** %4, align 8
  %22 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %23 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %22, i32 0, i32 4
  store %struct.ao* %21, %struct.ao** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %26 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.ao*, %struct.ao** %4, align 8
  %31 = call i32 @MP_DBG(%struct.ao* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  %34 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %37 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ao*, %struct.ao** %4, align 8
  %39 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %40 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @MP_VERBOSE(%struct.ao* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %32, %29
  %44 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %45 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* @sIMMNotificationClientVtbl, i32** %46, align 8
  %47 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %48 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.change_notify*, %struct.change_notify** %7, align 8
  %51 = bitcast %struct.change_notify* %50 to i32*
  %52 = call i32 @IMMDeviceEnumerator_RegisterEndpointNotificationCallback(i32 %49, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @EXIT_ON_ERROR(i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; No predecessors!
  %57 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @mp_HRESULT_to_str(i32 %58)
  %60 = call i32 @MP_ERR(%struct.wasapi_state* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.ao*, %struct.ao** %4, align 8
  %62 = call i32 @wasapi_change_uninit(%struct.ao* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %43
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @EXIT_ON_ERROR(i32) #1

declare dso_local i32 @MP_DBG(%struct.ao*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32) #1

declare dso_local i32 @IMMDeviceEnumerator_RegisterEndpointNotificationCallback(i32, i32*) #1

declare dso_local i32 @MP_ERR(%struct.wasapi_state*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @wasapi_change_uninit(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
