; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitUnitsSysCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitUnitsSysCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IDC_NUMBERSMEASSYS = common dso_local global i32 0, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@MAX_UNITS_SYS_SAMPLES = common dso_local global i64 0, align 8
@hApplet = common dso_local global i32 0, align 4
@IDS_METRIC = common dso_local global i64 0, align 8
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitUnitsSysCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitUnitsSysCB(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [128 x i32], align 16
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IDC_NUMBERSMEASSYS, align 4
  %10 = load i32, i32* @CB_RESETCONTENT, align 4
  %11 = call i32 @SendDlgItemMessageW(i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MAX_UNITS_SYS_SAMPLES, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i32, i32* @hApplet, align 4
  %18 = load i64, i64* @IDS_METRIC, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %18, %19
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %22 = call i32 @LoadStringW(i32 %17, i64 %20, i32* %21, i32 128)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IDC_NUMBERSMEASSYS, align 4
  %25 = load i32, i32* @CB_ADDSTRING, align 4
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @SendDlgItemMessageW(i32 %23, i32 %24, i32 %25, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %16
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IDC_NUMBERSMEASSYS, align 4
  %35 = load i32, i32* @CB_SETCURSEL, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @SendDlgItemMessageW(i32 %33, i32 %34, i32 %35, i32 %39, i32 0)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
