; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_draw_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i64, %struct.framebuffer*, i32, i32 }
%struct.framebuffer = type { i32 }
%struct.vo_frame = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_frame*)* @draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_frame(%struct.vo* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.framebuffer*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %5, align 8
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %18 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.priv*, %struct.priv** %5, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %23 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %28 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %16
  %33 = phi i1 [ false, %16 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.priv*, %struct.priv** %5, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 1
  %37 = load %struct.framebuffer*, %struct.framebuffer** %36, align 8
  %38 = load %struct.priv*, %struct.priv** %5, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %37, i64 %40
  store %struct.framebuffer* %41, %struct.framebuffer** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %32
  %45 = load %struct.vo*, %struct.vo** %3, align 8
  %46 = call %struct.framebuffer* @get_new_fb(%struct.vo* %45)
  store %struct.framebuffer* %46, %struct.framebuffer** %7, align 8
  %47 = load %struct.vo*, %struct.vo** %3, align 8
  %48 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %49 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mp_image_new_ref(i32 %50)
  %52 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %53 = call i32 @draw_image(%struct.vo* %47, i32 %51, %struct.framebuffer* %52)
  br label %54

54:                                               ; preds = %44, %32
  %55 = load %struct.vo*, %struct.vo** %3, align 8
  %56 = load %struct.framebuffer*, %struct.framebuffer** %7, align 8
  %57 = call i32 @enqueue_frame(%struct.vo* %55, %struct.framebuffer* %56)
  br label %58

58:                                               ; preds = %54, %15
  ret void
}

declare dso_local %struct.framebuffer* @get_new_fb(%struct.vo*) #1

declare dso_local i32 @draw_image(%struct.vo*, i32, %struct.framebuffer*) #1

declare dso_local i32 @mp_image_new_ref(i32) #1

declare dso_local i32 @enqueue_frame(%struct.vo*, %struct.framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
