; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_StartDDTest.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_StartDDTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_MAIN_DIALOG = common dso_local global i32 0, align 4
@IDS_DDTEST_ERROR = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@MB_ICONQUESTION = common dso_local global i32 0, align 4
@IDNO = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@IDYES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StartDDTest(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca [256 x i32], align 16
  %15 = alloca [256 x i32], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IDS_MAIN_DIALOG, align 4
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %20 = call i32 @LoadStringW(i32 %17, i32 %18, i32* %19, i32 256)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @IDS_DDTEST_ERROR, align 4
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %24 = call i32 @LoadStringW(i32 %21, i32 %22, i32* %23, i32 256)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %28 = call i32 @LoadStringW(i32 %25, i32 %26, i32* %27, i32 256)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %32 = call i32 @LoadStringW(i32 %29, i32 %30, i32* %31, i32 256)
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %35 = load i32, i32* @MB_YESNO, align 4
  %36 = load i32, i32* @MB_ICONQUESTION, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @MessageBox(i32* null, i32* %33, i32* %34, i32 %37)
  %39 = load i64, i64* @IDNO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %88

43:                                               ; preds = %5
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SW_SHOW, align 4
  %46 = call i32 @ShowWindow(i32 %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  switch i32 %47, label %59 [
    i32 1, label %48
    i32 2, label %51
    i32 3, label %55
  ]

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @DDPrimarySurfaceTest(i32 %49)
  store i32 %50, i32* %16, align 4
  br label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @DDOffscreenBufferTest(i32 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  br label %61

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @DDOffscreenBufferTest(i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  br label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %59, %55, %51, %48
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SW_HIDE, align 4
  %64 = call i32 @ShowWindow(i32 %62, i32 %63)
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %70 = load i32, i32* @MB_OK, align 4
  %71 = load i32, i32* @MB_ICONERROR, align 4
  %72 = or i32 %70, %71
  %73 = call i64 @MessageBox(i32* null, i32* %68, i32* %69, i32 %72)
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %6, align 4
  br label %88

75:                                               ; preds = %61
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %78 = load i32, i32* @MB_YESNO, align 4
  %79 = load i32, i32* @MB_ICONQUESTION, align 4
  %80 = or i32 %78, %79
  %81 = call i64 @MessageBox(i32* null, i32* %76, i32* %77, i32 %80)
  %82 = load i64, i64* @IDYES, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %84, %67, %41
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i64 @MessageBox(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @DDPrimarySurfaceTest(i32) #1

declare dso_local i32 @DDOffscreenBufferTest(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
