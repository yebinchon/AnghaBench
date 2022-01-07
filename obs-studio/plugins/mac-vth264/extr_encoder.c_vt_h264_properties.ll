; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@TEXT_BITRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" Kbps\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"limit_bitrate\00", align 1
@TEXT_USE_MAX_BITRATE = common dso_local global i32 0, align 4
@limit_bitrate_modified = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@TEXT_MAX_BITRATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"max_bitrate_window\00", align 1
@TEXT_MAX_BITRATE_WINDOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"keyint_sec\00", align 1
@TEXT_KEYINT_SEC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@TEXT_PROFILE = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@TEXT_NONE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@TEXT_BFRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @vt_h264_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vt_h264_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @UNUSED_PARAMETER(i8* %5)
  %7 = call i32* (...) @obs_properties_create()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @TEXT_BITRATE, align 4
  %10 = call i32* @obs_properties_add_int(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9, i32 50, i32 10000000, i32 50)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @obs_property_int_set_suffix(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @TEXT_USE_MAX_BITRATE, align 4
  %15 = call i32* @obs_properties_add_bool(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @limit_bitrate_modified, align 4
  %18 = call i32 @obs_property_set_modified_callback(i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @TEXT_MAX_BITRATE, align 4
  %21 = call i32* @obs_properties_add_int(i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 50, i32 10000000, i32 50)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @obs_property_int_set_suffix(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @TEXT_MAX_BITRATE_WINDOW, align 4
  %26 = call i32 @obs_properties_add_float(i32* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %25, float 0x3FB99999A0000000, float 1.000000e+01, float 2.500000e-01)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @TEXT_KEYINT_SEC, align 4
  %29 = call i32* @obs_properties_add_int(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %28, i32 0, i32 20, i32 1)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @TEXT_PROFILE, align 4
  %32 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %33 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %34 = call i32* @obs_properties_add_list(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** @TEXT_NONE, align 8
  %37 = call i32 @obs_property_list_add_string(i32* %35, i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @obs_property_list_add_string(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @obs_property_list_add_string(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @obs_property_list_add_string(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @TEXT_BFRAMES, align 4
  %46 = call i32* @obs_properties_add_bool(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_int(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i32* @obs_properties_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32 @obs_properties_add_float(i32*, i8*, i32, float, float, float) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
