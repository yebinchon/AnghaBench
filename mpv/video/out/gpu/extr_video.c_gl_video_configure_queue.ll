; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_configure_queue.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_configure_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { double, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vo = type { i32 }
%struct.filter_kernel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double }

@SCALER_TSCALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_video_configure_queue(%struct.gl_video* %0, %struct.vo* %1) #0 {
  %3 = alloca %struct.gl_video*, align 8
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_kernel*, align 8
  %7 = alloca double, align 8
  store %struct.gl_video* %0, %struct.gl_video** %3, align 8
  store %struct.vo* %1, %struct.vo** %4, align 8
  %8 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %9 = call i32 @gl_video_update_options(%struct.gl_video* %8)
  store i32 1, i32* %5, align 4
  %10 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %11 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %2
  %16 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %17 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load i64, i64* @SCALER_TSCALE, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.filter_kernel* @mp_find_filter_kernel(i32 %24)
  store %struct.filter_kernel* %25, %struct.filter_kernel** %6, align 8
  %26 = load %struct.filter_kernel*, %struct.filter_kernel** %6, align 8
  %27 = icmp ne %struct.filter_kernel* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %15
  %29 = load %struct.filter_kernel*, %struct.filter_kernel** %6, align 8
  %30 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  store double %32, double* %7, align 8
  %33 = load double, double* %7, align 8
  %34 = fcmp ogt double %33, 0.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load double, double* %7, align 8
  br label %46

37:                                               ; preds = %28
  %38 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %39 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i64, i64* @SCALER_TSCALE, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  br label %46

46:                                               ; preds = %37, %35
  %47 = phi double [ %36, %35 ], [ %45, %37 ]
  store double %47, double* %7, align 8
  %48 = load double, double* %7, align 8
  %49 = call i64 @ceil(double %48)
  %50 = add nsw i64 1, %49
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %15
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %46
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.vo*, %struct.vo** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @vo_set_queue_params(%struct.vo* %60, i32 0, i32 %61)
  ret void
}

declare dso_local i32 @gl_video_update_options(%struct.gl_video*) #1

declare dso_local %struct.filter_kernel* @mp_find_filter_kernel(i32) #1

declare dso_local i64 @ceil(double) #1

declare dso_local i32 @vo_set_queue_params(%struct.vo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
