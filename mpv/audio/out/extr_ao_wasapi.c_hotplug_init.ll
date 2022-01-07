; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_hotplug_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_hotplug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.wasapi_state* }
%struct.wasapi_state = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Hotplug init\0A\00", align 1
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error setting up audio hotplug: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @hotplug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotplug_init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.wasapi_state*, align 8
  %5 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = call i32 @MP_DBG(%struct.ao* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ao*, %struct.ao** %3, align 8
  %9 = getelementptr inbounds %struct.ao, %struct.ao* %8, i32 0, i32 1
  %10 = load %struct.wasapi_state*, %struct.wasapi_state** %9, align 8
  store %struct.wasapi_state* %10, %struct.wasapi_state** %4, align 8
  %11 = load %struct.ao*, %struct.ao** %3, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %15 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %17 = call i32 @CoInitializeEx(i32* null, i32 %16)
  %18 = load %struct.ao*, %struct.ao** %3, align 8
  %19 = call i32 @wasapi_change_init(%struct.ao* %18, i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @EXIT_ON_ERROR(i32 %20)
  store i32 0, i32* %2, align 4
  br label %29

22:                                               ; No predecessors!
  %23 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mp_HRESULT_to_str(i32 %24)
  %26 = call i32 @MP_FATAL(%struct.wasapi_state* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.ao*, %struct.ao** %3, align 8
  %28 = call i32 @hotplug_uninit(%struct.ao* %27)
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %1
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @MP_DBG(%struct.ao*, i8*) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @wasapi_change_init(%struct.ao*, i32) #1

declare dso_local i32 @EXIT_ON_ERROR(i32) #1

declare dso_local i32 @MP_FATAL(%struct.wasapi_state*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @hotplug_uninit(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
