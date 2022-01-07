; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_wc_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_wc_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"window\00", align 1
@TEXT_WINDOW = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@EXCLUDE_MINIMIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@TEXT_MATCH_PRIORITY = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_INT = common dso_local global i32 0, align 4
@TEXT_MATCH_TITLE = common dso_local global i32 0, align 4
@WINDOW_PRIORITY_TITLE = common dso_local global i32 0, align 4
@TEXT_MATCH_CLASS = common dso_local global i32 0, align 4
@WINDOW_PRIORITY_CLASS = common dso_local global i32 0, align 4
@TEXT_MATCH_EXE = common dso_local global i32 0, align 4
@WINDOW_PRIORITY_EXE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@TEXT_CAPTURE_CURSOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"compatibility\00", align 1
@TEXT_COMPATIBILITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @wc_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wc_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @UNUSED_PARAMETER(i8* %5)
  %7 = call i32* (...) @obs_properties_create()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @TEXT_WINDOW, align 4
  %10 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %11 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %12 = call i32* @obs_properties_add_list(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @EXCLUDE_MINIMIZED, align 4
  %15 = call i32 @fill_window_list(i32* %13, i32 %14, i32* null)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @TEXT_MATCH_PRIORITY, align 4
  %18 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %19 = load i32, i32* @OBS_COMBO_FORMAT_INT, align 4
  %20 = call i32* @obs_properties_add_list(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @TEXT_MATCH_TITLE, align 4
  %23 = load i32, i32* @WINDOW_PRIORITY_TITLE, align 4
  %24 = call i32 @obs_property_list_add_int(i32* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @TEXT_MATCH_CLASS, align 4
  %27 = load i32, i32* @WINDOW_PRIORITY_CLASS, align 4
  %28 = call i32 @obs_property_list_add_int(i32* %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @TEXT_MATCH_EXE, align 4
  %31 = load i32, i32* @WINDOW_PRIORITY_EXE, align 4
  %32 = call i32 @obs_property_list_add_int(i32* %29, i32 %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @TEXT_CAPTURE_CURSOR, align 4
  %35 = call i32 @obs_properties_add_bool(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @TEXT_COMPATIBILITY, align 4
  %38 = call i32 @obs_properties_add_bool(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @fill_window_list(i32*, i32, i32*) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
