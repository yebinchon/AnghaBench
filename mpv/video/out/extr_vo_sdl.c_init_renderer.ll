; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_init_renderer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_init_renderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i64 }

@SDL_HINT_RENDER_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No supported renderer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @init_renderer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_renderer(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = call i32 (...) @SDL_GetNumRenderDrivers()
  store i32 %10, i32* %5, align 4
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.vo*, %struct.vo** %3, align 8
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @try_create_renderer(%struct.vo* %16, i32 %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %60

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %1
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.vo*, %struct.vo** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SDL_HINT_RENDER_DRIVER, align 4
  %34 = call i32* @SDL_GetHint(i32 %33)
  %35 = call i64 @try_create_renderer(%struct.vo* %31, i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %60

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %26

42:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %54, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.vo*, %struct.vo** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @try_create_renderer(%struct.vo* %48, i32 %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %60

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %43

57:                                               ; preds = %43
  %58 = load %struct.vo*, %struct.vo** %3, align 8
  %59 = call i32 @MP_ERR(%struct.vo* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %52, %37, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @SDL_GetNumRenderDrivers(...) #1

declare dso_local i64 @try_create_renderer(%struct.vo*, i32, i32*) #1

declare dso_local i32* @SDL_GetHint(i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
