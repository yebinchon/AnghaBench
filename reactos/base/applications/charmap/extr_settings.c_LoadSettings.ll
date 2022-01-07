; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/charmap/extr_settings.c_LoadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/charmap/extr_settings.c_LoadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@g_szGeneralRegKey = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@hCharmapDlg = common dso_local global i32 0, align 4
@IDC_FONTCOMBO = common dso_local global i32 0, align 4
@hWnd = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CodePage\00", align 1
@IDC_COMBO_CHARSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Advanced\00", align 1
@FALSE = common dso_local global i64 0, align 8
@IDC_CHECK_ADVANCED = common dso_local global i32 0, align 4
@BM_CLICK = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadSettings() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32 -1, i32* %2, align 4
  %8 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %9 = load i32, i32* @g_szGeneralRegKey, align 4
  %10 = load i32, i32* @KEY_READ, align 4
  %11 = call i64 @RegOpenKeyEx(i32 %8, i32 %9, i32 0, i32 %10, i32** %1)
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %0
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %19 = load i64, i64* @REG_DWORD, align 8
  store i64 %19, i64* %6, align 8
  store i64 1024, i64* %7, align 8
  %20 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %21 = load i32, i32* @g_szGeneralRegKey, align 4
  %22 = call i32* @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = mul nuw i64 4, %16
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i64 @QueryStringValue(i32 %20, i32 %21, i32* %22, i32* %18, i32 %25)
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %14
  %30 = load i32, i32* @hCharmapDlg, align 4
  %31 = load i32, i32* @IDC_FONTCOMBO, align 4
  %32 = call i32 @GetDlgItem(i32 %30, i32 %31)
  store i32 %32, i32* @hWnd, align 4
  %33 = load i32, i32* @hWnd, align 4
  %34 = call i32 @ComboBox_FindStringExact(i32 %33, i32 -1, i32* %18)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @CB_ERR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @hWnd, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @ComboBox_SetCurSel(i32 %39, i32 %40)
  %42 = load i32, i32* @hCharmapDlg, align 4
  %43 = call i32 @ChangeMapFont(i32 %42)
  br label %44

44:                                               ; preds = %38, %29
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %47 = load i32, i32* @g_szGeneralRegKey, align 4
  %48 = call i32* @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %49 = mul nuw i64 4, %16
  %50 = udiv i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i64 @QueryStringValue(i32 %46, i32 %47, i32* %48, i32* %18, i32 %51)
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %45
  %56 = load i32, i32* @hCharmapDlg, align 4
  %57 = load i32, i32* @IDC_COMBO_CHARSET, align 4
  %58 = call i32 @GetDlgItem(i32 %56, i32 %57)
  store i32 %58, i32* @hWnd, align 4
  %59 = load i32, i32* @hWnd, align 4
  %60 = call i32 @ComboBox_FindStringExact(i32 %59, i32 -1, i32* %18)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @CB_ERR, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @hWnd, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @ComboBox_SetCurSel(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i32*, i32** %1, align 8
  %71 = call i32* @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %72 = ptrtoint i64* %5 to i32
  %73 = call i32 @RegQueryValueEx(i32* %70, i32* %71, i32* null, i64* %6, i32 %72, i64* %7)
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @FALSE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i32, i32* @hCharmapDlg, align 4
  %79 = load i32, i32* @IDC_CHECK_ADVANCED, align 4
  %80 = load i32, i32* @BM_CLICK, align 4
  %81 = load i32, i32* @MF_CHECKED, align 4
  %82 = call i32 @SendDlgItemMessage(i32 %78, i32 %79, i32 %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %77, %69
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @RegCloseKey(i32* %84)
  %86 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %104

87:                                               ; preds = %0
  %88 = load i32, i32* @hCharmapDlg, align 4
  %89 = load i32, i32* @IDC_FONTCOMBO, align 4
  %90 = call i32 @GetDlgItem(i32 %88, i32 %89)
  store i32 %90, i32* @hWnd, align 4
  %91 = load i32, i32* @hWnd, align 4
  %92 = call i32* @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32 @ComboBox_FindStringExact(i32 %91, i32 -1, i32* %92)
  store i32 %93, i32* %2, align 4
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @CB_ERR, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load i32, i32* @hWnd, align 4
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @ComboBox_SetCurSel(i32 %98, i32 %99)
  %101 = load i32, i32* @hCharmapDlg, align 4
  %102 = call i32 @ChangeMapFont(i32 %101)
  br label %103

103:                                              ; preds = %97, %87
  br label %104

104:                                              ; preds = %103, %83
  ret void
}

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @QueryStringValue(i32, i32, i32*, i32*, i32) #1

declare dso_local i32* @_T(i8*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ComboBox_FindStringExact(i32, i32, i32*) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

declare dso_local i32 @ChangeMapFont(i32) #1

declare dso_local i32 @RegQueryValueEx(i32*, i32*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

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
