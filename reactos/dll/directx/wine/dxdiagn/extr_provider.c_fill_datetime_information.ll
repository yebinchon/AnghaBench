; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_datetime_information.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_datetime_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fill_datetime_information.date_fmtW = internal constant [13 x i8] c"M'/'d'/'yyyy\00", align 1
@fill_datetime_information.time_fmtW = internal constant [13 x i8] c"HH':'mm':'ss\00", align 1
@fill_datetime_information.datetime_fmtW = internal constant [7 x i8] c"%s, %s\00", align 1
@fill_datetime_information.szTimeLocalized = internal constant [16 x i8] c"szTimeLocalized\00", align 16
@fill_datetime_information.szTimeEnglish = internal constant [14 x i8] c"szTimeEnglish\00", align 1
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@DATE_LONGDATE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fill_datetime_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_datetime_information(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [80 x i8], align 16
  %6 = alloca [80 x i8], align 16
  %7 = alloca [200 x i8], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = call i32 @GetLocalTime(i32* %4)
  %10 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i8* %12)
  %14 = call i32 @GetTimeFormatW(i32 %10, i32 0, i32* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @fill_datetime_information.time_fmtW, i64 0, i64 0), i8* %11, i32 %13)
  %15 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %16 = load i32, i32* @DATE_LONGDATE, align 4
  %17 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i8* %18)
  %20 = call i32 @GetDateFormatW(i32 %15, i32 %16, i32* %4, i8* null, i8* %17, i32 %19)
  %21 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %24 = call i32 @swprintf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @fill_datetime_information.datetime_fmtW, i64 0, i64 0), i8* %22, i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %27 = call i32 @add_bstr_property(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @fill_datetime_information.szTimeLocalized, i64 0, i64 0), i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %1
  %34 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(i8* %36)
  %38 = call i32 @GetDateFormatW(i32 %34, i32 0, i32* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @fill_datetime_information.date_fmtW, i64 0, i64 0), i8* %35, i32 %37)
  %39 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %42 = call i32 @swprintf(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @fill_datetime_information.datetime_fmtW, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %45 = call i32 @add_bstr_property(i32* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @fill_datetime_information.szTimeEnglish, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %33
  %52 = load i32, i32* @S_OK, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %49, %31
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @GetLocalTime(i32*) #1

declare dso_local i32 @GetTimeFormatW(i32, i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @add_bstr_property(i32*, i8*, i8*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
