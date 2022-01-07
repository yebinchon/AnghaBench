; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_draw_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_priv* }
%struct.vo_priv = type { %struct.mpv_render_context* }
%struct.mpv_render_context = type { i32, i32, i64, i64, i64 }
%struct.vo_frame = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_frame*)* @draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_frame(%struct.vo* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca %struct.vo_priv*, align 8
  %6 = alloca %struct.mpv_render_context*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.vo_priv*, %struct.vo_priv** %8, align 8
  store %struct.vo_priv* %9, %struct.vo_priv** %5, align 8
  %10 = load %struct.vo_priv*, %struct.vo_priv** %5, align 8
  %11 = getelementptr inbounds %struct.vo_priv, %struct.vo_priv* %10, i32 0, i32 0
  %12 = load %struct.mpv_render_context*, %struct.mpv_render_context** %11, align 8
  store %struct.mpv_render_context* %12, %struct.mpv_render_context** %6, align 8
  %13 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %14 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %17 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %24 = call i64 @vo_frame_ref(%struct.vo_frame* %23)
  %25 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %26 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %28 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %32 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %34 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %39 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %2
  %44 = phi i1 [ true, %2 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %47 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %49 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %48, i32 0, i32 1
  %50 = call i32 @pthread_mutex_unlock(i32* %49)
  %51 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %52 = call i32 @update(%struct.mpv_render_context* %51)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vo_frame_ref(%struct.vo_frame*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @update(%struct.mpv_render_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
