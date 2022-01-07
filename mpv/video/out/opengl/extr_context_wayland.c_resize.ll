; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_3__*, %struct.priv* }
%struct.TYPE_3__ = type { %struct.vo_wayland_state* }
%struct.vo_wayland_state = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.priv = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"Handling resize on the egl side\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.vo_wayland_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %13, align 8
  store %struct.vo_wayland_state* %14, %struct.vo_wayland_state** %4, align 8
  %15 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %16 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %18 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %21 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mp_rect_w(i32 %22)
  %24 = mul nsw i32 %19, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %26 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %29 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mp_rect_h(i32 %30)
  %32 = mul nsw i32 %27, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %34 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %37 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wl_surface_set_buffer_scale(i32 %35, i32 %38)
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %1
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @wl_egl_window_resize(i64 %47, i32 %48, i32 %49, i32 0, i32 0)
  br label %51

51:                                               ; preds = %44, %1
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %54 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %59 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @mp_rect_w(i32) #1

declare dso_local i32 @mp_rect_h(i32) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #1

declare dso_local i32 @wl_egl_window_resize(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
