; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.priv* }
%struct.priv = type { i32, i32 }

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
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 128, label %23
  ]

15:                                               ; preds = %3
  %16 = load %struct.priv*, %struct.priv** %8, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.priv*, %struct.priv** %8, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vo*, %struct.vo** %5, align 8
  %22 = call i32 @draw_osd(%struct.vo* %21)
  store i32 1, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.priv*, %struct.priv** %8, align 8
  %25 = call i32 @resize(%struct.priv* %24)
  %26 = load i32, i32* @VO_TRUE, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %28 = load %struct.vo*, %struct.vo** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @vo_x11_control(%struct.vo* %28, i32* %9, i32 %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.priv*, %struct.priv** %8, align 8
  %38 = call i32 @resize(%struct.priv* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @VO_EVENT_EXPOSE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.vo*, %struct.vo** %5, align 8
  %46 = getelementptr inbounds %struct.vo, %struct.vo* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.vo*, %struct.vo** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @vo_event(%struct.vo* %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %23, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @draw_osd(%struct.vo*) #1

declare dso_local i32 @resize(%struct.priv*) #1

declare dso_local i32 @vo_x11_control(%struct.vo*, i32*, i32, i8*) #1

declare dso_local i32 @vo_event(%struct.vo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
