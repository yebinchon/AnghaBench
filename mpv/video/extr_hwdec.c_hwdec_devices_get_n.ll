; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_get_n.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_get_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_hwdec_ctx = type { i32 }
%struct.mp_hwdec_devices = type { i32, i32, %struct.mp_hwdec_ctx** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_hwdec_ctx* @hwdec_devices_get_n(%struct.mp_hwdec_devices* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_hwdec_devices*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_hwdec_ctx*, align 8
  store %struct.mp_hwdec_devices* %0, %struct.mp_hwdec_devices** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %7 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %6, i32 0, i32 1
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %11 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %16 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %15, i32 0, i32 2
  %17 = load %struct.mp_hwdec_ctx**, %struct.mp_hwdec_ctx*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %17, i64 %19
  %21 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %20, align 8
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi %struct.mp_hwdec_ctx* [ %21, %14 ], [ null, %22 ]
  store %struct.mp_hwdec_ctx* %24, %struct.mp_hwdec_ctx** %5, align 8
  %25 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %26 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %25, i32 0, i32 1
  %27 = call i32 @pthread_mutex_unlock(i32* %26)
  %28 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %5, align 8
  ret %struct.mp_hwdec_ctx* %28
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
