; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_chroma_key_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_chroma_key_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SETTING_COLOR_TYPE = common dso_local global i32 0, align 4
@TEXT_COLOR_TYPE = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@key_type_changed = common dso_local global i32 0, align 4
@SETTING_KEY_COLOR = common dso_local global i32 0, align 4
@TEXT_KEY_COLOR = common dso_local global i32 0, align 4
@SETTING_SIMILARITY = common dso_local global i32 0, align 4
@TEXT_SIMILARITY = common dso_local global i32 0, align 4
@SETTING_SMOOTHNESS = common dso_local global i32 0, align 4
@TEXT_SMOOTHNESS = common dso_local global i32 0, align 4
@SETTING_SPILL = common dso_local global i32 0, align 4
@TEXT_SPILL = common dso_local global i32 0, align 4
@SETTING_OPACITY = common dso_local global i32 0, align 4
@TEXT_OPACITY = common dso_local global i32 0, align 4
@SETTING_CONTRAST = common dso_local global i32 0, align 4
@TEXT_CONTRAST = common dso_local global i32 0, align 4
@SETTING_BRIGHTNESS = common dso_local global i32 0, align 4
@TEXT_BRIGHTNESS = common dso_local global i32 0, align 4
@SETTING_GAMMA = common dso_local global i32 0, align 4
@TEXT_GAMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @chroma_key_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @chroma_key_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32* (...) @obs_properties_create()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @SETTING_COLOR_TYPE, align 4
  %8 = load i32, i32* @TEXT_COLOR_TYPE, align 4
  %9 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %10 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %11 = call i32* @obs_properties_add_list(i32* %6, i32 %7, i32 %8, i32 %9, i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @obs_module_text(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @obs_property_list_add_string(i32* %12, i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @obs_module_text(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @obs_property_list_add_string(i32* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @obs_property_list_add_string(i32* %18, i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @obs_property_list_add_string(i32* %21, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @key_type_changed, align 4
  %26 = call i32 @obs_property_set_modified_callback(i32* %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @SETTING_KEY_COLOR, align 4
  %29 = load i32, i32* @TEXT_KEY_COLOR, align 4
  %30 = call i32 @obs_properties_add_color(i32* %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @SETTING_SIMILARITY, align 4
  %33 = load i32, i32* @TEXT_SIMILARITY, align 4
  %34 = call i32 @obs_properties_add_int_slider(i32* %31, i32 %32, i32 %33, i32 1, i32 1000, i32 1)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @SETTING_SMOOTHNESS, align 4
  %37 = load i32, i32* @TEXT_SMOOTHNESS, align 4
  %38 = call i32 @obs_properties_add_int_slider(i32* %35, i32 %36, i32 %37, i32 1, i32 1000, i32 1)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @SETTING_SPILL, align 4
  %41 = load i32, i32* @TEXT_SPILL, align 4
  %42 = call i32 @obs_properties_add_int_slider(i32* %39, i32 %40, i32 %41, i32 1, i32 1000, i32 1)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @SETTING_OPACITY, align 4
  %45 = load i32, i32* @TEXT_OPACITY, align 4
  %46 = call i32 @obs_properties_add_int_slider(i32* %43, i32 %44, i32 %45, i32 0, i32 100, i32 1)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @SETTING_CONTRAST, align 4
  %49 = load i32, i32* @TEXT_CONTRAST, align 4
  %50 = call i32 @obs_properties_add_float_slider(i32* %47, i32 %48, i32 %49, double -1.000000e+00, double 1.000000e+00, double 1.000000e-02)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @SETTING_BRIGHTNESS, align 4
  %53 = load i32, i32* @TEXT_BRIGHTNESS, align 4
  %54 = call i32 @obs_properties_add_float_slider(i32* %51, i32 %52, i32 %53, double -1.000000e+00, double 1.000000e+00, double 1.000000e-02)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @SETTING_GAMMA, align 4
  %57 = load i32, i32* @TEXT_GAMMA, align 4
  %58 = call i32 @obs_properties_add_float_slider(i32* %55, i32 %56, i32 %57, double -1.000000e+00, double 1.000000e+00, double 1.000000e-02)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @UNUSED_PARAMETER(i8* %59)
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i8*) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32 @obs_properties_add_color(i32*, i32, i32) #1

declare dso_local i32 @obs_properties_add_int_slider(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_properties_add_float_slider(i32*, i32, i32, double, double, double) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
