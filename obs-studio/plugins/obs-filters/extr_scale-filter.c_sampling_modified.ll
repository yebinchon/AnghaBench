; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_sampling_modified.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_sampling_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_SAMPLING = common dso_local global i32 0, align 4
@S_SAMPLING_POINT = common dso_local global i32 0, align 4
@S_SAMPLING_BILINEAR = common dso_local global i32 0, align 4
@S_SAMPLING_LANCZOS = common dso_local global i32 0, align 4
@S_SAMPLING_AREA = common dso_local global i32 0, align 4
@S_UNDISTORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @sampling_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sampling_modified(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @S_SAMPLING, align 4
  %11 = call i8* @obs_data_get_string(i32* %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @S_SAMPLING_POINT, align 4
  %14 = call i64 @astrcmpi(i8* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @S_SAMPLING_BILINEAR, align 4
  %20 = call i64 @astrcmpi(i8* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @S_SAMPLING_LANCZOS, align 4
  %26 = call i64 @astrcmpi(i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %37

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @S_SAMPLING_AREA, align 4
  %32 = call i64 @astrcmpi(i8* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %36

35:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @S_UNDISTORT, align 4
  %42 = call i32 @obs_properties_get(i32* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @obs_property_set_visible(i32 %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @UNUSED_PARAMETER(i32* %45)
  ret i32 1
}

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i64 @astrcmpi(i8*, i32) #1

declare dso_local i32 @obs_property_set_visible(i32, i32) #1

declare dso_local i32 @obs_properties_get(i32*, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
