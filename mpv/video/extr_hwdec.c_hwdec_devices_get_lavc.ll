; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_get_lavc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_get_lavc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVBufferRef = type { i32 }
%struct.mp_hwdec_devices = type { i32 }
%struct.mp_hwdec_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AVBufferRef* @hwdec_devices_get_lavc(%struct.mp_hwdec_devices* %0, i32 %1) #0 {
  %3 = alloca %struct.AVBufferRef*, align 8
  %4 = alloca %struct.mp_hwdec_devices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_hwdec_ctx*, align 8
  store %struct.mp_hwdec_devices* %0, %struct.mp_hwdec_devices** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.mp_hwdec_ctx* @hwdec_devices_get_by_lavc(%struct.mp_hwdec_devices* %7, i32 %8)
  store %struct.mp_hwdec_ctx* %9, %struct.mp_hwdec_ctx** %6, align 8
  %10 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %6, align 8
  %11 = icmp ne %struct.mp_hwdec_ctx* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %3, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.AVBufferRef* @av_buffer_ref(i32 %16)
  store %struct.AVBufferRef* %17, %struct.AVBufferRef** %3, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load %struct.AVBufferRef*, %struct.AVBufferRef** %3, align 8
  ret %struct.AVBufferRef* %19
}

declare dso_local %struct.mp_hwdec_ctx* @hwdec_devices_get_by_lavc(%struct.mp_hwdec_devices*, i32) #1

declare dso_local %struct.AVBufferRef* @av_buffer_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
