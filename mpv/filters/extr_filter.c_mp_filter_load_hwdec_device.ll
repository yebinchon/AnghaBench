; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_load_hwdec_device.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_load_hwdec_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVBufferRef = type { i32 }
%struct.mp_filter = type { i32 }
%struct.mp_stream_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AVBufferRef* @mp_filter_load_hwdec_device(%struct.mp_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.AVBufferRef*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_stream_info*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %8 = call %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.mp_filter* %7)
  store %struct.mp_stream_info* %8, %struct.mp_stream_info** %6, align 8
  %9 = load %struct.mp_stream_info*, %struct.mp_stream_info** %6, align 8
  %10 = icmp ne %struct.mp_stream_info* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.mp_stream_info*, %struct.mp_stream_info** %6, align 8
  %13 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %3, align 8
  br label %27

17:                                               ; preds = %11
  %18 = load %struct.mp_stream_info*, %struct.mp_stream_info** %6, align 8
  %19 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hwdec_devices_request_all(i32 %20)
  %22 = load %struct.mp_stream_info*, %struct.mp_stream_info** %6, align 8
  %23 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.AVBufferRef* @hwdec_devices_get_lavc(i32 %24, i32 %25)
  store %struct.AVBufferRef* %26, %struct.AVBufferRef** %3, align 8
  br label %27

27:                                               ; preds = %17, %16
  %28 = load %struct.AVBufferRef*, %struct.AVBufferRef** %3, align 8
  ret %struct.AVBufferRef* %28
}

declare dso_local %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.mp_filter*) #1

declare dso_local i32 @hwdec_devices_request_all(i32) #1

declare dso_local %struct.AVBufferRef* @hwdec_devices_get_lavc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
