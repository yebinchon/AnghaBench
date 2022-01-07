; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_OnNotifySettingsPage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_OnNotifySettingsPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@IDC_KEYLAYOUT_LIST = common dso_local global i32 0, align 4
@LVNI_SELECTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INPUT_LIST_NODE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@IDC_SET_DEFAULT = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_REBOOT_NOW = common dso_local global i32 0, align 4
@IDS_LANGUAGE = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@MB_YESNOCANCEL = common dso_local global i32 0, align 4
@IDYES = common dso_local global i32 0, align 4
@SE_SHUTDOWN_NAME = common dso_local global i32 0, align 4
@EWX_REBOOT = common dso_local global i32 0, align 4
@EWX_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @OnNotifySettingsPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnNotifySettingsPage(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca [128 x i32], align 16
  %11 = alloca [64 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %108 [
    i32 129, label %17
    i32 128, label %73
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IDC_KEYLAYOUT_LIST, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LVNI_SELECTED, align 4
  %28 = call i32 @ListView_GetNextItem(i32 %26, i32 -1, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %67

31:                                               ; preds = %23
  %32 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 24, i1 false)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @SetControlsState(i32 %33, i32 %34)
  %36 = load i32, i32* @LVIF_PARAM, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ListView_GetItem(i32 %42, %struct.TYPE_5__* %8)
  %44 = load i32, i32* @FALSE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %9, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @INPUT_LIST_NODE_FLAG_DEFAULT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @IDC_SET_DEFAULT, align 4
  %62 = call i32 @GetDlgItem(i32 %60, i32 %61)
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @EnableWindow(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %52, %46
  br label %66

66:                                               ; preds = %65, %31
  br label %71

67:                                               ; preds = %23
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @SetControlsState(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %66
  br label %72

72:                                               ; preds = %71, %17
  br label %108

73:                                               ; preds = %2
  %74 = call i32 (...) @InputList_Process()
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %73
  %77 = load i32, i32* @hApplet, align 4
  %78 = load i32, i32* @IDS_REBOOT_NOW, align 4
  %79 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %81 = call i32 @_countof(i32* %80)
  %82 = call i32 @LoadStringW(i32 %77, i32 %78, i32* %79, i32 %81)
  %83 = load i32, i32* @hApplet, align 4
  %84 = load i32, i32* @IDS_LANGUAGE, align 4
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %87 = call i32 @_countof(i32* %86)
  %88 = call i32 @LoadStringW(i32 %83, i32 %84, i32* %85, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %92 = load i32, i32* @MB_ICONINFORMATION, align 4
  %93 = load i32, i32* @MB_YESNOCANCEL, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @MessageBoxW(i32 %89, i32* %90, i32* %91, i32 %94)
  %96 = load i32, i32* @IDYES, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %76
  %99 = load i32, i32* @SE_SHUTDOWN_NAME, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @EnableProcessPrivileges(i32 %99, i32 %100)
  %102 = load i32, i32* @EWX_REBOOT, align 4
  %103 = load i32, i32* @EWX_FORCE, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @ExitWindowsEx(i32 %104, i32 0)
  br label %106

106:                                              ; preds = %98, %76
  br label %107

107:                                              ; preds = %106, %73
  br label %108

108:                                              ; preds = %2, %107, %72
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @ListView_GetNextItem(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SetControlsState(i32, i32) #1

declare dso_local i32 @ListView_GetItem(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @InputList_Process(...) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @_countof(i32*) #1

declare dso_local i32 @MessageBoxW(i32, i32*, i32*, i32) #1

declare dso_local i32 @EnableProcessPrivileges(i32, i32) #1

declare dso_local i32 @ExitWindowsEx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
