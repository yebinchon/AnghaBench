; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_set_fullscreen.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_set_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, %struct.priv* }
%struct.TYPE_2__ = type { i32 }
%struct.priv = type { i32, i64 }

@SDL_WINDOW_FULLSCREEN = common dso_local global i32 0, align 4
@SDL_WINDOW_FULLSCREEN_DESKTOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SDL_SetWindowFullscreen failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @set_fullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fullscreen(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %10 = load %struct.vo*, %struct.vo** %2, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %3, align 8
  %13 = load %struct.vo*, %struct.vo** %2, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = call i32 (...) @SDL_IsScreenSaverEnabled()
  store i32 %18, i32* %5, align 4
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @SDL_WINDOW_FULLSCREEN, align 4
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @SDL_WINDOW_FULLSCREEN_DESKTOP, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SDL_GetWindowFlags(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %65

43:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.priv*, %struct.priv** %3, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @SDL_SetWindowFullscreen(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.vo*, %struct.vo** %2, align 8
  %59 = call i32 @MP_ERR(%struct.vo* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @set_screensaver(i32 %61)
  %63 = load %struct.vo*, %struct.vo** %2, align 8
  %64 = call i32 @force_resize(%struct.vo* %63)
  br label %65

65:                                               ; preds = %60, %57, %42
  ret void
}

declare dso_local i32 @SDL_IsScreenSaverEnabled(...) #1

declare dso_local i32 @SDL_GetWindowFlags(i32) #1

declare dso_local i64 @SDL_SetWindowFullscreen(i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @set_screensaver(i32) #1

declare dso_local i32 @force_resize(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
