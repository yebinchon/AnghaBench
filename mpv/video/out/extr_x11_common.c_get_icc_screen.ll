; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_get_icc_screen.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_get_icc_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32, %struct.xrandr_display*, %struct.TYPE_2__ }
%struct.xrandr_display = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @get_icc_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_icc_screen(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_x11_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xrandr_display*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %9 = load %struct.vo*, %struct.vo** %2, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %10, align 8
  store %struct.vo_x11_state* %11, %struct.vo_x11_state** %3, align 8
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %13 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %17 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %21 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %19, %23
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %15, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %28 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %32 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %36 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %34, %38
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %30, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %43 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %67, %1
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %48 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %53 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %52, i32 0, i32 2
  %54 = load %struct.xrandr_display*, %struct.xrandr_display** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.xrandr_display, %struct.xrandr_display* %54, i64 %56
  store %struct.xrandr_display* %57, %struct.xrandr_display** %8, align 8
  %58 = load %struct.xrandr_display*, %struct.xrandr_display** %8, align 8
  %59 = getelementptr inbounds %struct.xrandr_display, %struct.xrandr_display* %58, i32 0, i32 0
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @mp_rect_contains(i32* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %45

70:                                               ; preds = %64, %45
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @mp_rect_contains(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
