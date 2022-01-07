; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_screenshot_get_rgb.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_screenshot_get_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.MPContext = type { i32, i32 }

@IMGFMT_BGR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.MPContext*, i32)* @screenshot_get_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @screenshot_get_rgb(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_image*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.mp_image* @screenshot_get(%struct.MPContext* %8, i32 %9, i32 0)
  store %struct.mp_image* %10, %struct.mp_image** %6, align 8
  %11 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %12 = icmp ne %struct.mp_image* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %16 = load i32, i32* @IMGFMT_BGR0, align 4
  %17 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mp_image* @convert_image(%struct.mp_image* %15, i32 %16, i32 %19, i32 %22)
  store %struct.mp_image* %23, %struct.mp_image** %7, align 8
  %24 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %25 = call i32 @talloc_free(%struct.mp_image* %24)
  %26 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  store %struct.mp_image* %26, %struct.mp_image** %3, align 8
  br label %27

27:                                               ; preds = %14, %13
  %28 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  ret %struct.mp_image* %28
}

declare dso_local %struct.mp_image* @screenshot_get(%struct.MPContext*, i32, i32) #1

declare dso_local %struct.mp_image* @convert_image(%struct.mp_image*, i32, i32, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
