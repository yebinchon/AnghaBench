; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_get_and_update_icc_profile.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_get_and_update_icc_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*, i32, i32*)* }

@.str = private unnamed_addr constant [25 x i8] c"Querying ICC profile...\0A\00", align 1
@VOCTRL_GET_ICC_PROFILE = common dso_local global i32 0, align 4
@VO_NOTAVAIL = common dso_local global i32 0, align 4
@VO_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not retrieve an ICC profile.\0A\00", align 1
@VO_NOTIMPL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"icc-profile-auto not implemented on this platform.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpu_priv*)* @get_and_update_icc_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_and_update_icc_profile(%struct.gpu_priv* %0) #0 {
  %2 = alloca %struct.gpu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gpu_priv* %0, %struct.gpu_priv** %2, align 8
  %5 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %6 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @gl_video_icc_auto_enabled(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %12 = call i32 @MP_VERBOSE(%struct.gpu_priv* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @bstr0(i32* null)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %15 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_4__*, i32*, i32, i32*)*, i32 (%struct.TYPE_4__*, i32*, i32, i32*)** %19, align 8
  %21 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %22 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %25 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %24, i32 0, i32 1
  %26 = load i32, i32* @VOCTRL_GET_ICC_PROFILE, align 4
  %27 = call i32 %20(%struct.TYPE_4__* %23, i32* %25, i32 %26, i32* %3)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @VO_NOTAVAIL, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %10
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VO_FALSE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %37 = call i32 @MP_WARN(%struct.gpu_priv* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %46

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @VO_NOTIMPL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %44 = call i32 @MP_ERR(%struct.gpu_priv* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.gpu_priv*, %struct.gpu_priv** %2, align 8
  %48 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @gl_video_set_icc_profile(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %10
  br label %53

53:                                               ; preds = %52, %1
  ret void
}

declare dso_local i64 @gl_video_icc_auto_enabled(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.gpu_priv*, i8*) #1

declare dso_local i32 @bstr0(i32*) #1

declare dso_local i32 @MP_WARN(%struct.gpu_priv*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.gpu_priv*, i8*) #1

declare dso_local i32 @gl_video_set_icc_profile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
