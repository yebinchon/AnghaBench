; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitNumDecimalSepCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitNumDecimalSepCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IDC_NUMBERDSYMBOL = common dso_local global i32 0, align 4
@CB_LIMITTEXT = common dso_local global i32 0, align 4
@MAX_NUMDECIMALSEP = common dso_local global i32 0, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@MAX_NUM_SEP_SAMPLES = common dso_local global i64 0, align 8
@CB_ADDSTRING = common dso_local global i32 0, align 4
@lpNumSepSamples = common dso_local global i64* null, align 8
@CB_SELECTSTRING = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitNumDecimalSepCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitNumDecimalSepCB(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IDC_NUMBERDSYMBOL, align 4
  %10 = load i32, i32* @CB_LIMITTEXT, align 4
  %11 = load i32, i32* @MAX_NUMDECIMALSEP, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i64 @SendDlgItemMessageW(i32 %8, i32 %9, i32 %10, i32 %12, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IDC_NUMBERDSYMBOL, align 4
  %16 = load i32, i32* @CB_RESETCONTENT, align 4
  %17 = call i64 @SendDlgItemMessageW(i32 %14, i32 %15, i32 %16, i32 0, i32 0)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @MAX_NUM_SEP_SAMPLES, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IDC_NUMBERDSYMBOL, align 4
  %25 = load i32, i32* @CB_ADDSTRING, align 4
  %26 = load i64*, i64** @lpNumSepSamples, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @SendDlgItemMessageW(i32 %23, i32 %24, i32 %25, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IDC_NUMBERDSYMBOL, align 4
  %38 = load i32, i32* @CB_SELECTSTRING, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @SendDlgItemMessageW(i32 %36, i32 %37, i32 %38, i32 -1, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @CB_ERR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @IDC_NUMBERDSYMBOL, align 4
  %50 = load i32, i32* @CB_ADDSTRING, align 4
  %51 = load i64, i64* @MAX_NUM_SEP_SAMPLES, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @SendDlgItemMessageW(i32 %48, i32 %49, i32 %50, i32 %52, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IDC_NUMBERDSYMBOL, align 4
  %60 = load i32, i32* @CB_SELECTSTRING, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @SendDlgItemMessageW(i32 %58, i32 %59, i32 %60, i32 -1, i32 %64)
  br label %66

66:                                               ; preds = %47, %35
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
