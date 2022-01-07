; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_camera_close.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_camera_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.msm_vfe_axi_stream_release_cmd, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.msm_vfe_axi_stream_release_cmd }
%struct.TYPE_5__ = type { i64 }
%struct.msm_vfe_axi_stream_release_cmd = type { i64, i32 }

@STOP_STREAM = common dso_local global i32 0, align 4
@VIDIOC_MSM_ISP_CFG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"isp stop stream: %d\00", align 1
@VIDIOC_MSM_ISP_RELEASE_BUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"isp release buf: %d\00", align 1
@VIDIOC_MSM_ISP_RELEASE_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"isp release stream: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @camera_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camera_close(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.msm_vfe_axi_stream_release_cmd, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = call i32 @tbuffer_stop(i32* %8)
  %10 = load i32, i32* @STOP_STREAM, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.msm_vfe_axi_stream_release_cmd, %struct.msm_vfe_axi_stream_release_cmd* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VIDIOC_MSM_ISP_CFG_STREAM, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = call i32 @ioctl(i32 %16, i32 %17, %struct.msm_vfe_axi_stream_release_cmd* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %62, %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %65

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %26
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VIDIOC_MSM_ISP_RELEASE_BUF, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @ioctl(i32 %41, i32 %42, %struct.msm_vfe_axi_stream_release_cmd* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.msm_vfe_axi_stream_release_cmd, %struct.msm_vfe_axi_stream_release_cmd* %6, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %48, align 8
  %53 = getelementptr inbounds %struct.msm_vfe_axi_stream_release_cmd, %struct.msm_vfe_axi_stream_release_cmd* %6, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VIDIOC_MSM_ISP_RELEASE_STREAM, align 4
  %58 = call i32 @ioctl(i32 %56, i32 %57, %struct.msm_vfe_axi_stream_release_cmd* %6)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %38, %26
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %23

65:                                               ; preds = %23
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @free(i32 %68)
  ret void
}

declare dso_local i32 @tbuffer_stop(i32*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.msm_vfe_axi_stream_release_cmd*) #1

declare dso_local i32 @LOG(i8*, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
