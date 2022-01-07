; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_PRESETS = common dso_local global i32 0, align 4
@TEXT_PRESETS = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@TEXT_PRESETS_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"expander\00", align 1
@TEXT_PRESETS_GATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gate\00", align 1
@presets_changed = common dso_local global i32 0, align 4
@S_RATIO = common dso_local global i32 0, align 4
@TEXT_RATIO = common dso_local global i32 0, align 4
@MIN_RATIO = common dso_local global i32 0, align 4
@MAX_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c":1\00", align 1
@S_THRESHOLD = common dso_local global i32 0, align 4
@TEXT_THRESHOLD = common dso_local global i32 0, align 4
@MIN_THRESHOLD_DB = common dso_local global i32 0, align 4
@MAX_THRESHOLD_DB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" dB\00", align 1
@S_ATTACK_TIME = common dso_local global i32 0, align 4
@TEXT_ATTACK_TIME = common dso_local global i32 0, align 4
@MIN_ATK_RLS_MS = common dso_local global i32 0, align 4
@MAX_ATK_MS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@TEXT_RELEASE_TIME = common dso_local global i32 0, align 4
@MAX_RLS_MS = common dso_local global i32 0, align 4
@S_OUTPUT_GAIN = common dso_local global i32 0, align 4
@TEXT_OUTPUT_GAIN = common dso_local global i32 0, align 4
@MIN_OUTPUT_GAIN_DB = common dso_local global i32 0, align 4
@MAX_OUTPUT_GAIN_DB = common dso_local global i32 0, align 4
@S_DETECTOR = common dso_local global i32 0, align 4
@TEXT_DETECTOR = common dso_local global i32 0, align 4
@TEXT_RMS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@TEXT_PEAK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"peak\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @expander_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @expander_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32* (...) @obs_properties_create()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @S_PRESETS, align 4
  %10 = load i32, i32* @TEXT_PRESETS, align 4
  %11 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %12 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %13 = call i32* @obs_properties_add_list(i32* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @TEXT_PRESETS_EXP, align 4
  %16 = call i32 @obs_property_list_add_string(i32* %14, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @TEXT_PRESETS_GATE, align 4
  %19 = call i32 @obs_property_list_add_string(i32* %17, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @presets_changed, align 4
  %22 = call i32 @obs_property_set_modified_callback(i32* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @S_RATIO, align 4
  %25 = load i32, i32* @TEXT_RATIO, align 4
  %26 = load i32, i32* @MIN_RATIO, align 4
  %27 = load i32, i32* @MAX_RATIO, align 4
  %28 = call i32* @obs_properties_add_float_slider(i32* %23, i32 %24, i32 %25, i32 %26, i32 %27, double 1.000000e-01)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @obs_property_float_set_suffix(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @S_THRESHOLD, align 4
  %33 = load i32, i32* @TEXT_THRESHOLD, align 4
  %34 = load i32, i32* @MIN_THRESHOLD_DB, align 4
  %35 = load i32, i32* @MAX_THRESHOLD_DB, align 4
  %36 = call i32* @obs_properties_add_float_slider(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, double 1.000000e-01)
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @obs_property_float_set_suffix(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @S_ATTACK_TIME, align 4
  %41 = load i32, i32* @TEXT_ATTACK_TIME, align 4
  %42 = load i32, i32* @MIN_ATK_RLS_MS, align 4
  %43 = load i32, i32* @MAX_ATK_MS, align 4
  %44 = call i32* @obs_properties_add_int_slider(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 1)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @obs_property_int_set_suffix(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @S_RELEASE_TIME, align 4
  %49 = load i32, i32* @TEXT_RELEASE_TIME, align 4
  %50 = load i32, i32* @MIN_ATK_RLS_MS, align 4
  %51 = load i32, i32* @MAX_RLS_MS, align 4
  %52 = call i32* @obs_properties_add_int_slider(i32* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 1)
  store i32* %52, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @obs_property_int_set_suffix(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @S_OUTPUT_GAIN, align 4
  %57 = load i32, i32* @TEXT_OUTPUT_GAIN, align 4
  %58 = load i32, i32* @MIN_OUTPUT_GAIN_DB, align 4
  %59 = load i32, i32* @MAX_OUTPUT_GAIN_DB, align 4
  %60 = call i32* @obs_properties_add_float_slider(i32* %55, i32 %56, i32 %57, i32 %58, i32 %59, double 1.000000e-01)
  store i32* %60, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @obs_property_float_set_suffix(i32* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @S_DETECTOR, align 4
  %65 = load i32, i32* @TEXT_DETECTOR, align 4
  %66 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %67 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %68 = call i32* @obs_properties_add_list(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @TEXT_RMS, align 4
  %71 = call i32 @obs_property_list_add_string(i32* %69, i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @TEXT_PEAK, align 4
  %74 = call i32 @obs_property_list_add_string(i32* %72, i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i8*, i8** %2, align 8
  %76 = call i32 @UNUSED_PARAMETER(i8* %75)
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i8*) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32* @obs_properties_add_float_slider(i32*, i32, i32, i32, i32, double) #1

declare dso_local i32 @obs_property_float_set_suffix(i32*, i8*) #1

declare dso_local i32* @obs_properties_add_int_slider(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
