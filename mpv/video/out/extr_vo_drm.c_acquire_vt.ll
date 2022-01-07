; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_acquire_vt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_acquire_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USE_MASTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to acquire DRM master: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acquire_vt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acquire_vt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vo*
  store %struct.vo* %6, %struct.vo** %3, align 8
  %7 = load i64, i64* @USE_MASTER, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @drmSetMaster(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.vo*, %struct.vo** %3, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @mp_strerror(i32 %22)
  %24 = call i32 @MP_WARN(%struct.vo* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %9
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.vo*, %struct.vo** %3, align 8
  %28 = call i32 @crtc_setup(%struct.vo* %27)
  ret void
}

declare dso_local i64 @drmSetMaster(i32) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*, i32) #1

declare dso_local i32 @mp_strerror(i32) #1

declare dso_local i32 @crtc_setup(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
