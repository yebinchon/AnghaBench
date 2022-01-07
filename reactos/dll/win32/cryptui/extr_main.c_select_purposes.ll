; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_select_purposes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_select_purposes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_CERTIFICATE_USAGES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_ADD_PURPOSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @select_purposes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_purposes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IDC_CERTIFICATE_USAGES, align 4
  %8 = call i32 @GetDlgItem(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %34 [
    i32 129, label %10
    i32 130, label %10
    i32 128, label %22
  ]

10:                                               ; preds = %2, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @EnableWindow(i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @redraw_states(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IDC_ADD_PURPOSE, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @EnableWindow(i32 %19, i32 %20)
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @EnableWindow(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @redraw_states(i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @IDC_ADD_PURPOSE, align 4
  %31 = call i32 @GetDlgItem(i32 %29, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @EnableWindow(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %22, %2, %10
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @redraw_states(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
