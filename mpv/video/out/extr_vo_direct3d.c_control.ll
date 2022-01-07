; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mp_image = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@VO_EVENT_EXPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.vo*, %struct.vo** %5, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %33 [
    i32 130, label %15
    i32 128, label %19
    i32 129, label %27
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = call i32 @d3d_draw_frame(%struct.TYPE_8__* %16)
  %18 = load i32, i32* @VO_TRUE, align 4
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = call i32 @calc_fs_rect(%struct.TYPE_8__* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @VO_TRUE, align 4
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = call %struct.mp_image* @get_window_screenshot(%struct.TYPE_8__* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.mp_image**
  store %struct.mp_image* %29, %struct.mp_image** %31, align 8
  %32 = load i32, i32* @VO_TRUE, align 4
  store i32 %32, i32* %4, align 4
  br label %58

33:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %34 = load %struct.vo*, %struct.vo** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @vo_w32_control(%struct.vo* %34, i32* %9, i32 %35, i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = call i32 @resize_d3d(%struct.TYPE_8__* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @VO_EVENT_EXPOSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.vo*, %struct.vo** %5, align 8
  %52 = getelementptr inbounds %struct.vo, %struct.vo* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.vo*, %struct.vo** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @vo_event(%struct.vo* %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %27, %19, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @d3d_draw_frame(%struct.TYPE_8__*) #1

declare dso_local i32 @calc_fs_rect(%struct.TYPE_8__*) #1

declare dso_local %struct.mp_image* @get_window_screenshot(%struct.TYPE_8__*) #1

declare dso_local i32 @vo_w32_control(%struct.vo*, i32*, i32, i8*) #1

declare dso_local i32 @resize_d3d(%struct.TYPE_8__*) #1

declare dso_local i32 @vo_event(%struct.vo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
