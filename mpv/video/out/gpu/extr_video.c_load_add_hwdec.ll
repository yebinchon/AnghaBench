; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_load_add_hwdec.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_load_add_hwdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i32, i32, i32, i32 }
%struct.mp_hwdec_devices = type { i32 }
%struct.ra_hwdec_driver = type { i32 }
%struct.ra_hwdec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, %struct.mp_hwdec_devices*, %struct.ra_hwdec_driver*, i32)* @load_add_hwdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_add_hwdec(%struct.gl_video* %0, %struct.mp_hwdec_devices* %1, %struct.ra_hwdec_driver* %2, i32 %3) #0 {
  %5 = alloca %struct.gl_video*, align 8
  %6 = alloca %struct.mp_hwdec_devices*, align 8
  %7 = alloca %struct.ra_hwdec_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ra_hwdec*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %5, align 8
  store %struct.mp_hwdec_devices* %1, %struct.mp_hwdec_devices** %6, align 8
  store %struct.ra_hwdec_driver* %2, %struct.ra_hwdec_driver** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %11 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %14 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %17 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %6, align 8
  %20 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.ra_hwdec* @ra_hwdec_load_driver(i32 %12, i32 %15, i32 %18, %struct.mp_hwdec_devices* %19, %struct.ra_hwdec_driver* %20, i32 %21)
  store %struct.ra_hwdec* %22, %struct.ra_hwdec** %9, align 8
  %23 = load %struct.ra_hwdec*, %struct.ra_hwdec** %9, align 8
  %24 = icmp ne %struct.ra_hwdec* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %27 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %28 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gl_video*, %struct.gl_video** %5, align 8
  %31 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ra_hwdec*, %struct.ra_hwdec** %9, align 8
  %34 = call i32 @MP_TARRAY_APPEND(%struct.gl_video* %26, i32 %29, i32 %32, %struct.ra_hwdec* %33)
  br label %35

35:                                               ; preds = %25, %4
  ret void
}

declare dso_local %struct.ra_hwdec* @ra_hwdec_load_driver(i32, i32, i32, %struct.mp_hwdec_devices*, %struct.ra_hwdec_driver*, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.gl_video*, i32, i32, %struct.ra_hwdec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
