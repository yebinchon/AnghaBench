; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_SetShortDateFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_SetShortDateFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SAMPLES_STR_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_SHRTDATEFMT_COMBO = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@IDC_SHRTDATESEP_COMBO = common dso_local global i32 0, align 4
@IDS_ERROR_SYMBOL_FORMAT_SHORT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @SetShortDateFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetShortDateFormat(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @MAX_SAMPLES_STR_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @MAX_SAMPLES_STR_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IDC_SHRTDATEFMT_COMBO, align 4
  %25 = load i32, i32* @WM_GETTEXT, align 4
  %26 = load i32, i32* @MAX_SAMPLES_STR_SIZE, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @SendDlgItemMessageW(i32 %23, i32 %24, i32 %25, i32 %26, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IDC_SHRTDATESEP_COMBO, align 4
  %32 = load i32, i32* @WM_GETTEXT, align 4
  %33 = load i32, i32* @MAX_SAMPLES_STR_SIZE, align 4
  %34 = ptrtoint i32* %18 to i32
  %35 = call i32 @SendDlgItemMessageW(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @wcslen(i32* %36)
  store i64 %37, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %38

38:                                               ; preds = %75, %2
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 39
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @iswalnum(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @isDateCompAl(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @IDS_ERROR_SYMBOL_FORMAT_SHORT, align 4
  %72 = call i32 @PrintErrorMsgBox(i32 %71)
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %113

74:                                               ; preds = %67, %60, %53
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %38

78:                                               ; preds = %38
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %12, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %78
  %85 = load i32, i32* @IDS_ERROR_SYMBOL_FORMAT_SHORT, align 4
  %86 = call i32 @PrintErrorMsgBox(i32 %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %113

88:                                               ; preds = %81
  %89 = load i32*, i32** %5, align 8
  %90 = call i32* @FindDateSep(i32* %89)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @wcscpy(i32* %21, i32* %94)
  %96 = load i32*, i32** %5, align 8
  %97 = call i32* @ReplaceSubStr(i32* %96, i32* %18, i32* %21)
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @wcscpy(i32* %101, i32* %102)
  %104 = call i32 (...) @GetProcessHeap()
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @HeapFree(i32 %104, i32 0, i32* %105)
  br label %107

107:                                              ; preds = %100, %93
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @HeapFree(i32 %108, i32 0, i32* %109)
  br label %111

111:                                              ; preds = %107, %88
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %84, %70
  %114 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i64 @iswalnum(i32) #2

declare dso_local i32 @isDateCompAl(i32) #2

declare dso_local i32 @PrintErrorMsgBox(i32) #2

declare dso_local i32* @FindDateSep(i32*) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i32* @ReplaceSubStr(i32*, i32*, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32 @GetProcessHeap(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
