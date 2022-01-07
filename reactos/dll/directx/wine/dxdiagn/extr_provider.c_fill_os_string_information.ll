; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_os_string_information.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_os_string_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fill_os_string_information.winxpW = internal constant [24 x i8] c"Windows XP Professional\00", align 16
@fill_os_string_information.szOSLocalized = internal constant [14 x i8] c"szOSLocalized\00", align 1
@fill_os_string_information.szOSExLocalized = internal constant [16 x i8] c"szOSExLocalized\00", align 16
@fill_os_string_information.szOSExLongLocalized = internal constant [20 x i8] c"szOSExLongLocalized\00", align 16
@fill_os_string_information.szOSEnglish = internal constant [12 x i8] c"szOSEnglish\00", align 1
@fill_os_string_information.szOSExEnglish = internal constant [14 x i8] c"szOSExEnglish\00", align 1
@fill_os_string_information.szOSExLongEnglish = internal constant [18 x i8] c"szOSExLongEnglish\00", align 16
@fill_os_string_information.prop_list = internal global [6 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @fill_os_string_information.szOSLocalized, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @fill_os_string_information.szOSExLocalized, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fill_os_string_information.szOSExLongLocalized, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @fill_os_string_information.szOSEnglish, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @fill_os_string_information.szOSExEnglish, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @fill_os_string_information.szOSExLongEnglish, i32 0, i32 0)], align 16
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @fill_os_string_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_os_string_information(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @fill_os_string_information.prop_list, i64 0, i64 0))
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* @fill_os_string_information.prop_list, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @add_bstr_property(i32* %13, i8* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @fill_os_string_information.winxpW, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @add_bstr_property(i32*, i8*, i8*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
