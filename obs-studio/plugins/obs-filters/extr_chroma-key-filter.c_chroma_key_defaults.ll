; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_chroma_key_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_chroma_key_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SETTING_OPACITY = common dso_local global i32 0, align 4
@SETTING_CONTRAST = common dso_local global i32 0, align 4
@SETTING_BRIGHTNESS = common dso_local global i32 0, align 4
@SETTING_GAMMA = common dso_local global i32 0, align 4
@SETTING_KEY_COLOR = common dso_local global i32 0, align 4
@SETTING_COLOR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"green\00", align 1
@SETTING_SIMILARITY = common dso_local global i32 0, align 4
@SETTING_SMOOTHNESS = common dso_local global i32 0, align 4
@SETTING_SPILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @chroma_key_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chroma_key_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SETTING_OPACITY, align 4
  %5 = call i32 @obs_data_set_default_int(i32* %3, i32 %4, i32 100)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @SETTING_CONTRAST, align 4
  %8 = call i32 @obs_data_set_default_double(i32* %6, i32 %7, double 0.000000e+00)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @SETTING_BRIGHTNESS, align 4
  %11 = call i32 @obs_data_set_default_double(i32* %9, i32 %10, double 0.000000e+00)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SETTING_GAMMA, align 4
  %14 = call i32 @obs_data_set_default_double(i32* %12, i32 %13, double 0.000000e+00)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SETTING_KEY_COLOR, align 4
  %17 = call i32 @obs_data_set_default_int(i32* %15, i32 %16, i32 65280)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SETTING_COLOR_TYPE, align 4
  %20 = call i32 @obs_data_set_default_string(i32* %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @SETTING_SIMILARITY, align 4
  %23 = call i32 @obs_data_set_default_int(i32* %21, i32 %22, i32 400)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @SETTING_SMOOTHNESS, align 4
  %26 = call i32 @obs_data_set_default_int(i32* %24, i32 %25, i32 80)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @SETTING_SPILL, align 4
  %29 = call i32 @obs_data_set_default_int(i32* %27, i32 %28, i32 100)
  ret void
}

declare dso_local i32 @obs_data_set_default_int(i32*, i32, i32) #1

declare dso_local i32 @obs_data_set_default_double(i32*, i32, double) #1

declare dso_local i32 @obs_data_set_default_string(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
