; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_msconfig.c_OnCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_msconfig.c_OnCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i8* }

@IDC_TAB = common dso_local global i32 0, align 4
@hTabWnd = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDD_GENERAL_PAGE = common dso_local global i32 0, align 4
@GeneralPageWndProc = common dso_local global i32 0, align 4
@hGeneralPage = common dso_local global i32 0, align 4
@IDD_SYSTEM_PAGE = common dso_local global i32 0, align 4
@SystemPageWndProc = common dso_local global i32 0, align 4
@hSystemPage = common dso_local global i32 0, align 4
@IDD_FREELDR_PAGE = common dso_local global i32 0, align 4
@FreeLdrPageWndProc = common dso_local global i32 0, align 4
@hFreeLdrPage = common dso_local global i32 0, align 4
@IDD_SERVICES_PAGE = common dso_local global i32 0, align 4
@ServicesPageWndProc = common dso_local global i32 0, align 4
@hServicesPage = common dso_local global i32 0, align 4
@IDD_STARTUP_PAGE = common dso_local global i32 0, align 4
@StartupPageWndProc = common dso_local global i32 0, align 4
@hStartupPage = common dso_local global i32 0, align 4
@IDD_TOOLS_PAGE = common dso_local global i32 0, align 4
@ToolsPageWndProc = common dso_local global i32 0, align 4
@hToolsPage = common dso_local global i32 0, align 4
@IDS_MSCONFIG = common dso_local global i32 0, align 4
@IDS_TAB_GENERAL = common dso_local global i32 0, align 4
@TCIF_TEXT = common dso_local global i8* null, align 8
@IDS_TAB_SYSTEM = common dso_local global i32 0, align 4
@IDS_TAB_FREELDR = common dso_local global i32 0, align 4
@IDS_TAB_SERVICES = common dso_local global i32 0, align 4
@IDS_TAB_STARTUP = common dso_local global i32 0, align 4
@IDS_TAB_TOOLS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OnCreate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [256 x i32], align 16
  %4 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @IDC_TAB, align 4
  %7 = call i32 @GetDlgItem(i32 %5, i32 %6)
  store i32 %7, i32* @hTabWnd, align 4
  %8 = load i32, i32* @hInst, align 4
  %9 = load i32, i32* @IDD_GENERAL_PAGE, align 4
  %10 = call i32 @MAKEINTRESOURCE(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @GeneralPageWndProc, align 4
  %13 = call i32 @CreateDialog(i32 %8, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* @hGeneralPage, align 4
  %14 = load i32, i32* @hGeneralPage, align 4
  %15 = call i32 @EnableDialogTheme(i32 %14)
  %16 = load i32, i32* @hInst, align 4
  %17 = load i32, i32* @IDD_SYSTEM_PAGE, align 4
  %18 = call i32 @MAKEINTRESOURCE(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SystemPageWndProc, align 4
  %21 = call i32 @CreateDialog(i32 %16, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* @hSystemPage, align 4
  %22 = load i32, i32* @hSystemPage, align 4
  %23 = call i32 @EnableDialogTheme(i32 %22)
  %24 = load i32, i32* @hInst, align 4
  %25 = load i32, i32* @IDD_FREELDR_PAGE, align 4
  %26 = call i32 @MAKEINTRESOURCE(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @FreeLdrPageWndProc, align 4
  %29 = call i32 @CreateDialog(i32 %24, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* @hFreeLdrPage, align 4
  %30 = load i32, i32* @hFreeLdrPage, align 4
  %31 = call i32 @EnableDialogTheme(i32 %30)
  %32 = load i32, i32* @hInst, align 4
  %33 = load i32, i32* @IDD_SERVICES_PAGE, align 4
  %34 = call i32 @MAKEINTRESOURCE(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @ServicesPageWndProc, align 4
  %37 = call i32 @CreateDialog(i32 %32, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* @hServicesPage, align 4
  %38 = load i32, i32* @hServicesPage, align 4
  %39 = call i32 @EnableDialogTheme(i32 %38)
  %40 = load i32, i32* @hInst, align 4
  %41 = load i32, i32* @IDD_STARTUP_PAGE, align 4
  %42 = call i32 @MAKEINTRESOURCE(i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @StartupPageWndProc, align 4
  %45 = call i32 @CreateDialog(i32 %40, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* @hStartupPage, align 4
  %46 = load i32, i32* @hStartupPage, align 4
  %47 = call i32 @EnableDialogTheme(i32 %46)
  %48 = load i32, i32* @hInst, align 4
  %49 = load i32, i32* @IDD_TOOLS_PAGE, align 4
  %50 = call i32 @MAKEINTRESOURCE(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @ToolsPageWndProc, align 4
  %53 = call i32 @CreateDialog(i32 %48, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* @hToolsPage, align 4
  %54 = load i32, i32* @hToolsPage, align 4
  %55 = call i32 @EnableDialogTheme(i32 %54)
  %56 = load i32, i32* @hInst, align 4
  %57 = load i32, i32* @IDS_MSCONFIG, align 4
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %59 = call i32 @LoadString(i32 %56, i32 %57, i32* %58, i32 256)
  %60 = load i32, i32* %2, align 4
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %62 = call i32 @SetWindowText(i32 %60, i32* %61)
  %63 = load i32, i32* @hInst, align 4
  %64 = load i32, i32* @IDS_TAB_GENERAL, align 4
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %66 = call i32 @LoadString(i32 %63, i32 %64, i32* %65, i32 256)
  %67 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 16)
  %68 = load i8*, i8** @TCIF_TEXT, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* @hTabWnd, align 4
  %73 = call i32 @TabCtrl_InsertItem(i32 %72, i32 0, %struct.TYPE_4__* %4)
  %74 = load i32, i32* @hInst, align 4
  %75 = load i32, i32* @IDS_TAB_SYSTEM, align 4
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %77 = call i32 @LoadString(i32 %74, i32 %75, i32* %76, i32 256)
  %78 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 16)
  %79 = load i8*, i8** @TCIF_TEXT, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %81, i32** %82, align 8
  %83 = load i32, i32* @hTabWnd, align 4
  %84 = call i32 @TabCtrl_InsertItem(i32 %83, i32 1, %struct.TYPE_4__* %4)
  %85 = load i32, i32* @hInst, align 4
  %86 = load i32, i32* @IDS_TAB_FREELDR, align 4
  %87 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %88 = call i32 @LoadString(i32 %85, i32 %86, i32* %87, i32 256)
  %89 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 16)
  %90 = load i8*, i8** @TCIF_TEXT, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %92, i32** %93, align 8
  %94 = load i32, i32* @hTabWnd, align 4
  %95 = call i32 @TabCtrl_InsertItem(i32 %94, i32 2, %struct.TYPE_4__* %4)
  %96 = load i32, i32* @hInst, align 4
  %97 = load i32, i32* @IDS_TAB_SERVICES, align 4
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %99 = call i32 @LoadString(i32 %96, i32 %97, i32* %98, i32 256)
  %100 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 16)
  %101 = load i8*, i8** @TCIF_TEXT, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %103, i32** %104, align 8
  %105 = load i32, i32* @hTabWnd, align 4
  %106 = call i32 @TabCtrl_InsertItem(i32 %105, i32 3, %struct.TYPE_4__* %4)
  %107 = load i32, i32* @hInst, align 4
  %108 = load i32, i32* @IDS_TAB_STARTUP, align 4
  %109 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %110 = call i32 @LoadString(i32 %107, i32 %108, i32* %109, i32 256)
  %111 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 16)
  %112 = load i8*, i8** @TCIF_TEXT, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %114, i32** %115, align 8
  %116 = load i32, i32* @hTabWnd, align 4
  %117 = call i32 @TabCtrl_InsertItem(i32 %116, i32 4, %struct.TYPE_4__* %4)
  %118 = load i32, i32* @hInst, align 4
  %119 = load i32, i32* @IDS_TAB_TOOLS, align 4
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %121 = call i32 @LoadString(i32 %118, i32 %119, i32* %120, i32 256)
  %122 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 16)
  %123 = load i8*, i8** @TCIF_TEXT, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %123, i8** %124, align 8
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %125, i32** %126, align 8
  %127 = load i32, i32* @hTabWnd, align 4
  %128 = call i32 @TabCtrl_InsertItem(i32 %127, i32 5, %struct.TYPE_4__* %4)
  %129 = call i32 (...) @MsConfig_OnTabWndSelChange()
  %130 = load i32, i32* @TRUE, align 4
  ret i32 %130
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @CreateDialog(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @EnableDialogTheme(i32) #1

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #1

declare dso_local i32 @SetWindowText(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @TabCtrl_InsertItem(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @MsConfig_OnTabWndSelChange(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
