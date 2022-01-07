; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"show_cursor\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"CaptureCursor\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"advanced\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"AdvancedSettings\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"XServer\00", align 1
@OBS_TEXT_DEFAULT = common dso_local global i32 0, align 4
@xshm_toggle_advanced = common dso_local global i32 0, align 4
@xshm_server_changed = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @xshm_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xshm_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @XSHM_DATA(i8* %7)
  %9 = call i32* (...) @obs_properties_create()
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %13 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %14 = call i32 @obs_properties_add_list(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @obs_module_text(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32* @obs_properties_add_bool(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @obs_module_text(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32* @obs_properties_add_bool(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i32, i32* @OBS_TEXT_DEFAULT, align 4
  %24 = call i32* @obs_properties_add_text(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %22, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @xshm_toggle_advanced, align 4
  %27 = call i32 @obs_property_set_modified_callback(i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @xshm_server_changed, align 4
  %30 = call i32 @obs_property_set_modified_callback(i32* %28, i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @obs_source_get_settings(i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @obs_property_modified(i32* %35, i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @obs_data_release(i32* %38)
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @XSHM_DATA(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32 @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32* @obs_properties_add_bool(i32*, i8*, i32) #1

declare dso_local i32* @obs_properties_add_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32* @obs_source_get_settings(i32) #1

declare dso_local i32 @obs_property_modified(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
