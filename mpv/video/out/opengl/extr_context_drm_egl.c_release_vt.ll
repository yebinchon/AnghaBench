; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_release_vt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_release_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Releasing VT\0A\00", align 1
@USE_MASTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to drop DRM master: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @release_vt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_vt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ra_ctx*
  store %struct.ra_ctx* %6, %struct.ra_ctx** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @MP_VERBOSE(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %12 = call i32 @crtc_release(%struct.ra_ctx* %11)
  %13 = load i64, i64* @USE_MASTER, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %16, i32 0, i32 1
  %18 = load %struct.priv*, %struct.priv** %17, align 8
  store %struct.priv* %18, %struct.priv** %4, align 8
  %19 = load %struct.priv*, %struct.priv** %4, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @drmDropMaster(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @mp_strerror(i32 %30)
  %32 = call i32 @MP_WARN(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %15
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @MP_VERBOSE(i32, i8*) #1

declare dso_local i32 @crtc_release(%struct.ra_ctx*) #1

declare dso_local i64 @drmDropMaster(i32) #1

declare dso_local i32 @MP_WARN(i32, i8*, i32) #1

declare dso_local i32 @mp_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
