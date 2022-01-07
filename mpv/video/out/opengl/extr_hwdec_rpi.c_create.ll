; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_rpi.c_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_rpi.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.priv* }
%struct.priv = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not initialize MMAL.\0A\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not create MMAL renderer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create(%struct.ra_hwdec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  %5 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %6 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %5, i32 0, i32 1
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %9 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @bcm_host_init()
  %14 = call i64 (...) @mmal_vc_init()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %18 = call i32 @MP_FATAL(%struct.ra_hwdec* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 4
  %21 = load %struct.priv*, %struct.priv** %4, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = call i64 @mmal_component_create(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %27 = call i32 @MP_FATAL(%struct.ra_hwdec* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (...) @mmal_vc_deinit()
  store i32 -1, i32* %2, align 4
  br label %30

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %25, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i64 @mmal_vc_init(...) #1

declare dso_local i32 @MP_FATAL(%struct.ra_hwdec*, i8*) #1

declare dso_local i64 @mmal_component_create(i32, i32*) #1

declare dso_local i32 @mmal_vc_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
