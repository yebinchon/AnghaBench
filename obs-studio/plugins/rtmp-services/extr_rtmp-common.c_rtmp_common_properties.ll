; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_rtmp_common_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_rtmp_common_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@properties_data_destroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Service\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@service_selected = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"show_all\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ShowAll\00", align 1
@show_all_services_toggled = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"StreamKey\00", align 1
@OBS_TEXT_PASSWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @rtmp_common_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtmp_common_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @UNUSED_PARAMETER(i8* %6)
  %8 = call i32* (...) @obs_properties_create()
  store i32* %8, i32** %3, align 8
  %9 = call i32* (...) @open_services_file()
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @properties_data_destroy, align 4
  %16 = call i32 @obs_properties_set_param(i32* %13, i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %21 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %22 = call i32* @obs_properties_add_list(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @service_selected, align 4
  %25 = call i32 @obs_property_set_modified_callback(i32* %23, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32* @obs_properties_add_bool(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @show_all_services_toggled, align 4
  %31 = call i32 @obs_property_set_modified_callback(i32* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %35 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %36 = call i32* @obs_properties_add_list(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @obs_module_text(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %39 = load i32, i32* @OBS_TEXT_PASSWORD, align 4
  %40 = call i32 @obs_properties_add_text(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @open_services_file(...) #1

declare dso_local i32 @obs_properties_set_param(i32*, i32*, i32) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32* @obs_properties_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_properties_add_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
