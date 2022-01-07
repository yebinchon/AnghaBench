; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SETTING_MODE = common dso_local global i32 0, align 4
@SETTING_MODE_ANY = common dso_local global i8* null, align 8
@SETTING_WINDOW_PRIORITY = common dso_local global i32 0, align 4
@WINDOW_PRIORITY_EXE = common dso_local global i64 0, align 8
@SETTING_COMPATIBILITY = common dso_local global i32 0, align 4
@SETTING_FORCE_SCALING = common dso_local global i32 0, align 4
@SETTING_CURSOR = common dso_local global i32 0, align 4
@SETTING_TRANSPARENCY = common dso_local global i32 0, align 4
@SETTING_SCALE_RES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"0x0\00", align 1
@SETTING_LIMIT_FRAMERATE = common dso_local global i32 0, align 4
@SETTING_CAPTURE_OVERLAYS = common dso_local global i32 0, align 4
@SETTING_ANTI_CHEAT_HOOK = common dso_local global i32 0, align 4
@SETTING_HOOK_RATE = common dso_local global i32 0, align 4
@HOOK_RATE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @game_capture_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @game_capture_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SETTING_MODE, align 4
  %5 = load i8*, i8** @SETTING_MODE_ANY, align 8
  %6 = call i32 @obs_data_set_default_string(i32* %3, i32 %4, i8* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @SETTING_WINDOW_PRIORITY, align 4
  %9 = load i64, i64* @WINDOW_PRIORITY_EXE, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @obs_data_set_default_int(i32* %7, i32 %8, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SETTING_COMPATIBILITY, align 4
  %14 = call i32 @obs_data_set_default_bool(i32* %12, i32 %13, i32 0)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SETTING_FORCE_SCALING, align 4
  %17 = call i32 @obs_data_set_default_bool(i32* %15, i32 %16, i32 0)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SETTING_CURSOR, align 4
  %20 = call i32 @obs_data_set_default_bool(i32* %18, i32 %19, i32 1)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @SETTING_TRANSPARENCY, align 4
  %23 = call i32 @obs_data_set_default_bool(i32* %21, i32 %22, i32 0)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @SETTING_SCALE_RES, align 4
  %26 = call i32 @obs_data_set_default_string(i32* %24, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @SETTING_LIMIT_FRAMERATE, align 4
  %29 = call i32 @obs_data_set_default_bool(i32* %27, i32 %28, i32 0)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @SETTING_CAPTURE_OVERLAYS, align 4
  %32 = call i32 @obs_data_set_default_bool(i32* %30, i32 %31, i32 0)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @SETTING_ANTI_CHEAT_HOOK, align 4
  %35 = call i32 @obs_data_set_default_bool(i32* %33, i32 %34, i32 1)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @SETTING_HOOK_RATE, align 4
  %38 = load i64, i64* @HOOK_RATE_NORMAL, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @obs_data_set_default_int(i32* %36, i32 %37, i32 %39)
  ret void
}

declare dso_local i32 @obs_data_set_default_string(i32*, i32, i8*) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i32, i32) #1

declare dso_local i32 @obs_data_set_default_bool(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
