; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_advanced.c_OnInitSysSettingsDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_advanced.c_OnInitSysSettingsDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_DWORD = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ReportAsWorkstationKey = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ReportAsWorkstation\00", align 1
@FALSE = common dso_local global i64 0, align 8
@IDC_REPORTASWORKSTATION = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @OnInitSysSettingsDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitSysSettingsDialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i64, i64* @REG_DWORD, align 8
  store i64 %8, i64* %6, align 8
  store i64 8, i64* %7, align 8
  %9 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %10 = load i32, i32* @ReportAsWorkstationKey, align 4
  %11 = load i32, i32* @KEY_READ, align 4
  %12 = call i64 @RegOpenKeyEx(i32 %9, i32 %10, i32 0, i32 %11, i32* %4)
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @_T(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = ptrtoint i64* %5 to i32
  %19 = call i64 @RegQueryValueEx(i32 %16, i32 %17, i32 0, i64* %6, i32 %18, i64* %7)
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @FALSE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IDC_REPORTASWORKSTATION, align 4
  %29 = load i32, i32* @BM_SETCHECK, align 4
  %30 = load i32, i32* @BST_CHECKED, align 4
  %31 = call i32 @SendDlgItemMessageW(i32 %27, i32 %28, i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %26, %22
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @RegCloseKey(i32 %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueEx(i32, i32, i32, i64*, i32, i64*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
