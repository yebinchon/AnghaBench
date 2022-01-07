; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_stinger_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_stinger_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBS_PROPERTIES_DEFER_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"VideoFile\00", align 1
@OBS_PATH_FILE = common dso_local global i32 0, align 4
@FILE_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"tp_type\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"TransitionPointType\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"TransitionPointTypeTime\00", align 1
@TIMING_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"TransitionPointTypeFrame\00", align 1
@TIMING_FRAME = common dso_local global i32 0, align 4
@transition_point_type_modified = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"transition_point\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"TransitionPoint\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"audio_monitoring\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"AudioMonitoring\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"AudioMonitoring.None\00", align 1
@OBS_MONITORING_TYPE_NONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"AudioMonitoring.MonitorOnly\00", align 1
@OBS_MONITORING_TYPE_MONITOR_ONLY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"AudioMonitoring.Both\00", align 1
@OBS_MONITORING_TYPE_MONITOR_AND_OUTPUT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"audio_fade_style\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"AudioFadeStyle\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"AudioFadeStyle.FadeOutFadeIn\00", align 1
@FADE_STYLE_FADE_OUT_FADE_IN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"AudioFadeStyle.CrossFade\00", align 1
@FADE_STYLE_CROSS_FADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @stinger_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stinger_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32* (...) @obs_properties_create()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @OBS_PROPERTIES_DEFER_UPDATE, align 4
  %10 = call i32 @obs_properties_set_flags(i32* %8, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @obs_module_text(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @OBS_PATH_FILE, align 4
  %14 = load i32, i32* @FILE_FILTER, align 4
  %15 = call i32 @obs_properties_add_path(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14, i32* null)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @obs_module_text(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %19 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %20 = call i32* @obs_properties_add_list(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @obs_module_text(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* @TIMING_TIME, align 4
  %24 = call i32 @obs_property_list_add_int(i32* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @obs_module_text(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @TIMING_FRAME, align 4
  %28 = call i32 @obs_property_list_add_int(i32* %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @transition_point_type_modified, align 4
  %31 = call i32 @obs_property_set_modified_callback(i32* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i32 @obs_properties_add_int(i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %33, i32 0, i32 120000, i32 1)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %37 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %38 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %39 = call i32* @obs_properties_add_list(i32* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @obs_module_text(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %42 = load i32, i32* @OBS_MONITORING_TYPE_NONE, align 4
  %43 = call i32 @obs_property_list_add_int(i32* %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @obs_module_text(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %46 = load i32, i32* @OBS_MONITORING_TYPE_MONITOR_ONLY, align 4
  %47 = call i32 @obs_property_list_add_int(i32* %44, i32 %45, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @obs_module_text(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %50 = load i32, i32* @OBS_MONITORING_TYPE_MONITOR_AND_OUTPUT, align 4
  %51 = call i32 @obs_property_list_add_int(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @obs_module_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %54 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %55 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %56 = call i32* @obs_properties_add_list(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @obs_module_text(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %59 = load i32, i32* @FADE_STYLE_FADE_OUT_FADE_IN, align 4
  %60 = call i32 @obs_property_list_add_int(i32* %57, i32 %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @obs_module_text(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %63 = load i32, i32* @FADE_STYLE_CROSS_FADE, align 4
  %64 = call i32 @obs_property_list_add_int(i32* %61, i32 %62, i32 %63)
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @UNUSED_PARAMETER(i8* %65)
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32 @obs_properties_set_flags(i32*, i32) #1

declare dso_local i32 @obs_properties_add_path(i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32 @obs_properties_add_int(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
