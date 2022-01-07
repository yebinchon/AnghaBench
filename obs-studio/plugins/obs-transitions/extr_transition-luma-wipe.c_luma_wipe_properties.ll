; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-luma-wipe.c_luma_wipe_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-luma-wipe.c_luma_wipe_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luma_wipe_info = type { i32 }

@S_LUMA_IMG = common dso_local global i32 0, align 4
@T_LUMA_IMG = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@S_LUMA_SOFT = common dso_local global i32 0, align 4
@T_LUMA_SOFT = common dso_local global i32 0, align 4
@S_LUMA_INV = common dso_local global i32 0, align 4
@T_LUMA_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @luma_wipe_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @luma_wipe_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.luma_wipe_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i32* (...) @obs_properties_create()
  store i32* %9, i32** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.luma_wipe_info*
  store %struct.luma_wipe_info* %11, %struct.luma_wipe_info** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @S_LUMA_IMG, align 4
  %14 = load i32, i32* @T_LUMA_IMG, align 4
  %15 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %16 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %17 = call i32* @obs_properties_add_list(i32* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load %struct.luma_wipe_info*, %struct.luma_wipe_info** %4, align 8
  %19 = getelementptr inbounds %struct.luma_wipe_info, %struct.luma_wipe_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @obs_data_first(i32 %20)
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %35, %1
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @obs_data_item_get_name(i32* %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @obs_data_item_get_string(i32* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @obs_module_text(i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @obs_property_list_add_string(i32* %30, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %25
  %36 = call i32 @obs_data_item_next(i32** %6)
  br label %22

37:                                               ; preds = %22
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @S_LUMA_SOFT, align 4
  %40 = load i32, i32* @T_LUMA_SOFT, align 4
  %41 = call i32 @obs_properties_add_float(i32* %38, i32 %39, i32 %40, double 0.000000e+00, double 1.000000e+00, double 5.000000e-02)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @S_LUMA_INV, align 4
  %44 = load i32, i32* @T_LUMA_INV, align 4
  %45 = call i32 @obs_properties_add_bool(i32* %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @obs_data_first(i32) #1

declare dso_local i8* @obs_data_item_get_name(i32*) #1

declare dso_local i8* @obs_data_item_get_string(i32*) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i8*) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_data_item_next(i32**) #1

declare dso_local i32 @obs_properties_add_float(i32*, i32, i32, double, double, double) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
