; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_limiter-filter.c_limiter_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_limiter-filter.c_limiter_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_THRESHOLD = common dso_local global i32 0, align 4
@TEXT_THRESHOLD = common dso_local global i32 0, align 4
@MIN_THRESHOLD_DB = common dso_local global i32 0, align 4
@MAX_THRESHOLD_DB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" dB\00", align 1
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@TEXT_RELEASE_TIME = common dso_local global i32 0, align 4
@MIN_ATK_RLS_MS = common dso_local global i32 0, align 4
@MAX_RLS_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @limiter_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @limiter_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32* (...) @obs_properties_create()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @S_THRESHOLD, align 4
  %8 = load i32, i32* @TEXT_THRESHOLD, align 4
  %9 = load i32, i32* @MIN_THRESHOLD_DB, align 4
  %10 = load i32, i32* @MAX_THRESHOLD_DB, align 4
  %11 = call i32* @obs_properties_add_float_slider(i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, double 1.000000e-01)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @obs_property_float_set_suffix(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @S_RELEASE_TIME, align 4
  %16 = load i32, i32* @TEXT_RELEASE_TIME, align 4
  %17 = load i32, i32* @MIN_ATK_RLS_MS, align 4
  %18 = load i32, i32* @MAX_RLS_MS, align 4
  %19 = call i32* @obs_properties_add_int_slider(i32* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 1)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @obs_property_int_set_suffix(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @UNUSED_PARAMETER(i8* %22)
  %24 = load i32*, i32** %3, align 8
  ret i32* %24
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32* @obs_properties_add_float_slider(i32*, i32, i32, i32, i32, double) #1

declare dso_local i32 @obs_property_float_set_suffix(i32*, i8*) #1

declare dso_local i32* @obs_properties_add_int_slider(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
