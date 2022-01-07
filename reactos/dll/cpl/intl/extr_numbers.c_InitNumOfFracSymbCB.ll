; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitNumOfFracSymbCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitNumOfFracSymbCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MAX_SAMPLES_STR_SIZE = common dso_local global i32 0, align 4
@IDC_NUMBERSNDIGDEC = common dso_local global i32 0, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@MAX_FRAC_NUM_SAMPLES = common dso_local global i64 0, align 8
@DECIMAL_RADIX = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitNumOfFracSymbCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitNumOfFracSymbCB(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32, i32* @MAX_SAMPLES_STR_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IDC_NUMBERSNDIGDEC, align 4
  %15 = load i32, i32* @CB_RESETCONTENT, align 4
  %16 = call i32 @SendDlgItemMessageW(i32 %13, i32 %14, i32 %15, i32 0, i32 0)
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @MAX_FRAC_NUM_SAMPLES, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @DECIMAL_RADIX, align 4
  %24 = call i32 @_itow(i64 %22, i32* %12, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IDC_NUMBERSNDIGDEC, align 4
  %27 = load i32, i32* @CB_ADDSTRING, align 4
  %28 = ptrtoint i32* %12 to i32
  %29 = call i32 @SendDlgItemMessageW(i32 %25, i32 %26, i32 %27, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IDC_NUMBERSNDIGDEC, align 4
  %36 = load i32, i32* @CB_SETCURSEL, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @SendDlgItemMessageW(i32 %34, i32 %35, i32 %36, i32 %40, i32 0)
  %42 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #2

declare dso_local i32 @_itow(i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
