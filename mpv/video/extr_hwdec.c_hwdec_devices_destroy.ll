; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_hwdec_devices = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hwdec_devices_destroy(%struct.mp_hwdec_devices* %0) #0 {
  %2 = alloca %struct.mp_hwdec_devices*, align 8
  store %struct.mp_hwdec_devices* %0, %struct.mp_hwdec_devices** %2, align 8
  %3 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %2, align 8
  %4 = icmp ne %struct.mp_hwdec_devices* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %2, align 8
  %8 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %2, align 8
  %15 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %2, align 8
  %22 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %21, i32 0, i32 0
  %23 = call i32 @pthread_mutex_destroy(i32* %22)
  %24 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %2, align 8
  %25 = call i32 @talloc_free(%struct.mp_hwdec_devices* %24)
  br label %26

26:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @talloc_free(%struct.mp_hwdec_devices*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
