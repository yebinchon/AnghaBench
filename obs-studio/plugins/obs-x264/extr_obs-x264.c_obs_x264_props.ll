; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_props.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@TEXT_RATE_CONTROL = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ABR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"VBR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CRF\00", align 1
@rate_control_modified = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@TEXT_BITRATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" Kbps\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"use_bufsize\00", align 1
@TEXT_CUSTOM_BUF = common dso_local global i32 0, align 4
@use_bufsize_modified = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@TEXT_BUF_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@TEXT_CRF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"keyint_sec\00", align 1
@TEXT_KEYINT_SEC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@TEXT_PRESET = common dso_local global i32 0, align 4
@x264_preset_names = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@TEXT_PROFILE = common dso_local global i32 0, align 4
@TEXT_NONE = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@TEXT_TUNE = common dso_local global i32 0, align 4
@x264_tune_names = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"x264opts\00", align 1
@TEXT_X264_OPTS = common dso_local global i32 0, align 4
@OBS_TEXT_DEFAULT = common dso_local global i32 0, align 4
@TEXT_VFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @obs_x264_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @obs_x264_props(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @UNUSED_PARAMETER(i8* %6)
  %8 = call i32* (...) @obs_properties_create()
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @TEXT_RATE_CONTROL, align 4
  %11 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %12 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %13 = call i32* @obs_properties_add_list(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @obs_property_list_add_string(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @obs_property_list_add_string(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @obs_property_list_add_string(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @obs_property_list_add_string(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @rate_control_modified, align 4
  %24 = call i32 @obs_property_set_modified_callback(i32* %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @TEXT_BITRATE, align 4
  %27 = call i32* @obs_properties_add_int(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32 50, i32 10000000, i32 50)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @obs_property_int_set_suffix(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @TEXT_CUSTOM_BUF, align 4
  %32 = call i32* @obs_properties_add_bool(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @use_bufsize_modified, align 4
  %35 = call i32 @obs_property_set_modified_callback(i32* %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @TEXT_BUF_SIZE, align 4
  %38 = call i32* @obs_properties_add_int(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %37, i32 0, i32 10000000, i32 1)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @TEXT_CRF, align 4
  %41 = call i32* @obs_properties_add_int(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %40, i32 0, i32 51, i32 1)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @TEXT_KEYINT_SEC, align 4
  %44 = call i32* @obs_properties_add_int(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %43, i32 0, i32 20, i32 1)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @TEXT_PRESET, align 4
  %47 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %48 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %49 = call i32* @obs_properties_add_list(i32* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @x264_preset_names, align 4
  %52 = call i32 @add_strings(i32* %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @TEXT_PROFILE, align 4
  %55 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %56 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %57 = call i32* @obs_properties_add_list(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  store i32* %57, i32** %4, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i8*, i8** @TEXT_NONE, align 8
  %60 = call i32 @obs_property_list_add_string(i32* %58, i8* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @obs_property_list_add_string(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @obs_property_list_add_string(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @obs_property_list_add_string(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @TEXT_TUNE, align 4
  %69 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %70 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %71 = call i32* @obs_properties_add_list(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  store i32* %71, i32** %4, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i8*, i8** @TEXT_NONE, align 8
  %74 = call i32 @obs_property_list_add_string(i32* %72, i8* %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @x264_tune_names, align 4
  %77 = call i32 @add_strings(i32* %75, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @TEXT_X264_OPTS, align 4
  %80 = load i32, i32* @OBS_TEXT_DEFAULT, align 4
  %81 = call i32 @obs_properties_add_text(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32*, i32** %3, align 8
  ret i32* %82
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32* @obs_properties_add_int(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i32* @obs_properties_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @add_strings(i32*, i32) #1

declare dso_local i32 @obs_properties_add_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
