; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_advanced.c_OnOK.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_advanced.c_OnOK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_REPORTASWORKSTATION = common dso_local global i32 0, align 4
@BM_GETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ReportAsWorkstationKey = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ReportAsWorkstation\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @OnOK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnOK(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IDC_REPORTASWORKSTATION, align 4
  %8 = load i32, i32* @BM_GETCHECK, align 4
  %9 = call i64 @SendDlgItemMessageW(i32 %6, i32 %7, i32 %8, i32 0, i32 0)
  %10 = load i64, i64* @BST_CHECKED, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %14 = load i32, i32* @ReportAsWorkstationKey, align 4
  %15 = load i32, i32* @KEY_WRITE, align 4
  %16 = call i64 @RegCreateKeyEx(i32 %13, i32 %14, i32 0, i32* null, i32 0, i32 %15, i32* null, i32* %4, i32* null)
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @_T(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @REG_DWORD, align 4
  %23 = ptrtoint i32* %5 to i32
  %24 = call i32 @RegSetValueEx(i32 %20, i32 %21, i32 0, i32 %22, i32 %23, i32 4)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @RegCloseKey(i32 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegSetValueEx(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
