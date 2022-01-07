; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_unref_current_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_unref_current_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i64, i64, %struct.video_image }
%struct.video_image = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*)* @unref_current_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unref_current_image(%struct.gl_video* %0) #0 {
  %2 = alloca %struct.gl_video*, align 8
  %3 = alloca %struct.video_image*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %2, align 8
  %4 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %5 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %4, i32 0, i32 2
  store %struct.video_image* %5, %struct.video_image** %3, align 8
  %6 = load %struct.video_image*, %struct.video_image** %3, align 8
  %7 = getelementptr inbounds %struct.video_image, %struct.video_image* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %12 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %17 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %25 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ra_hwdec_mapper_unmap(i64 %26)
  %28 = load %struct.video_image*, %struct.video_image** %3, align 8
  %29 = getelementptr inbounds %struct.video_image, %struct.video_image* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memset(i32 %30, i32 0, i32 4)
  %32 = load %struct.video_image*, %struct.video_image** %3, align 8
  %33 = getelementptr inbounds %struct.video_image, %struct.video_image* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %20, %1
  %35 = load %struct.video_image*, %struct.video_image** %3, align 8
  %36 = getelementptr inbounds %struct.video_image, %struct.video_image* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.video_image*, %struct.video_image** %3, align 8
  %38 = getelementptr inbounds %struct.video_image, %struct.video_image* %37, i32 0, i32 1
  %39 = call i32 @mp_image_unrefp(i32* %38)
  %40 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %41 = call i32 @gc_pending_dr_fences(%struct.gl_video* %40, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ra_hwdec_mapper_unmap(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mp_image_unrefp(i32*) #1

declare dso_local i32 @gc_pending_dr_fences(%struct.gl_video*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
