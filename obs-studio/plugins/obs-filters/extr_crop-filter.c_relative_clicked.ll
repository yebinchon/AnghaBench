; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_relative_clicked.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_crop-filter.c_relative_clicked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Crop.Left\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Crop.Top\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @relative_clicked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relative_clicked(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @obs_data_get_bool(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @obs_properties_get(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i8* @obs_module_text(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %16 ]
  %19 = call i32 @obs_property_set_description(i32 %11, i8* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @obs_properties_get(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i8* @obs_module_text(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %27

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %26 ]
  %29 = call i32 @obs_property_set_description(i32 %21, i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @obs_properties_get(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @obs_property_set_visible(i32 %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @obs_properties_get(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @obs_property_set_visible(i32 %35, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @obs_properties_get(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @obs_property_set_visible(i32 %39, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @obs_properties_get(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @obs_property_set_visible(i32 %46, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @UNUSED_PARAMETER(i32* %52)
  ret i32 1
}

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

declare dso_local i32 @obs_property_set_description(i32, i8*) #1

declare dso_local i32 @obs_properties_get(i32*, i8*) #1

declare dso_local i8* @obs_module_text(i8*) #1

declare dso_local i32 @obs_property_set_visible(i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
