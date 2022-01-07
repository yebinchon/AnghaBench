; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@pulse_input_info = common dso_local global i32 0, align 4
@pulse_output_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @pulse_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pulse_properties(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32* (...) @obs_properties_create()
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %10 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %11 = call i32* @obs_properties_add_list(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = call i32 (...) @pulse_init()
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @pulse_input_info, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @pulse_get_source_info_list(i32 %16, i8* %18)
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @pulse_output_info, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @pulse_get_sink_info_list(i32 %21, i8* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = call i32 (...) @pulse_unref()
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @obs_property_list_item_count(i32* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @obs_property_list_insert_string(i32* %32, i32 0, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @pulse_init(...) #1

declare dso_local i32 @pulse_get_source_info_list(i32, i8*) #1

declare dso_local i32 @pulse_get_sink_info_list(i32, i8*) #1

declare dso_local i32 @pulse_unref(...) #1

declare dso_local i64 @obs_property_list_item_count(i32*) #1

declare dso_local i32 @obs_property_list_insert_string(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
