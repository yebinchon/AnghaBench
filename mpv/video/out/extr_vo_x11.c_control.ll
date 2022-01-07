; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i64, %struct.priv* }
%struct.priv = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_EVENT_EXPOSE = common dso_local global i32 0, align 4
@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.vo*, %struct.vo** %5, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %31 [
    i32 128, label %15
    i32 129, label %25
  ]

15:                                               ; preds = %3
  %16 = load %struct.vo*, %struct.vo** %5, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.vo*, %struct.vo** %5, align 8
  %22 = call i32 @resize(%struct.vo* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* @VO_TRUE, align 4
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %3
  %26 = load %struct.vo*, %struct.vo** %5, align 8
  %27 = load %struct.priv*, %struct.priv** %8, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @draw_image(%struct.vo* %26, i32 %29)
  store i32 1, i32* %4, align 4
  br label %55

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %32 = load %struct.vo*, %struct.vo** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @vo_x11_control(%struct.vo* %32, i32* %9, i32 %33, i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.vo*, %struct.vo** %5, align 8
  %37 = getelementptr inbounds %struct.vo, %struct.vo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @VO_EVENT_EXPOSE, align 4
  %43 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.vo*, %struct.vo** %5, align 8
  %49 = call i32 @resize(%struct.vo* %48)
  br label %50

50:                                               ; preds = %47, %40, %31
  %51 = load %struct.vo*, %struct.vo** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @vo_event(%struct.vo* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %25, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @resize(%struct.vo*) #1

declare dso_local i32 @draw_image(%struct.vo*, i32) #1

declare dso_local i32 @vo_x11_control(%struct.vo*, i32*, i32, i8*) #1

declare dso_local i32 @vo_event(%struct.vo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
