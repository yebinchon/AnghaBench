; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_set_ambient_lux.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_set_ambient_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"ambient light changed: %d lux (gamma: %f)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_video_set_ambient_lux(%struct.gl_video* %0, i32 %1) #0 {
  %3 = alloca %struct.gl_video*, align 8
  %4 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %6 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @gl_video_scale_ambient_lux(double 1.600000e+01, double 2.560000e+02, double 1.000000e+00, double 1.200000e+00, i32 %11)
  %13 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %14 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %19 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @MP_TRACE(%struct.gl_video* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @gl_video_scale_ambient_lux(double, double, double, double, i32) #1

declare dso_local i32 @MP_TRACE(%struct.gl_video*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
