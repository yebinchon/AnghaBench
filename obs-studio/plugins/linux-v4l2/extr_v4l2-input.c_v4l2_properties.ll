; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@OBS_COMBO_FORMAT_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"pixelformat\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"VideoFormat\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"VideoStandard\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"dv_timing\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"DVTiming\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"FrameRate\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"color_range\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ColorRange\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"ColorRange.Default\00", align 1
@VIDEO_RANGE_DEFAULT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"ColorRange.Partial\00", align 1
@VIDEO_RANGE_PARTIAL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"ColorRange.Full\00", align 1
@VIDEO_RANGE_FULL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"buffering\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"UseBuffering\00", align 1
@data = common dso_local global %struct.TYPE_2__* null, align 8
@device_selected = common dso_local global i32 0, align 4
@input_selected = common dso_local global i32 0, align 4
@format_selected = common dso_local global i32 0, align 4
@resolution_selected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @v4l2_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @v4l2_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @V4L2_DATA(i8* %12)
  %14 = call i32* (...) @obs_properties_create()
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %18 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %19 = call i32* @obs_properties_add_list(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @obs_module_text(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %23 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %24 = call i32* @obs_properties_add_list(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @obs_module_text(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %28 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %29 = call i32* @obs_properties_add_list(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @obs_module_text(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %33 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %34 = call i32* @obs_properties_add_list(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @obs_property_set_visible(i32* %35, i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @obs_module_text(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %39 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %40 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %41 = call i32* @obs_properties_add_list(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @obs_property_set_visible(i32* %42, i32 0)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @obs_module_text(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %46 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %47 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %48 = call i32* @obs_properties_add_list(i32* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @obs_module_text(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %51 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %52 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %53 = call i32* @obs_properties_add_list(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @obs_module_text(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %56 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %57 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %58 = call i32* @obs_properties_add_list(i32* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @obs_module_text(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %61 = load i32, i32* @VIDEO_RANGE_DEFAULT, align 4
  %62 = call i32 @obs_property_list_add_int(i32* %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @obs_module_text(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %65 = load i32, i32* @VIDEO_RANGE_PARTIAL, align 4
  %66 = call i32 @obs_property_list_add_int(i32* %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %69 = load i32, i32* @VIDEO_RANGE_FULL, align 4
  %70 = call i32 @obs_property_list_add_int(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @obs_module_text(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %73 = call i32 @obs_properties_add_bool(i32* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @obs_source_get_settings(i32 %76)
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @v4l2_device_list(i32* %78, i32* %79)
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @obs_data_release(i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @device_selected, align 4
  %85 = call i32 @obs_property_set_modified_callback(i32* %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @input_selected, align 4
  %88 = call i32 @obs_property_set_modified_callback(i32* %86, i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @format_selected, align 4
  %91 = call i32 @obs_property_set_modified_callback(i32* %89, i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* @resolution_selected, align 4
  %94 = call i32 @obs_property_set_modified_callback(i32* %92, i32 %93)
  %95 = load i32*, i32** %3, align 8
  ret i32* %95
}

declare dso_local i32 @V4L2_DATA(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_property_set_visible(i32*, i32) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i8*, i32) #1

declare dso_local i32* @obs_source_get_settings(i32) #1

declare dso_local i32 @v4l2_device_list(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
