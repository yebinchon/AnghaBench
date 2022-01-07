; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i32, %struct.TYPE_2__, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not initialize MMAL.\0A\00", align 1
@MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not create MMAL renderer.\0A\00", align 1
@tv_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  %5 = load %struct.vo*, %struct.vo** %3, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 1
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.priv*, %struct.priv** %4, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 7
  store i64 %10, i64* %12, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 6
  store i64 %16, i64* %18, align 8
  %19 = load %struct.priv*, %struct.priv** %4, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 2
  %23 = load %struct.priv*, %struct.priv** %4, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load %struct.vo*, %struct.vo** %3, align 8
  %26 = getelementptr inbounds %struct.vo, %struct.vo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.priv*, %struct.priv** %4, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = call i32 (...) @bcm_host_init()
  %32 = call i64 (...) @mmal_vc_init()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.vo*, %struct.vo** %3, align 8
  %36 = call i32 @MP_FATAL(%struct.vo* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %69

37:                                               ; preds = %1
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 2
  %40 = call i32 @pthread_mutex_init(i32* %39, i32* null)
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 1
  %43 = call i32 @pthread_cond_init(i32* %42, i32* null)
  %44 = load %struct.vo*, %struct.vo** %3, align 8
  %45 = call i64 @recreate_dispmanx(%struct.vo* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %66

48:                                               ; preds = %37
  %49 = load %struct.vo*, %struct.vo** %3, align 8
  %50 = call i64 @update_display_size(%struct.vo* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %66

53:                                               ; preds = %48
  %54 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, align 4
  %55 = load %struct.priv*, %struct.priv** %4, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  %57 = call i64 @mmal_component_create(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.vo*, %struct.vo** %3, align 8
  %61 = call i32 @MP_FATAL(%struct.vo* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @tv_callback, align 4
  %64 = load %struct.vo*, %struct.vo** %3, align 8
  %65 = call i32 @vc_tv_register_callback(i32 %63, %struct.vo* %64)
  store i32 0, i32* %2, align 4
  br label %69

66:                                               ; preds = %59, %52, %47
  %67 = load %struct.vo*, %struct.vo** %3, align 8
  %68 = call i32 @uninit(%struct.vo* %67)
  store i32 -1, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %62, %34
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i64 @mmal_vc_init(...) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i64 @recreate_dispmanx(%struct.vo*) #1

declare dso_local i64 @update_display_size(%struct.vo*) #1

declare dso_local i64 @mmal_component_create(i32, i32*) #1

declare dso_local i32 @vc_tv_register_callback(i32, %struct.vo*) #1

declare dso_local i32 @uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
