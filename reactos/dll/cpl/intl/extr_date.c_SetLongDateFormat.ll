; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_SetLongDateFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_SetLongDateFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@IDC_LONGDATEFMT_COMBO = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@MAX_SAMPLES_STR_SIZE = common dso_local global i64 0, align 8
@IDS_ERROR_SYMBOL_FORMAT_LONG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @SetLongDateFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetLongDateFormat(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IDC_LONGDATEFMT_COMBO, align 4
  %12 = load i32, i32* @WM_GETTEXT, align 4
  %13 = load i64, i64* @MAX_SAMPLES_STR_SIZE, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32*, i32** %5, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @SendDlgItemMessageW(i32 %10, i32 %11, i32 %12, i32 %14, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @wcslen(i32* %18)
  store i64 %19, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 39
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @iswalnum(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @isDateCompAl(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @IDS_ERROR_SYMBOL_FORMAT_LONG, align 4
  %54 = call i32 @PrintErrorMsgBox(i32 %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %49, %42, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %20

60:                                               ; preds = %20
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @IDS_ERROR_SYMBOL_FORMAT_LONG, align 4
  %68 = call i32 @PrintErrorMsgBox(i32 %67)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %66, %52
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @iswalnum(i32) #1

declare dso_local i32 @isDateCompAl(i32) #1

declare dso_local i32 @PrintErrorMsgBox(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
