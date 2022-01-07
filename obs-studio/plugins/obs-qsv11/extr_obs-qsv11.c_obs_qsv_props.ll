; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_obs_qsv_props.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_obs_qsv_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"target_usage\00", align 1
@TEXT_SPEED = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@qsv_usage_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@TEXT_PROFILE = common dso_local global i32 0, align 4
@qsv_profile_names = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"keyint_sec\00", align 1
@TEXT_KEYINT_SEC = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"async_depth\00", align 1
@TEXT_ASYNC_DEPTH = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@TEXT_RATE_CONTROL = common dso_local global i32 0, align 4
@qsv_ratecontrols = common dso_local global i32 0, align 4
@rate_control_modified = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@TEXT_TARGET_BITRATE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" Kbps\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@TEXT_MAX_BITRATE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@TEXT_ACCURACY = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"convergence\00", align 1
@TEXT_CONVERGENCE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"qpi\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"QPI\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"qpp\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"QPP\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"qpb\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"QPB\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"icq_quality\00", align 1
@TEXT_ICQ_QUALITY = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"la_depth\00", align 1
@TEXT_LA_DEPTH = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@TEXT_BFRAMES = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"mbbrc\00", align 1
@TEXT_MBBRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @obs_qsv_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @obs_qsv_props(i8* %0) #0 {
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
  %10 = load i32, i32* @TEXT_SPEED, align 4
  %11 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %12 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %13 = call i32* @obs_properties_add_list(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @qsv_usage_names, align 4
  %16 = call i32 @add_strings(i32* %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @TEXT_PROFILE, align 4
  %19 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %20 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %21 = call i32* @obs_properties_add_list(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @qsv_profile_names, align 4
  %24 = call i32 @add_strings(i32* %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** @TEXT_KEYINT_SEC, align 8
  %27 = call i32* @obs_properties_add_int(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 1, i32 20, i32 1)
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** @TEXT_ASYNC_DEPTH, align 8
  %30 = call i32* @obs_properties_add_int(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %29, i32 1, i32 7, i32 1)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @TEXT_RATE_CONTROL, align 4
  %33 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %34 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %35 = call i32* @obs_properties_add_list(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @qsv_ratecontrols, align 4
  %38 = call i32 @add_rate_controls(i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @rate_control_modified, align 4
  %41 = call i32 @obs_property_set_modified_callback(i32* %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i8*, i8** @TEXT_TARGET_BITRATE, align 8
  %44 = call i32* @obs_properties_add_int(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %43, i32 50, i32 10000000, i32 50)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @obs_property_int_set_suffix(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** @TEXT_MAX_BITRATE, align 8
  %49 = call i32* @obs_properties_add_int(i32* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %48, i32 50, i32 10000000, i32 50)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @obs_property_int_set_suffix(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** @TEXT_ACCURACY, align 8
  %54 = call i32* @obs_properties_add_int(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %53, i32 0, i32 10000, i32 1)
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** @TEXT_CONVERGENCE, align 8
  %57 = call i32* @obs_properties_add_int(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %56, i32 0, i32 10, i32 1)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32* @obs_properties_add_int(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 1, i32 51, i32 1)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @obs_properties_add_int(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 1, i32 51, i32 1)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32* @obs_properties_add_int(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 1, i32 51, i32 1)
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** @TEXT_ICQ_QUALITY, align 8
  %66 = call i32* @obs_properties_add_int(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %65, i32 1, i32 51, i32 1)
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** @TEXT_LA_DEPTH, align 8
  %69 = call i32* @obs_properties_add_int(i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %68, i32 10, i32 100, i32 1)
  %70 = load i32*, i32** %3, align 8
  %71 = load i8*, i8** @TEXT_BFRAMES, align 8
  %72 = call i32* @obs_properties_add_int(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* %71, i32 0, i32 3, i32 1)
  %73 = call i64 (...) @is_skl_or_greater_platform()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %1
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* @TEXT_MBBRC, align 4
  %78 = call i32 @obs_properties_add_bool(i32* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %1
  %80 = load i32*, i32** %3, align 8
  ret i32* %80
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @add_strings(i32*, i32) #1

declare dso_local i32* @obs_properties_add_int(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @add_rate_controls(i32*, i32) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i64 @is_skl_or_greater_platform(...) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
