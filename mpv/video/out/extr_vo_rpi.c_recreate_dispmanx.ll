; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_recreate_dispmanx.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_recreate_dispmanx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i64, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Could not get DISPMANX objects.\0A\00", align 1
@vsync_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @recreate_dispmanx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recreate_dispmanx(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  %5 = load %struct.vo*, %struct.vo** %3, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.priv*, %struct.priv** %4, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @vc_dispmanx_display_open(i32 %10)
  %12 = load %struct.priv*, %struct.priv** %4, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = call i64 @vc_dispmanx_update_start(i32 0)
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.vo*, %struct.vo** %3, align 8
  %28 = call i32 @MP_FATAL(%struct.vo* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.priv*, %struct.priv** %4, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vc_dispmanx_display_close(i64 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.priv*, %struct.priv** %4, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  store i32 -1, i32* %2, align 4
  br label %52

43:                                               ; preds = %21
  %44 = load %struct.vo*, %struct.vo** %3, align 8
  %45 = call i32 @update_display_size(%struct.vo* %44)
  %46 = load %struct.priv*, %struct.priv** %4, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @vsync_callback, align 4
  %50 = load %struct.vo*, %struct.vo** %3, align 8
  %51 = call i32 @vc_dispmanx_vsync_callback(i64 %48, i32 %49, %struct.vo* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @vc_dispmanx_display_open(i32) #1

declare dso_local i64 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @vc_dispmanx_display_close(i64) #1

declare dso_local i32 @update_display_size(%struct.vo*) #1

declare dso_local i32 @vc_dispmanx_vsync_callback(i64, i32, %struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
