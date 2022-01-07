; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_SetShortDateSep.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_SetShortDateSep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_SHRTDATESEP_COMBO = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@MAX_SAMPLES_STR_SIZE = common dso_local global i64 0, align 8
@IDS_ERROR_SYMBOL_SEPARATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @SetShortDateSep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetShortDateSep(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IDC_SHRTDATESEP_COMBO, align 4
  %10 = load i32, i32* @WM_GETTEXT, align 4
  %11 = load i64, i64* @MAX_SAMPLES_STR_SIZE, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32*, i32** %5, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @SendDlgItemMessageW(i32 %8, i32 %9, i32 %10, i32 %12, i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @wcslen(i32* %16)
  store i64 %17, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @iswalnum(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 39
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %22
  %36 = load i32, i32* @IDS_ERROR_SYMBOL_SEPARATE, align 4
  %37 = call i32 @PrintErrorMsgBox(i32 %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %18

43:                                               ; preds = %18
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @IDS_ERROR_SYMBOL_SEPARATE, align 4
  %48 = call i32 @PrintErrorMsgBox(i32 %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %46, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @iswalnum(i32) #1

declare dso_local i32 @PrintErrorMsgBox(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
