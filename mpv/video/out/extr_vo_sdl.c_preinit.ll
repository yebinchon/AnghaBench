; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i64, i32*, i64 }

@SDL_INIT_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Another component is using SDL already.\0A\00", align 1
@SDL_HINT_RENDER_SCALE_QUALITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@SDL_HINT_DEFAULT = common dso_local global i32 0, align 4
@SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SDL_HINT_RENDER_VSYNC = common dso_local global i32 0, align 4
@SDL_HINT_OVERRIDE = common dso_local global i32 0, align 4
@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SDL_Init failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MPV\00", align 1
@SDL_WINDOWPOS_UNDEFINED = common dso_local global i32 0, align 4
@SDL_WINDOW_RESIZABLE = common dso_local global i32 0, align 4
@SDL_WINDOW_HIDDEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"SDL_CreateWindow failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"SDL_RegisterEvents() failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [112 x i8] c"Warning: this legacy VO has bad performance. Consider fixing your graphics drivers, or not forcing the sdl VO.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  %5 = load %struct.vo*, %struct.vo** %3, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load i32, i32* @SDL_INIT_EVENTS, align 4
  %9 = call i64 @SDL_WasInit(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.vo*, %struct.vo** %3, align 8
  %13 = call i32 @MP_ERR(%struct.vo* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load i32, i32* @SDL_HINT_RENDER_SCALE_QUALITY, align 4
  %16 = load i32, i32* @SDL_HINT_DEFAULT, align 4
  %17 = call i32 @SDL_SetHintWithPriority(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS, align 4
  %19 = load i32, i32* @SDL_HINT_DEFAULT, align 4
  %20 = call i32 @SDL_SetHintWithPriority(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @SDL_HINT_RENDER_VSYNC, align 4
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* @SDL_HINT_OVERRIDE, align 4
  %29 = call i32 @SDL_SetHintWithPriority(i32 %21, i8* %27, i32 %28)
  %30 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %31 = call i64 @SDL_InitSubSystem(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load %struct.vo*, %struct.vo** %3, align 8
  %35 = call i32 @MP_ERR(%struct.vo* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %77

36:                                               ; preds = %14
  %37 = load i32, i32* @SDL_WINDOWPOS_UNDEFINED, align 4
  %38 = load i32, i32* @SDL_WINDOWPOS_UNDEFINED, align 4
  %39 = load i32, i32* @SDL_WINDOW_RESIZABLE, align 4
  %40 = load i32, i32* @SDL_WINDOW_HIDDEN, align 4
  %41 = or i32 %39, %40
  %42 = call i32* @SDL_CreateWindow(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32 %38, i32 640, i32 480, i32 %41)
  %43 = load %struct.priv*, %struct.priv** %4, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load %struct.vo*, %struct.vo** %3, align 8
  %51 = call i32 @MP_ERR(%struct.vo* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %77

52:                                               ; preds = %36
  %53 = load %struct.vo*, %struct.vo** %3, align 8
  %54 = call i64 @init_renderer(%struct.vo* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @SDL_DestroyWindow(i32* %59)
  %61 = load %struct.priv*, %struct.priv** %4, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  store i32 -1, i32* %2, align 4
  br label %77

63:                                               ; preds = %52
  %64 = call i64 @SDL_RegisterEvents(i32 1)
  %65 = load %struct.priv*, %struct.priv** %4, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.priv*, %struct.priv** %4, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.vo*, %struct.vo** %3, align 8
  %73 = call i32 @MP_ERR(%struct.vo* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.vo*, %struct.vo** %3, align 8
  %76 = call i32 @MP_WARN(%struct.vo* %75, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %56, %49, %33, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @SDL_WasInit(i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @SDL_SetHintWithPriority(i32, i8*, i32) #1

declare dso_local i64 @SDL_InitSubSystem(i32) #1

declare dso_local i32* @SDL_CreateWindow(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @init_renderer(%struct.vo*) #1

declare dso_local i32 @SDL_DestroyWindow(i32*) #1

declare dso_local i64 @SDL_RegisterEvents(i32) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
