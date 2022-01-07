; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/charmap/extr_settings.c_SaveSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/charmap/extr_settings.c_SaveSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@g_szGeneralRegKey = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@hCharmapDlg = common dso_local global i32 0, align 4
@IDC_FONTCOMBO = common dso_local global i32 0, align 4
@hWnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@IDC_COMBO_CHARSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CodePage\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Advanced\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@Settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveSettings() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %4 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %5 = load i32, i32* @g_szGeneralRegKey, align 4
  %6 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %7 = load i32, i32* @KEY_SET_VALUE, align 4
  %8 = call i64 @RegCreateKeyEx(i32 %4, i32 %5, i32 0, i32* null, i32 %6, i32 %7, i32* null, i32** %1, i32* null)
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %0
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = load i32, i32* @hCharmapDlg, align 4
  %17 = load i32, i32* @IDC_FONTCOMBO, align 4
  %18 = call i32 @GetDlgItem(i32 %16, i32 %17)
  store i32 %18, i32* @hWnd, align 4
  %19 = load i32, i32* @hWnd, align 4
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = call i32 @ComboBox_GetText(i32 %19, i8* %15, i32 %20)
  %22 = load i8, i8* %15, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %11
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @REG_SZ, align 4
  %29 = ptrtoint i8* %15 to i32
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = call i32 @RegSetValueEx(i32* %26, i32 %27, i32 0, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %11
  %33 = load i32, i32* @hCharmapDlg, align 4
  %34 = load i32, i32* @IDC_COMBO_CHARSET, align 4
  %35 = call i32 @GetDlgItem(i32 %33, i32 %34)
  store i32 %35, i32* @hWnd, align 4
  %36 = load i32, i32* @hWnd, align 4
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = call i32 @ComboBox_GetText(i32 %36, i8* %15, i32 %37)
  %39 = load i8, i8* %15, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @REG_SZ, align 4
  %46 = ptrtoint i8* %15 to i32
  %47 = load i32, i32* @MAX_PATH, align 4
  %48 = call i32 @RegSetValueEx(i32* %43, i32 %44, i32 0, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @REG_DWORD, align 4
  %53 = call i32 @RegSetValueEx(i32* %50, i32 %51, i32 0, i32 %52, i32 ptrtoint (%struct.TYPE_2__* @Settings to i32), i32 4)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @RegCloseKey(i32* %54)
  %56 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %57

57:                                               ; preds = %49, %0
  ret void
}

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32*, i32, i32, i32*, i32**, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ComboBox_GetText(i32, i8*, i32) #1

declare dso_local i32 @RegSetValueEx(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
