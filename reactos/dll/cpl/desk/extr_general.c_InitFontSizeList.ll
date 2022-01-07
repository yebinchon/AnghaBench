; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_general.c_InitFontSizeList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_general.c_InitFontSizeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_FONTSIZE_COMBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"font.inf\00", align 1
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Font Sizes\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"SYSTEM\\CurrentControlSet\\Hardware Profiles\\Current\\Software\\Fonts\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i64 0, align 8
@REG_DWORD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"LogPixels\00", align 1
@LINE_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%s (%d DPI)\00", align 1
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@IDC_FONTSIZE_CUSTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @InitFontSizeList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitFontSizeList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IDC_FONTSIZE_COMBO, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @INF_STYLE_WIN4, align 4
  %22 = call i64 @SetupOpenInfFile(i32 %20, i32* null, i32 %21, i32* null)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %115

26:                                               ; preds = %1
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i64 @SetupFindFirstLine(i64 %27, i32 %28, i32* null, i32* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %114

31:                                               ; preds = %26
  %32 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %33 = call i32 @_T(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @KEY_READ, align 4
  %35 = call i64 @RegOpenKeyEx(i32 %32, i32 %33, i32 0, i32 %34, i32* %5)
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load i64, i64* @MAX_PATH, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* @REG_DWORD, align 8
  store i64 %40, i64* %12, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %43 = ptrtoint i64* %11 to i32
  %44 = call i64 @RegQueryValueEx(i32 %41, i32 %42, i32* null, i64* %12, i32 %43, i64* %10)
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @RegCloseKey(i32 %49)
  br label %51

51:                                               ; preds = %48, %31
  br label %52

52:                                               ; preds = %112, %51
  %53 = load i32, i32* @LINE_LEN, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %13, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %14, align 8
  %57 = load i32, i32* @LINE_LEN, align 4
  %58 = zext i32 %57 to i64
  %59 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %15, align 8
  %60 = mul nuw i64 4, %54
  %61 = udiv i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i64 @SetupGetStringField(i32* %7, i32 0, i32* %56, i32 %62, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %52
  %66 = call i64 @SetupGetIntField(i32* %7, i32 1, i32* %9)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @_stprintf(i32* %59, i32 %69, i32* %56, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @CB_ADDSTRING, align 4
  %74 = ptrtoint i32* %59 to i32
  %75 = call i32 @SendMessage(i32 %72, i32 %73, i32 0, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @CB_ERR, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @CB_SETITEMDATA, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @SendMessage(i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %68
  %86 = load i64, i64* %11, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @CB_SETCURSEL, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @SendMessage(i32 %91, i32 %92, i32 %93, i32 0)
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @IDC_FONTSIZE_CUSTOM, align 4
  %97 = call i32 @GetDlgItem(i32 %95, i32 %96)
  %98 = call i32 @SetWindowText(i32 %97, i32* %59)
  br label %103

99:                                               ; preds = %85
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @CB_SETCURSEL, align 4
  %102 = call i32 @SendMessage(i32 %100, i32 %101, i32 0, i32 0)
  br label %103

103:                                              ; preds = %99, %90
  br label %104

104:                                              ; preds = %103, %65, %52
  %105 = call i32 @SetupFindNextLine(i32* %7, i32* %7)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  store i32 2, i32* %16, align 4
  br label %109

108:                                              ; preds = %104
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %16, align 4
  switch i32 %111, label %119 [
    i32 0, label %112
    i32 2, label %113
  ]

112:                                              ; preds = %109
  br label %52

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %26
  br label %115

115:                                              ; preds = %114, %1
  %116 = load i64, i64* %4, align 8
  %117 = call i32 @SetupCloseInfFile(i64 %116)
  %118 = load i32, i32* %2, align 4
  ret i32 %118

119:                                              ; preds = %109
  unreachable
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @SetupOpenInfFile(i32, i32*, i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @SetupFindFirstLine(i64, i32, i32*, i32*) #1

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueEx(i32, i32, i32*, i64*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @SetupGetStringField(i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @SetupGetIntField(i32*, i32, i32*) #1

declare dso_local i32 @_stprintf(i32*, i32, i32*, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @SetWindowText(i32, i32*) #1

declare dso_local i32 @SetupFindNextLine(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @SetupCloseInfFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
