; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_InitCurrencyNumFracDigits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_InitCurrencyNumFracDigits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_FMT_SIZE = common dso_local global i32 0, align 4
@IDC_CURRENCYDECNUM = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitCurrencyNumFracDigits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitCurrencyNumFracDigits(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32, i32* @MAX_FMT_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 48, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %19, i64* %20, align 16
  %21 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IDC_CURRENCYDECNUM, align 4
  %24 = load i32, i32* @CB_ADDSTRING, align 4
  %25 = ptrtoint i64* %12 to i32
  %26 = call i32 @SendDlgItemMessageW(i32 %22, i32 %23, i32 %24, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IDC_CURRENCYDECNUM, align 4
  %33 = load i32, i32* @CB_SETCURSEL, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SendDlgItemMessageW(i32 %31, i32 %32, i32 %33, i32 %36, i32 0)
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
