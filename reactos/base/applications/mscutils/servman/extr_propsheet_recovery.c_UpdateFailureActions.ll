; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_UpdateFailureActions.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_UpdateFailureActions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@IDC_FIRST_FAILURE = common dso_local global i64 0, align 8
@IDC_SUBSEQUENT_FAILURES = common dso_local global i64 0, align 8
@CB_GETCURSEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_RESTART_TEXT1 = common dso_local global i64 0, align 8
@IDC_RESTART_TEXT2 = common dso_local global i64 0, align 8
@IDC_RUN_GROUPBOX = common dso_local global i64 0, align 8
@IDC_ADD_FAILCOUNT = common dso_local global i64 0, align 8
@IDC_RESTART_OPTIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @UpdateFailureActions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateFailureActions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* @IDC_FIRST_FAILURE, align 8
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %32, %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IDC_SUBSEQUENT_FAILURES, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @CB_GETCURSEL, align 4
  %23 = call i64 @SendDlgItemMessageW(i32 %20, i64 %21, i32 %22, i32 0, i32 0)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  switch i64 %24, label %31 [
    i64 1, label %25
    i64 2, label %27
    i64 3, label %29
  ]

25:                                               ; preds = %19
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %8, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %9, align 4
  br label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %19, %29, %27, %25
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load i64, i64* @IDC_RESTART_TEXT1, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %47, %35
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @IDC_RESTART_TEXT2, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @GetDlgItem(i32 %42, i64 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @EnableWindow(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %37

50:                                               ; preds = %37
  %51 = load i64, i64* @IDC_RUN_GROUPBOX, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %62, %50
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @IDC_ADD_FAILCOUNT, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @GetDlgItem(i32 %57, i64 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @EnableWindow(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = load i64, i64* @IDC_RESTART_OPTIONS, align 8
  %68 = call i32 @GetDlgItem(i32 %66, i64 %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @EnableWindow(i32 %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @SendDlgItemMessageW(i32, i64, i32, i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
