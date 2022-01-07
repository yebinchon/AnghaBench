; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitNegNumFmtCB.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_InitNegNumFmtCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@IDC_NUMBERSNNUMFORMAT = common dso_local global i32 0, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@MAX_NEG_NUMBERS_SAMPLES = common dso_local global i64 0, align 8
@lpNegNumFmtSamples = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [2 x i32] [i32 44, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 45, i32 0], align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitNegNumFmtCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitNegNumFmtCB(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IDC_NUMBERSNNUMFORMAT, align 4
  %11 = load i32, i32* @CB_RESETCONTENT, align 4
  %12 = call i32 @SendDlgItemMessageW(i32 %9, i32 %10, i32 %11, i32 0, i32 0)
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %51, %2
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @MAX_NEG_NUMBERS_SAMPLES, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = load i32**, i32*** @lpNegNumFmtSamples, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @ReplaceSubStr(i32* %21, i32 %24, i8* bitcast ([2 x i32]* @.str to i8*))
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %17
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @ReplaceSubStr(i32* %29, i32 %32, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IDC_NUMBERSNNUMFORMAT, align 4
  %39 = load i32, i32* @CB_ADDSTRING, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @SendDlgItemMessageW(i32 %37, i32 %38, i32 %39, i32 0, i32 %41)
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, i32* %44)
  br label %46

46:                                               ; preds = %36, %28
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, i32* %48)
  br label %50

50:                                               ; preds = %46, %17
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %13

54:                                               ; preds = %13
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IDC_NUMBERSNNUMFORMAT, align 4
  %57 = load i32, i32* @CB_SETCURSEL, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @SendDlgItemMessageW(i32 %55, i32 %56, i32 %57, i32 %61, i32 0)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32* @ReplaceSubStr(i32*, i32, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
