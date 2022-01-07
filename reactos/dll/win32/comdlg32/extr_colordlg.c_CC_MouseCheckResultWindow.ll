; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_MouseCheckResultWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_MouseCheckResultWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_COLOR_RESULT = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@IDC_COLOR_RES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CC_MouseCheckResultWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CC_MouseCheckResultWindow(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @CONV_LPARAMTOPOINT(i32 %9, i32* %7)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ClientToScreen(i32 %11, i32* %7)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IDC_COLOR_RESULT, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @GetWindowRect(i32 %16, i32* %8)
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @PtInRect(i32* %8, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @WM_COMMAND, align 4
  %24 = load i32, i32* @IDC_COLOR_RES, align 4
  %25 = call i32 @PostMessageA(i32 %22, i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @CONV_LPARAMTOPOINT(i32, i32*) #1

declare dso_local i32 @ClientToScreen(i32, i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, i32*) #1

declare dso_local i64 @PtInRect(i32*, i32) #1

declare dso_local i32 @PostMessageA(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
