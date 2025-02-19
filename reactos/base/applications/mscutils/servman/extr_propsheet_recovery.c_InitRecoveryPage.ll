; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_InitRecoveryPage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_InitRecoveryPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_NO_ACTION = common dso_local global i64 0, align 8
@IDS_RESTART_COMPUTER = common dso_local global i64 0, align 8
@hInstance = common dso_local global i32 0, align 4
@IDC_FIRST_FAILURE = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@IDC_SECOND_FAILURE = common dso_local global i32 0, align 4
@IDC_SUBSEQUENT_FAILURES = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@IDC_RESET_TIME = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 48, i32 0], align 4
@IDC_RESTART_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 49, i32 0], align 4
@IDC_RESTART_TEXT1 = common dso_local global i64 0, align 8
@IDC_RESTART_OPTIONS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @InitRecoveryPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitRecoveryPage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @IDS_NO_ACTION, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @IDS_RESTART_COMPUTER, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load i32, i32* @hInstance, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @AllocAndLoadString(i64* %4, i32 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IDC_FIRST_FAILURE, align 4
  %19 = load i32, i32* @CB_ADDSTRING, align 4
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @SendDlgItemMessageW(i32 %17, i32 %18, i32 %19, i32 0, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IDC_SECOND_FAILURE, align 4
  %25 = load i32, i32* @CB_ADDSTRING, align 4
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @SendDlgItemMessageW(i32 %23, i32 %24, i32 %25, i32 0, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @IDC_SUBSEQUENT_FAILURES, align 4
  %31 = load i32, i32* @CB_ADDSTRING, align 4
  %32 = load i64, i64* %4, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @SendDlgItemMessageW(i32 %29, i32 %30, i32 %31, i32 0, i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @LocalFree(i64 %35)
  br label %37

37:                                               ; preds = %16, %11
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %7

41:                                               ; preds = %7
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @IDC_FIRST_FAILURE, align 4
  %44 = load i32, i32* @CB_SETCURSEL, align 4
  %45 = call i32 @SendDlgItemMessageW(i32 %42, i32 %43, i32 %44, i32 0, i32 0)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @IDC_SECOND_FAILURE, align 4
  %48 = load i32, i32* @CB_SETCURSEL, align 4
  %49 = call i32 @SendDlgItemMessageW(i32 %46, i32 %47, i32 %48, i32 0, i32 0)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @IDC_SUBSEQUENT_FAILURES, align 4
  %52 = load i32, i32* @CB_SETCURSEL, align 4
  %53 = call i32 @SendDlgItemMessageW(i32 %50, i32 %51, i32 %52, i32 0, i32 0)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @IDC_RESET_TIME, align 4
  %56 = load i32, i32* @WM_SETTEXT, align 4
  %57 = call i32 @SendDlgItemMessageW(i32 %54, i32 %55, i32 %56, i32 0, i32 ptrtoint ([2 x i32]* @.str to i32))
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @IDC_RESTART_TIME, align 4
  %60 = load i32, i32* @WM_SETTEXT, align 4
  %61 = call i32 @SendDlgItemMessageW(i32 %58, i32 %59, i32 %60, i32 0, i32 ptrtoint ([2 x i32]* @.str.1 to i32))
  %62 = load i64, i64* @IDC_RESTART_TEXT1, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %73, %41
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @IDC_RESTART_OPTIONS, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @GetDlgItem(i32 %68, i64 %69)
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @EnableWindow(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %63

76:                                               ; preds = %63
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @AllocAndLoadString(i64*, i32, i64) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
