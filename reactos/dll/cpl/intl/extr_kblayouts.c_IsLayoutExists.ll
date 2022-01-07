; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_kblayouts.c_IsLayoutExists.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_kblayouts.c_IsLayoutExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCH_LAYOUT_ID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 92, i32 80, i32 114, i32 101, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@LOCALE_ILANGUAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 48, i32 48, i32 48, i32 48, i32 37, i32 115, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 92, i32 83, i32 117, i32 98, i32 115, i32 116, i32 105, i32 116, i32 117, i32 116, i32 101, i32 115, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @IsLayoutExists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IsLayoutExists(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %28 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %16, align 8
  %33 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %34 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %35 = call i64 @RegOpenKeyExW(i32 %33, i8* bitcast ([24 x i32]* @.str to i8*), i32 0, i32 %34, i32* %6)
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %122

38:                                               ; preds = %2
  store i32 4, i32* %15, align 4
  br label %39

39:                                               ; preds = %115, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %13, align 4
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %43 = call i64 @RegEnumValueW(i32 %40, i32 %41, i8* %42, i32* %15, i32* null, i32* %14, i32* null, i32* null)
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %119

46:                                               ; preds = %39
  %47 = trunc i64 %21 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %50 = ptrtoint i8* %23 to i32
  %51 = call i64 @RegQueryValueExW(i32 %48, i8* %49, i32* null, i32* null, i32 %50, i32* %15)
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @RegCloseKey(i32 %55)
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %3, align 8
  store i32 1, i32* %18, align 4
  br label %124

58:                                               ; preds = %46
  %59 = call i64 @wcstoul(i8* %23, i32* null, i32 16)
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i32, i32* @LOCALE_ILANGUAGE, align 4
  %62 = udiv i64 %26, 1
  %63 = trunc i64 %62 to i32
  %64 = call i32 @GetLocaleInfoW(i64 %60, i32 %61, i8* %27, i32 %63)
  %65 = call i32 @wsprintf(i8* %31, i8* bitcast ([7 x i32]* @.str.1 to i8*), i8* %27)
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @wcscmp(i8* %31, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %16, align 8
  br label %73

71:                                               ; preds = %58
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %16, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = getelementptr inbounds i8, i8* %23, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 100
  br i1 %77, label %78, label %103

78:                                               ; preds = %73
  %79 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %80 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %81 = call i64 @RegOpenKeyExW(i32 %79, i8* bitcast ([28 x i32]* @.str.2 to i8*), i32 0, i32 %80, i32* %7)
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %78
  %85 = trunc i64 %26 to i32
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %7, align 4
  %87 = ptrtoint i8* %27 to i32
  %88 = call i64 @RegQueryValueExW(i32 %86, i8* %23, i32* null, i32* null, i32 %87, i32* %15)
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @wcscmp(i8* %27, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load i64, i64* %16, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @RegCloseKey(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @RegCloseKey(i32 %98)
  %100 = load i64, i64* @TRUE, align 8
  store i64 %100, i64* %3, align 8
  store i32 1, i32* %18, align 4
  br label %124

101:                                              ; preds = %92, %84
  br label %102

102:                                              ; preds = %101, %78
  br label %115

103:                                              ; preds = %73
  %104 = load i32, i32* %4, align 4
  %105 = call i64 @wcscmp(i8* %23, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i64, i64* %16, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @RegCloseKey(i32 %111)
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %3, align 8
  store i32 1, i32* %18, align 4
  br label %124

114:                                              ; preds = %107, %103
  br label %115

115:                                              ; preds = %114, %102
  %116 = load i64, i64* @FALSE, align 8
  store i64 %116, i64* %16, align 8
  store i32 4, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %39

119:                                              ; preds = %39
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @RegCloseKey(i32 %120)
  br label %122

122:                                              ; preds = %119, %2
  %123 = load i64, i64* @FALSE, align 8
  store i64 %123, i64* %3, align 8
  store i32 1, i32* %18, align 4
  br label %124

124:                                              ; preds = %122, %110, %95, %54
  %125 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i64, i64* %3, align 8
  ret i64 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegEnumValueW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i64 @wcstoul(i8*, i32*, i32) #2

declare dso_local i32 @GetLocaleInfoW(i64, i32, i8*, i32) #2

declare dso_local i32 @wsprintf(i8*, i8*, i8*) #2

declare dso_local i64 @wcscmp(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
