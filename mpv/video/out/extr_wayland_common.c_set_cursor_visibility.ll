; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_set_cursor_visibility.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_set_cursor_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wl_cursor_image** }
%struct.wl_cursor_image = type { i32, i32, i32, i32 }
%struct.wl_buffer = type { i32 }

@VO_NOTAVAIL = common dso_local global i32 0, align 4
@VO_FALSE = common dso_local global i32 0, align 4
@VO_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_wayland_state*, i32)* @set_cursor_visibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cursor_visibility(%struct.vo_wayland_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo_wayland_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl_cursor_image*, align 8
  %7 = alloca %struct.wl_buffer*, align 8
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %9 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @VO_NOTAVAIL, align 4
  store i32 %13, i32* %3, align 4
  br label %101

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %91

20:                                               ; preds = %14
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %22 = call i64 @spawn_cursor(%struct.vo_wayland_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @VO_FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %101

26:                                               ; preds = %20
  %27 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %28 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.wl_cursor_image**, %struct.wl_cursor_image*** %30, align 8
  %32 = getelementptr inbounds %struct.wl_cursor_image*, %struct.wl_cursor_image** %31, i64 0
  %33 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %32, align 8
  store %struct.wl_cursor_image* %33, %struct.wl_cursor_image** %6, align 8
  %34 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %35 = call %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image* %34)
  store %struct.wl_buffer* %35, %struct.wl_buffer** %7, align 8
  %36 = load %struct.wl_buffer*, %struct.wl_buffer** %7, align 8
  %37 = icmp ne %struct.wl_buffer* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @VO_FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %101

40:                                               ; preds = %26
  %41 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %42 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %45 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %48 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %51 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %54 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %52, %55
  %57 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %58 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %61 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  %64 = call i32 @wl_pointer_set_cursor(i32 %43, i32 %46, i32* %49, i32 %56, i32 %63)
  %65 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %66 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %69 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wl_surface_set_buffer_scale(i32* %67, i32 %70)
  %72 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %73 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.wl_buffer*, %struct.wl_buffer** %7, align 8
  %76 = call i32 @wl_surface_attach(i32* %74, %struct.wl_buffer* %75, i32 0, i32 0)
  %77 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %78 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %81 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %84 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @wl_surface_damage(i32* %79, i32 0, i32 0, i32 %82, i32 %85)
  %87 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %88 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @wl_surface_commit(i32* %89)
  br label %99

91:                                               ; preds = %14
  %92 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %93 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %96 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @wl_pointer_set_cursor(i32 %94, i32 %97, i32* null, i32 0, i32 0)
  br label %99

99:                                               ; preds = %91, %40
  %100 = load i32, i32* @VO_TRUE, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %38, %24, %12
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @spawn_cursor(%struct.vo_wayland_state*) #1

declare dso_local %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32*, i32) #1

declare dso_local i32 @wl_surface_attach(i32*, %struct.wl_buffer*, i32, i32) #1

declare dso_local i32 @wl_surface_damage(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
