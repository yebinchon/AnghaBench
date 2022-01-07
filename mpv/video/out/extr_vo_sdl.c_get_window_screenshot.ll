; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_get_window_screenshot.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_get_window_screenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32*, i32* }
%struct.vo = type { i32, i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"SDL_RenderReadPixels failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.vo*)* @get_window_screenshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @get_window_screenshot(%struct.vo* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_image*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  %6 = load %struct.vo*, %struct.vo** %3, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 2
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.priv*, %struct.priv** %4, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vo*, %struct.vo** %3, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vo*, %struct.vo** %3, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.mp_image* @mp_image_alloc(i32 %12, i32 %15, i32 %18)
  store %struct.mp_image* %19, %struct.mp_image** %5, align 8
  %20 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %21 = icmp ne %struct.mp_image* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.priv*, %struct.priv** %4, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %32 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %37 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @SDL_RenderReadPixels(i32 %26, i32* null, i32 %30, i32 %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %23
  %44 = load %struct.vo*, %struct.vo** %3, align 8
  %45 = call i32 @MP_ERR(%struct.vo* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %47 = call i32 @talloc_free(%struct.mp_image* %46)
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %50

48:                                               ; preds = %23
  %49 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  store %struct.mp_image* %49, %struct.mp_image** %2, align 8
  br label %50

50:                                               ; preds = %48, %43, %22
  %51 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  ret %struct.mp_image* %51
}

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i64 @SDL_RenderReadPixels(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
