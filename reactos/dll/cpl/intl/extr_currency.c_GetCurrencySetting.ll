; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_GetCurrencySetting.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_GetCurrencySetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32, i32, i8*, i32 }

@MAX_CURRSYMBOL = common dso_local global i32 0, align 4
@MAX_CURRDECIMALSEP = common dso_local global i32 0, align 4
@MAX_CURRTHOUSANDSEP = common dso_local global i32 0, align 4
@IDC_CURRENCYSYMBOL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_CURRENCYPOSVALUE = common dso_local global i32 0, align 4
@IDC_CURRENCYNEGVALUE = common dso_local global i32 0, align 4
@IDC_CURRENCYDECSEP = common dso_local global i32 0, align 4
@IDC_CURRENCYDECNUM = common dso_local global i32 0, align 4
@IDC_CURRENCYGRPSEP = common dso_local global i32 0, align 4
@IDC_CURRENCYGRPNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @GetCurrencySetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetCurrencySetting(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %15 = load i32, i32* @MAX_CURRSYMBOL, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @MAX_CURRDECIMALSEP, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* @MAX_CURRTHOUSANDSEP, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IDC_CURRENCYSYMBOL, align 4
  %27 = load i32, i32* @MAX_CURRSYMBOL, align 4
  %28 = call i32 @GetSelectedComboBoxText(i32 %25, i32 %26, i32* %18, i32 %27)
  %29 = getelementptr inbounds i32, i32* %18, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %92

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IDC_CURRENCYPOSVALUE, align 4
  %37 = call i32 @GetSelectedComboBoxIndex(i32 %35, i32 %36, i8** %10)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IDC_CURRENCYNEGVALUE, align 4
  %40 = call i32 @GetSelectedComboBoxIndex(i32 %38, i32 %39, i8** %11)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IDC_CURRENCYDECSEP, align 4
  %43 = load i32, i32* @MAX_CURRDECIMALSEP, align 4
  %44 = call i32 @GetSelectedComboBoxText(i32 %41, i32 %42, i32* %21, i32 %43)
  %45 = getelementptr inbounds i32, i32* %21, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %92

50:                                               ; preds = %34
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @IDC_CURRENCYDECNUM, align 4
  %53 = call i32 @GetSelectedComboBoxIndex(i32 %51, i32 %52, i8** %12)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @IDC_CURRENCYGRPSEP, align 4
  %56 = load i32, i32* @MAX_CURRTHOUSANDSEP, align 4
  %57 = call i32 @GetSelectedComboBoxText(i32 %54, i32 %55, i32* %24, i32 %56)
  %58 = getelementptr inbounds i32, i32* %24, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %92

63:                                               ; preds = %50
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @IDC_CURRENCYGRPNUM, align 4
  %66 = call i32 @GetSelectedComboBoxIndex(i32 %64, i32 %65, i8** %13)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @wcscpy(i32 %69, i32* %18)
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wcscpy(i32 %76, i32* %21)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @wcscpy(i32 %80, i32* %24)
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %63, %61, %48, %32
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSelectedComboBoxText(i32, i32, i32*, i32) #2

declare dso_local i32 @GetSelectedComboBoxIndex(i32, i32, i8**) #2

declare dso_local i32 @wcscpy(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
