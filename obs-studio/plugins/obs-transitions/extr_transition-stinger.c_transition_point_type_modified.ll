; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_transition_point_type_modified.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_transition_point_type_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"tp_type\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"transition_point\00", align 1
@TIMING_TIME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"TransitionPoint\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"TransitionPointFrame\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @transition_point_type_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transition_point_type_modified(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i64 @obs_data_get_int(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @obs_properties_get(i32* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @TIMING_TIME, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @obs_property_set_description(i32* %16, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @obs_property_int_set_suffix(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %27

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @obs_module_text(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @obs_property_set_description(i32* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @obs_property_int_set_suffix(i32* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %21, %15
  ret i32 1
}

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32* @obs_properties_get(i32*, i8*) #1

declare dso_local i32 @obs_property_set_description(i32*, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
