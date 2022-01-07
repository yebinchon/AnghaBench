; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_language_information.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_language_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fill_language_information.regional_setting_engW = internal constant [17 x i8] c"Regional Setting\00", align 16
@fill_language_information.languages_fmtW = internal constant [12 x i8] c"%s (%s: %s)\00", align 1
@fill_language_information.szLanguagesLocalized = internal constant [21 x i8] c"szLanguagesLocalized\00", align 16
@fill_language_information.szLanguagesEnglish = internal constant [19 x i8] c"szLanguagesEnglish\00", align 16
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SNATIVELANGNAME = common dso_local global i32 0, align 4
@dxdiagn_instance = common dso_local global i32 0, align 4
@IDS_REGIONAL_SETTING = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SENGLANGUAGE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fill_language_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_language_information(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca [80 x i8], align 16
  %7 = alloca [300 x i8], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %10 = load i32, i32* @LOCALE_SNATIVELANGNAME, align 4
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i8* %12)
  %14 = call i32 @GetLocaleInfoW(i32 %9, i32 %10, i8* %11, i32 %13)
  %15 = load i32, i32* @dxdiagn_instance, align 4
  %16 = load i32, i32* @IDS_REGIONAL_SETTING, align 4
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i8* %18)
  %20 = call i32 @LoadStringW(i32 %15, i32 %16, i8* %17, i32 %19)
  %21 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %22 = load i32, i32* @LOCALE_SNATIVELANGNAME, align 4
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i8* %24)
  %26 = call i32 @GetLocaleInfoW(i32 %21, i32 %22, i8* %23, i32 %25)
  %27 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %31 = call i32 @swprintf(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @fill_language_information.languages_fmtW, i64 0, i64 0), i8* %28, i8* %29, i8* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %34 = call i32 @add_bstr_property(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @fill_language_information.szLanguagesLocalized, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %67

40:                                               ; preds = %1
  %41 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %42 = load i32, i32* @LOCALE_SENGLANGUAGE, align 4
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(i8* %44)
  %46 = call i32 @GetLocaleInfoW(i32 %41, i32 %42, i8* %43, i32 %45)
  %47 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %48 = load i32, i32* @LOCALE_SENGLANGUAGE, align 4
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(i8* %50)
  %52 = call i32 @GetLocaleInfoW(i32 %47, i32 %48, i8* %49, i32 %51)
  %53 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %56 = call i32 @swprintf(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @fill_language_information.languages_fmtW, i64 0, i64 0), i8* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @fill_language_information.regional_setting_engW, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %59 = call i32 @add_bstr_property(i32* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fill_language_information.szLanguagesEnglish, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %40
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %40
  %66 = load i32, i32* @S_OK, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %63, %38
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @add_bstr_property(i32*, i8*, i8*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
