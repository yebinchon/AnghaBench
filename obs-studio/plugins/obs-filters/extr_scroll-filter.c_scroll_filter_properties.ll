; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"speed_x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ScrollFilter.SpeedX\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"speed_y\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ScrollFilter.SpeedY\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"limit_cx\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ScrollFilter.LimitWidth\00", align 1
@limit_cx_clicked = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Crop.Width\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"limit_cy\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"ScrollFilter.LimitHeight\00", align 1
@limit_cy_clicked = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Crop.Height\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ScrollFilter.Loop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @scroll_filter_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @scroll_filter_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32* (...) @obs_properties_create()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @obs_module_text(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @obs_properties_add_float_slider(i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %7, double -5.000000e+02, double 5.000000e+02, double 1.000000e+00)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @obs_module_text(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @obs_properties_add_float_slider(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %10, double -5.000000e+02, double 5.000000e+02, double 1.000000e+00)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @obs_module_text(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %14 = call i32* @obs_properties_add_bool(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @limit_cx_clicked, align 4
  %17 = call i32 @obs_property_set_modified_callback(i32* %15, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @obs_module_text(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 @obs_properties_add_int(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %19, i32 1, i32 8192, i32 1)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @obs_module_text(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32* @obs_properties_add_bool(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @limit_cy_clicked, align 4
  %26 = call i32 @obs_property_set_modified_callback(i32* %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @obs_module_text(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %29 = call i32 @obs_properties_add_int(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %28, i32 1, i32 8192, i32 1)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @obs_module_text(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %32 = call i32* @obs_properties_add_bool(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @UNUSED_PARAMETER(i8* %33)
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32 @obs_properties_add_float_slider(i32*, i8*, i32, double, double, double) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32* @obs_properties_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_property_set_modified_callback(i32*, i32) #1

declare dso_local i32 @obs_properties_add_int(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
