; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor_data = type { i32 }
%struct.sidechain_prop_info = type { i32*, i32* }

@S_RATIO = common dso_local global i32 0, align 4
@TEXT_RATIO = common dso_local global i32 0, align 4
@MIN_RATIO = common dso_local global i32 0, align 4
@MAX_RATIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c":1\00", align 1
@S_THRESHOLD = common dso_local global i32 0, align 4
@TEXT_THRESHOLD = common dso_local global i32 0, align 4
@MIN_THRESHOLD_DB = common dso_local global i32 0, align 4
@MAX_THRESHOLD_DB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" dB\00", align 1
@S_ATTACK_TIME = common dso_local global i32 0, align 4
@TEXT_ATTACK_TIME = common dso_local global i32 0, align 4
@MIN_ATK_RLS_MS = common dso_local global i32 0, align 4
@MAX_ATK_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@TEXT_RELEASE_TIME = common dso_local global i32 0, align 4
@MAX_RLS_MS = common dso_local global i32 0, align 4
@S_OUTPUT_GAIN = common dso_local global i32 0, align 4
@TEXT_OUTPUT_GAIN = common dso_local global i32 0, align 4
@MIN_OUTPUT_GAIN_DB = common dso_local global i32 0, align 4
@MAX_OUTPUT_GAIN_DB = common dso_local global i32 0, align 4
@S_SIDECHAIN_SOURCE = common dso_local global i32 0, align 4
@TEXT_SIDECHAIN_SOURCE = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@add_sources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @compressor_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compressor_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.compressor_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sidechain_prop_info, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.compressor_data*
  store %struct.compressor_data* %10, %struct.compressor_data** %3, align 8
  %11 = call i32* (...) @obs_properties_create()
  store i32* %11, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %12 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %13 = icmp ne %struct.compressor_data* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %16 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @obs_filter_get_parent(i32 %17)
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @S_RATIO, align 4
  %22 = load i32, i32* @TEXT_RATIO, align 4
  %23 = load i32, i32* @MIN_RATIO, align 4
  %24 = load i32, i32* @MAX_RATIO, align 4
  %25 = call i32* @obs_properties_add_float_slider(i32* %20, i32 %21, i32 %22, i32 %23, i32 %24, double 5.000000e-01)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @obs_property_float_set_suffix(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @S_THRESHOLD, align 4
  %30 = load i32, i32* @TEXT_THRESHOLD, align 4
  %31 = load i32, i32* @MIN_THRESHOLD_DB, align 4
  %32 = load i32, i32* @MAX_THRESHOLD_DB, align 4
  %33 = call i32* @obs_properties_add_float_slider(i32* %28, i32 %29, i32 %30, i32 %31, i32 %32, double 1.000000e-01)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @obs_property_float_set_suffix(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @S_ATTACK_TIME, align 4
  %38 = load i32, i32* @TEXT_ATTACK_TIME, align 4
  %39 = load i32, i32* @MIN_ATK_RLS_MS, align 4
  %40 = load i32, i32* @MAX_ATK_MS, align 4
  %41 = call i32* @obs_properties_add_int_slider(i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 1)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @obs_property_int_set_suffix(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @S_RELEASE_TIME, align 4
  %46 = load i32, i32* @TEXT_RELEASE_TIME, align 4
  %47 = load i32, i32* @MIN_ATK_RLS_MS, align 4
  %48 = load i32, i32* @MAX_RLS_MS, align 4
  %49 = call i32* @obs_properties_add_int_slider(i32* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 1)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @obs_property_int_set_suffix(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @S_OUTPUT_GAIN, align 4
  %54 = load i32, i32* @TEXT_OUTPUT_GAIN, align 4
  %55 = load i32, i32* @MIN_OUTPUT_GAIN_DB, align 4
  %56 = load i32, i32* @MAX_OUTPUT_GAIN_DB, align 4
  %57 = call i32* @obs_properties_add_float_slider(i32* %52, i32 %53, i32 %54, i32 %55, i32 %56, double 1.000000e-01)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @obs_property_float_set_suffix(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @S_SIDECHAIN_SOURCE, align 4
  %62 = load i32, i32* @TEXT_SIDECHAIN_SOURCE, align 4
  %63 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %64 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %65 = call i32* @obs_properties_add_list(i32* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @obs_module_text(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @obs_property_list_add_string(i32* %66, i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.sidechain_prop_info, %struct.sidechain_prop_info* %8, i32 0, i32 0
  %70 = load i32*, i32** %7, align 8
  store i32* %70, i32** %69, align 8
  %71 = getelementptr inbounds %struct.sidechain_prop_info, %struct.sidechain_prop_info* %8, i32 0, i32 1
  %72 = load i32*, i32** %5, align 8
  store i32* %72, i32** %71, align 8
  %73 = load i32, i32* @add_sources, align 4
  %74 = call i32 @obs_enum_sources(i32 %73, %struct.sidechain_prop_info* %8)
  %75 = load i8*, i8** %2, align 8
  %76 = call i32 @UNUSED_PARAMETER(i8* %75)
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_filter_get_parent(i32) #1

declare dso_local i32* @obs_properties_add_float_slider(i32*, i32, i32, i32, i32, double) #1

declare dso_local i32 @obs_property_float_set_suffix(i32*, i8*) #1

declare dso_local i32* @obs_properties_add_int_slider(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i8*) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_enum_sources(i32, %struct.sidechain_prop_info*) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
