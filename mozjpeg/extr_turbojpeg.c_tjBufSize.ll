; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjBufSize.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjBufSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMSUBOPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"tjBufSize(): Invalid argument\00", align 1
@tjMCUWidth = common dso_local global i32* null, align 8
@tjMCUHeight = common dso_local global i32* null, align 8
@TJSAMP_GRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tjBufSize(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NUMSUBOPT, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16, %13, %3
  %24 = call i32 @_throwg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32*, i32** @tjMCUWidth, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** @tjMCUHeight, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @TJSAMP_GRAY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %45

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 256, %43
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32 [ 0, %39 ], [ %44, %40 ]
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @PAD(i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @PAD(i32 %50, i32 %51)
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 2, %54
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %56, 2048
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i32 @_throwg(i8*) #1

declare dso_local i32 @PAD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
