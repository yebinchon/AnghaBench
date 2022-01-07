; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_general.c_InitRadioButtons.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_general.c_InitRadioButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Controls Folder\\Display\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"DynaSettingsChange\00", align 1
@IDC_RESTART_RB = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@IDC_WITHOUTREBOOT_RB = common dso_local global i32 0, align 4
@IDC_ASKME_RB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @InitRadioButtons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitRadioButtons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %8 = call i32 @_T(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @KEY_READ, align 4
  %10 = call i64 @RegOpenKeyEx(i32 %7, i32 %8, i32 0, i32 %9, i32* %4)
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  store i32 64, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @_T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %17 = ptrtoint i32* %16 to i32
  %18 = call i64 @RegQueryValueEx(i32 %14, i32 %15, i32 0, i32* null, i32 %17, i32* %6)
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %23 = call i32 @_ttoi(i32* %22)
  switch i32 %23, label %39 [
    i32 0, label %24
    i32 1, label %29
    i32 3, label %34
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @IDC_RESTART_RB, align 4
  %27 = load i32, i32* @BM_SETCHECK, align 4
  %28 = call i32 @SendDlgItemMessage(i32 %25, i32 %26, i32 %27, i32 1, i32 1)
  br label %39

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IDC_WITHOUTREBOOT_RB, align 4
  %32 = load i32, i32* @BM_SETCHECK, align 4
  %33 = call i32 @SendDlgItemMessage(i32 %30, i32 %31, i32 %32, i32 1, i32 1)
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IDC_ASKME_RB, align 4
  %37 = load i32, i32* @BM_SETCHECK, align 4
  %38 = call i32 @SendDlgItemMessage(i32 %35, i32 %36, i32 %37, i32 1, i32 1)
  br label %39

39:                                               ; preds = %21, %34, %29, %24
  br label %45

40:                                               ; preds = %13
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @IDC_WITHOUTREBOOT_RB, align 4
  %43 = load i32, i32* @BM_SETCHECK, align 4
  %44 = call i32 @SendDlgItemMessage(i32 %41, i32 %42, i32 %43, i32 1, i32 1)
  br label %45

45:                                               ; preds = %40, %39
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @RegCloseKey(i32 %46)
  br label %53

48:                                               ; preds = %1
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @IDC_WITHOUTREBOOT_RB, align 4
  %51 = load i32, i32* @BM_SETCHECK, align 4
  %52 = call i32 @SendDlgItemMessage(i32 %49, i32 %50, i32 %51, i32 1, i32 1)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @RegQueryValueEx(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @_ttoi(i32*) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
