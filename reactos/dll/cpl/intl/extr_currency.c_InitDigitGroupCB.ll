; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_InitDigitGroupCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_currency.c_InitDigitGroupCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32, i64, i64, i32, i64, i64 }

@MAX_FMT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@MAX_GROUPINGFORMATS = common dso_local global i64 0, align 8
@GroupingFormats = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i32] [i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 0], align 4
@IDC_CURRENCYGRPNUM = common dso_local global i32 0, align 4
@CB_INSERTSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @InitDigitGroupCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitDigitGroupCB(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load i32, i32* @MAX_FMT_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* bitcast ([1 x i32]* @.str to i8*), i8** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i8* bitcast ([1 x i32]* @.str to i8*), i8** %23, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %45, %2
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @MAX_GROUPINGFORMATS, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @GroupingFormats, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAX_FMT_SIZE, align 4
  %39 = call i32 @GetCurrencyFormatW(i32 %37, i32 0, i8* bitcast ([10 x i32]* @.str.1 to i8*), %struct.TYPE_7__* %8, i32* %13, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IDC_CURRENCYGRPNUM, align 4
  %42 = load i32, i32* @CB_INSERTSTRING, align 4
  %43 = ptrtoint i32* %13 to i32
  %44 = call i32 @SendDlgItemMessageW(i32 %40, i32 %41, i32 %42, i32 -1, i32 %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %24

48:                                               ; preds = %24
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IDC_CURRENCYGRPNUM, align 4
  %51 = load i32, i32* @CB_SETCURSEL, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SendDlgItemMessageW(i32 %49, i32 %50, i32 %51, i32 %54, i32 0)
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrencyFormatW(i32, i32, i8*, %struct.TYPE_7__*, i32*, i32) #2

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
