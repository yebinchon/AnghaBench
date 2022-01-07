; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-nvenc.c_nvenc_properties_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-nvenc.c_nvenc_properties_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"RateControl\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CQP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"VBR\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"lossless\00", align 1
@rate_control_modified = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" Kbps\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"MaxBitrate\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cqp\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"NVENC.CQLevel\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"keyint_sec\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"KeyframeIntervalSec\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Preset\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"NVENC.Preset.mq\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"mq\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"NVENC.Preset.hq\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"hq\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"NVENC.Preset.default\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"NVENC.Preset.hp\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"NVENC.Preset.ll\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"NVENC.Preset.llhq\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"llhq\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"NVENC.Preset.llhp\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"llhp\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Profile\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"lookahead\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"NVENC.LookAhead\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"NVENC.LookAhead.ToolTip\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"psycho_aq\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"NVENC.PsychoVisualTuning\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"NVENC.PsychoVisualTuning.ToolTip\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"GPU\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"bf\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"BFrames\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvenc_properties_internal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32* (...) @obs_properties_create()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @obs_module_text(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %9 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %10 = call i32* @obs_properties_add_list(i32* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8, i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @obs_property_list_add_string(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @obs_property_list_add_string(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @obs_property_list_add_string(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @obs_module_text(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @obs_property_list_add_string(i32* %17, i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @rate_control_modified, align 4
  %22 = call i32 @obs_property_set_modified_callback(i32* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32* @obs_properties_add_int(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %24, i32 50, i32 300000, i32 50)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @obs_property_int_set_suffix(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i8* @obs_module_text(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %30 = call i32* @obs_properties_add_int(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %29, i32 50, i32 300000, i32 50)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @obs_property_int_set_suffix(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i8* @obs_module_text(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %35 = call i32* @obs_properties_add_int(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %34, i32 1, i32 30, i32 1)
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @obs_module_text(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %38 = call i32* @obs_properties_add_int(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %37, i32 0, i32 10, i32 1)
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %41 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %42 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %43 = call i32* @obs_properties_add_list(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %40, i32 %41, i32 %42)
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %46 = call i32 @obs_property_list_add_string(i32* %44, i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %49 = call i32 @obs_property_list_add_string(i32* %47, i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @obs_module_text(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %52 = call i32 @obs_property_list_add_string(i32* %50, i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %55 = call i32 @obs_property_list_add_string(i32* %53, i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %58 = call i32 @obs_property_list_add_string(i32* %56, i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %59 = load i32*, i32** %4, align 8
  %60 = call i8* @obs_module_text(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  %61 = call i32 @obs_property_list_add_string(i32* %59, i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @obs_module_text(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %64 = call i32 @obs_property_list_add_string(i32* %62, i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %65 = load i32*, i32** %3, align 8
  %66 = call i8* @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  %67 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %68 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %69 = call i32* @obs_properties_add_list(i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* %66, i32 %67, i32 %68)
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @obs_property_list_add_string(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @obs_property_list_add_string(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @obs_property_list_add_string(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0))
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %1
  %79 = load i32*, i32** %3, align 8
  %80 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %81 = call i32* @obs_properties_add_bool(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* %80)
  store i32* %81, i32** %4, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i8* @obs_module_text(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0))
  %84 = call i32 @obs_property_set_long_description(i32* %82, i8* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i8* @obs_module_text(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0))
  %87 = call i32* @obs_properties_add_bool(i32* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* %86)
  store i32* %87, i32** %4, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i8* @obs_module_text(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0))
  %90 = call i32 @obs_property_set_long_description(i32* %88, i8* %89)
  br label %91

91:                                               ; preds = %78, %1
  %92 = load i32*, i32** %3, align 8
  %93 = call i8* @obs_module_text(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  %94 = call i32* @obs_properties_add_int(i32* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* %93, i32 0, i32 8, i32 1)
  %95 = load i32*, i32** %3, align 8
  %96 = call i8* @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0))
  %97 = call i32* @obs_properties_add_int(i32* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i8* %96, i32 0, i32 4, i32 1)
  %98 = load i32*, i32** %3, align 8
  ret i32* %98
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i8*, i32, i32) #1

declare dso_local i8* @obs_module_text(i8*) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32* @obs_properties_add_int(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i32* @obs_properties_add_bool(i32*, i8*, i8*) #1

declare dso_local i32 @obs_property_set_long_description(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
