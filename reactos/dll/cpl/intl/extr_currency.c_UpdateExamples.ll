; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_UpdateExamples.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_UpdateExamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_FMT_SIZE = common dso_local global i32 0, align 4
@GroupingFormats = common dso_local global %struct.TYPE_8__* null, align 8
@POSITIVE_EXAMPLE = common dso_local global i32 0, align 4
@IDC_CURRENCYPOSSAMPLE = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@NEGATIVE_EXAMPLE = common dso_local global i32 0, align 4
@IDC_CURRENCYNEGSAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @UpdateExamples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateExamples(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i32, i32* @MAX_FMT_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @GroupingFormats, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @POSITIVE_EXAMPLE, align 4
  %53 = load i32, i32* @MAX_FMT_SIZE, align 4
  %54 = call i32 @GetCurrencyFormatW(i32 %51, i32 0, i32 %52, %struct.TYPE_7__* %8, i32* %12, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IDC_CURRENCYPOSSAMPLE, align 4
  %57 = load i32, i32* @WM_SETTEXT, align 4
  %58 = ptrtoint i32* %12 to i32
  %59 = call i32 @SendDlgItemMessageW(i32 %55, i32 %56, i32 %57, i32 0, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NEGATIVE_EXAMPLE, align 4
  %64 = load i32, i32* @MAX_FMT_SIZE, align 4
  %65 = call i32 @GetCurrencyFormatW(i32 %62, i32 0, i32 %63, %struct.TYPE_7__* %8, i32* %12, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @IDC_CURRENCYNEGSAMPLE, align 4
  %68 = load i32, i32* @WM_SETTEXT, align 4
  %69 = ptrtoint i32* %12 to i32
  %70 = call i32 @SendDlgItemMessageW(i32 %66, i32 %67, i32 %68, i32 0, i32 %69)
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrencyFormatW(i32, i32, i32, %struct.TYPE_7__*, i32*, i32) #2

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
