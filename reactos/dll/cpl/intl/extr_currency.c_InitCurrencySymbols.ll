; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_InitCurrencySymbols.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_InitCurrencySymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IDC_CURRENCYSYMBOL = common dso_local global i32 0, align 4
@CB_LIMITTEXT = common dso_local global i32 0, align 4
@MAX_CURRSYMBOL = common dso_local global i64 0, align 8
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitCurrencySymbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitCurrencySymbols(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IDC_CURRENCYSYMBOL, align 4
  %8 = load i32, i32* @CB_LIMITTEXT, align 4
  %9 = load i64, i64* @MAX_CURRSYMBOL, align 8
  %10 = sub nsw i64 %9, 1
  %11 = call i32 @SendDlgItemMessageW(i32 %6, i32 %7, i32 %8, i64 %10, i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IDC_CURRENCYSYMBOL, align 4
  %14 = load i32, i32* @CB_ADDSTRING, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @SendDlgItemMessageW(i32 %12, i32 %13, i32 %14, i64 0, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IDC_CURRENCYSYMBOL, align 4
  %22 = load i32, i32* @CB_SETCURSEL, align 4
  %23 = call i32 @SendDlgItemMessageW(i32 %20, i32 %21, i32 %22, i64 0, i32 0)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
