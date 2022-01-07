; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_changenotify.c_wasapi_change_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_changenotify.c_wasapi_change_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.wasapi_state* }
%struct.wasapi_state = type { %struct.change_notify }
%struct.change_notify = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wasapi_change_uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.wasapi_state*, align 8
  %4 = alloca %struct.change_notify*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.wasapi_state*, %struct.wasapi_state** %6, align 8
  store %struct.wasapi_state* %7, %struct.wasapi_state** %3, align 8
  %8 = load %struct.wasapi_state*, %struct.wasapi_state** %3, align 8
  %9 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %8, i32 0, i32 0
  store %struct.change_notify* %9, %struct.change_notify** %4, align 8
  %10 = load %struct.change_notify*, %struct.change_notify** %4, align 8
  %11 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.change_notify*, %struct.change_notify** %4, align 8
  %16 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.change_notify*, %struct.change_notify** %4, align 8
  %22 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.change_notify*, %struct.change_notify** %4, align 8
  %25 = bitcast %struct.change_notify* %24 to i32*
  %26 = call i32 @IMMDeviceEnumerator_UnregisterEndpointNotificationCallback(i64 %23, i32* %25)
  br label %27

27:                                               ; preds = %20, %14, %1
  %28 = load %struct.change_notify*, %struct.change_notify** %4, align 8
  %29 = getelementptr inbounds %struct.change_notify, %struct.change_notify* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @SAFE_RELEASE(i64 %30)
  ret void
}

declare dso_local i32 @IMMDeviceEnumerator_UnregisterEndpointNotificationCallback(i64, i32*) #1

declare dso_local i32 @SAFE_RELEASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
