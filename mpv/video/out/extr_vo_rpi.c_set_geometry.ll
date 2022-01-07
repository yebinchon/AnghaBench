; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_set_geometry.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_set_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.TYPE_3__*, %struct.priv* }
%struct.TYPE_3__ = type { i64 }
%struct.priv = type { i64, i64, i32, i32 }
%struct.vo_win_geometry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mp_rect = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @set_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_geometry(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo_win_geometry, align 8
  %6 = alloca %struct.mp_rect, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 3
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vo*, %struct.vo** %3, align 8
  %21 = getelementptr inbounds %struct.vo, %struct.vo* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vo*, %struct.vo** %3, align 8
  %26 = getelementptr inbounds %struct.vo, %struct.vo* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.priv*, %struct.priv** %4, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %56

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 2
  %35 = load %struct.priv*, %struct.priv** %4, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 3
  %39 = load %struct.priv*, %struct.priv** %4, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %38, align 4
  %42 = load %struct.vo*, %struct.vo** %3, align 8
  %43 = call i32 @vo_calc_window_geometry(%struct.vo* %42, %struct.mp_rect* %6, %struct.vo_win_geometry* %5)
  %44 = load %struct.vo*, %struct.vo** %3, align 8
  %45 = call i32 @vo_apply_window_geometry(%struct.vo* %44, %struct.vo_win_geometry* %5)
  %46 = getelementptr inbounds %struct.vo_win_geometry, %struct.vo_win_geometry* %5, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.priv*, %struct.priv** %4, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = getelementptr inbounds %struct.vo_win_geometry, %struct.vo_win_geometry* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %31, %16
  %57 = load %struct.vo*, %struct.vo** %3, align 8
  %58 = call i32 @resize(%struct.vo* %57)
  %59 = load %struct.vo*, %struct.vo** %3, align 8
  %60 = call i64 @create_overlays(%struct.vo* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @vo_calc_window_geometry(%struct.vo*, %struct.mp_rect*, %struct.vo_win_geometry*) #1

declare dso_local i32 @vo_apply_window_geometry(%struct.vo*, %struct.vo_win_geometry*) #1

declare dso_local i32 @resize(%struct.vo*) #1

declare dso_local i64 @create_overlays(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
