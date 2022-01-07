; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_fb_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_fb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.framebuffer = type { i64, i64, i32, i64 }
%struct.drm_mode_destroy_dumb = type { i64 }

@DRM_IOCTL_MODE_DESTROY_DUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.framebuffer*)* @fb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fb_destroy(i32 %0, %struct.framebuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.framebuffer*, align 8
  %5 = alloca %struct.drm_mode_destroy_dumb, align 8
  store i32 %0, i32* %3, align 4
  store %struct.framebuffer* %1, %struct.framebuffer** %4, align 8
  %6 = load %struct.framebuffer*, %struct.framebuffer** %4, align 8
  %7 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.framebuffer*, %struct.framebuffer** %4, align 8
  %12 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.framebuffer*, %struct.framebuffer** %4, align 8
  %15 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @munmap(i64 %13, i32 %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.framebuffer*, %struct.framebuffer** %4, align 8
  %20 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.framebuffer*, %struct.framebuffer** %4, align 8
  %26 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @drmModeRmFB(i32 %24, i64 %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.framebuffer*, %struct.framebuffer** %4, align 8
  %31 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_mode_destroy_dumb, %struct.drm_mode_destroy_dumb* %5, i32 0, i32 0
  %36 = load %struct.framebuffer*, %struct.framebuffer** %4, align 8
  %37 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %35, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @DRM_IOCTL_MODE_DESTROY_DUMB, align 4
  %41 = call i32 @drmIoctl(i32 %39, i32 %40, %struct.drm_mode_destroy_dumb* %5)
  br label %42

42:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @drmModeRmFB(i32, i64) #1

declare dso_local i32 @drmIoctl(i32, i32, %struct.drm_mode_destroy_dumb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
