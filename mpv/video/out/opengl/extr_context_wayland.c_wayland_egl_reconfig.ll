; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @wayland_egl_reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wayland_egl_reconfig(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %5, i32 0, i32 1
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @vo_wayland_reconfig(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %21 = call i32 @egl_create_window(%struct.ra_ctx* %20)
  br label %22

22:                                               ; preds = %19, %14
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @vo_wayland_reconfig(i32) #1

declare dso_local i32 @egl_create_window(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
