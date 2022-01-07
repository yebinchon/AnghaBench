; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_kblayouts.c_AddNewLayout.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_kblayouts.c_AddNewLayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCH_ULONG_DEC = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@CCH_LAYOUT_ID = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 92, i32 80, i32 114, i32 101, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@SORT_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_ILANGUAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 48, i32 48, i32 48, i32 48, i32 37, i32 115, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 100, i32 37, i32 48, i32 51, i32 100, i32 37, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [28 x i32] [i32 75, i32 101, i32 121, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 76, i32 97, i32 121, i32 111, i32 117, i32 116, i32 92, i32 83, i32 117, i32 98, i32 115, i32 116, i32 105, i32 116, i32 117, i32 116, i32 101, i32 115, i32 0], align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @AddNewLayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddNewLayout(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i32, i32* @CCH_ULONG_DEC, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %32 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %33 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %34 = call i64 @RegOpenKeyExW(i32 %32, i8* bitcast ([24 x i32]* @.str to i8*), i32 0, i32 %33, i32* %11)
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %131

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @RegQueryInfoKey(i32 %38, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %13, i32* null, i32* null, i32* null, i32* null)
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %128

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @_ultow(i32 %44, i32* %20, i32 10)
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @wcstoul(i64 %46, i32* null, i32 16)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @SORT_DEFAULT, align 4
  %50 = call i32 @MAKELCID(i32 %48, i32 %49)
  %51 = load i32, i32* @LOCALE_ILANGUAGE, align 4
  %52 = mul nuw i64 4, %22
  %53 = udiv i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @GetLocaleInfoW(i32 %50, i32 %51, i32* %23, i32 %54)
  %56 = call i32 (i32*, i8*, ...) @wsprintf(i32* %27, i8* bitcast ([7 x i32]* @.str.1 to i8*), i32* %23)
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @IsLayoutExists(i64 %57, i32* %27)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @RegCloseKey(i32 %61)
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

64:                                               ; preds = %42
  %65 = call i32 @GetLayoutCount(i32* %23)
  %66 = icmp sge i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @GetLayoutCount(i32* %23)
  %69 = call i32 (i32*, i8*, ...) @wsprintf(i32* %31, i8* bitcast ([8 x i32]* @.str.2 to i8*), i32 %68, i32* %23)
  br label %82

70:                                               ; preds = %64
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @wcscmp(i32* %27, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = call i32 @GetLayoutCount(i32* %23)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 (i32*, i8*, ...) @wsprintf(i32* %31, i8* bitcast ([8 x i32]* @.str.2 to i8*), i32 0, i32* %23)
  br label %81

79:                                               ; preds = %74, %70
  %80 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 0, i32* %80, align 16
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %67
  %83 = call i64 @wcslen(i32* %31)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %82
  %86 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %87 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %88 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %89 = call i64 @RegCreateKeyExW(i32 %86, i8* bitcast ([28 x i32]* @.str.3 to i8*), i32 0, i32* null, i32 %87, i32 %88, i32* null, i32* %12, i32* null)
  %90 = load i64, i64* @ERROR_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @REG_SZ, align 4
  %95 = load i64, i64* %4, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i64 @RegSetValueExW(i32 %93, i32* %31, i32 0, i32 %94, i32 %96, i32 %101)
  %103 = load i64, i64* @ERROR_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @RegCloseKey(i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @RegCloseKey(i32 %108)
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

111:                                              ; preds = %92
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @RegCloseKey(i32 %112)
  br label %114

114:                                              ; preds = %111, %85
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @lstrcpy(i64 %115, i32* %31)
  br label %117

117:                                              ; preds = %114, %82
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @REG_SZ, align 4
  %120 = load i64, i64* %4, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i64 @RegSetValueExW(i32 %118, i32* %20, i32 0, i32 %119, i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %117, %37
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @RegCloseKey(i32 %129)
  br label %131

131:                                              ; preds = %128, %2
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %133

133:                                              ; preds = %131, %105, %60
  %134 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryInfoKey(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @_ultow(i32, i32*, i32) #2

declare dso_local i32 @wcstoul(i64, i32*, i32) #2

declare dso_local i32 @GetLocaleInfoW(i32, i32, i32*, i32) #2

declare dso_local i32 @MAKELCID(i32, i32) #2

declare dso_local i32 @wsprintf(i32*, i8*, ...) #2

declare dso_local i64 @IsLayoutExists(i64, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @GetLayoutCount(i32*) #2

declare dso_local i64 @wcscmp(i32*, i64) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @RegSetValueExW(i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @lstrcpy(i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
