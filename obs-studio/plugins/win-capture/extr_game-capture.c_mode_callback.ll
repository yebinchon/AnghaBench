; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_mode_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_mode_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SETTING_ANY_FULLSCREEN = common dso_local global i32 0, align 4
@SETTING_MODE = common dso_local global i32 0, align 4
@SETTING_MODE_WINDOW = common dso_local global i32 0, align 4
@SETTING_CAPTURE_WINDOW = common dso_local global i32 0, align 4
@SETTING_WINDOW_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @mode_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_callback(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i64 @using_older_non_mode_format(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @SETTING_ANY_FULLSCREEN, align 4
  %15 = call i32 @obs_data_get_bool(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SETTING_MODE, align 4
  %22 = call i8* @obs_data_get_string(i32* %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @SETTING_MODE_WINDOW, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %19, %12
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @SETTING_CAPTURE_WINDOW, align 4
  %31 = call i32* @obs_properties_get(i32* %29, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @obs_property_set_visible(i32* %32, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @SETTING_WINDOW_PRIORITY, align 4
  %37 = call i32* @obs_properties_get(i32* %35, i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @obs_property_set_visible(i32* %38, i32 %39)
  ret i32 1
}

declare dso_local i64 @using_older_non_mode_format(i32*) #1

declare dso_local i32 @obs_data_get_bool(i32*, i32) #1

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @obs_properties_get(i32*, i32) #1

declare dso_local i32 @obs_property_set_visible(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
