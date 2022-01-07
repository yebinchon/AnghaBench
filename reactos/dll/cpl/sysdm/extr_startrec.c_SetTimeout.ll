; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_SetTimeout.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_SetTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_STRRECLISTUPDWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_STRRECLISTEDIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UDM_SETRANGE = common dso_local global i32 0, align 4
@UDM_SETPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @SetTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetTimeout(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IDC_STRRECLISTUPDWN, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @EnableWindow(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IDC_STRRECLISTEDIT, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @EnableWindow(i32 %16, i32 %17)
  br label %30

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IDC_STRRECLISTUPDWN, align 4
  %22 = call i32 @GetDlgItem(i32 %20, i32 %21)
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @EnableWindow(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IDC_STRRECLISTEDIT, align 4
  %27 = call i32 @GetDlgItem(i32 %25, i32 %26)
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @EnableWindow(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IDC_STRRECLISTUPDWN, align 4
  %33 = load i32, i32* @UDM_SETRANGE, align 4
  %34 = call i64 @MAKELONG(i16 signext 999, i32 0)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @SendDlgItemMessageW(i32 %31, i32 %32, i32 %33, i32 0, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IDC_STRRECLISTUPDWN, align 4
  %39 = load i32, i32* @UDM_SETPOS, align 4
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i16
  %42 = call i64 @MAKELONG(i16 signext %41, i32 0)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @SendDlgItemMessageW(i32 %37, i32 %38, i32 %39, i32 0, i32 %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i64 @MAKELONG(i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
