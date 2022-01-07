; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_shamd5.c_SHAMD5ResultRead.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_shamd5.c_SHAMD5ResultRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHAMD5_BASE = common dso_local global i64 0, align 8
@SHAMD5_O_MODE = common dso_local global i64 0, align 8
@SHAMD5_MODE_ALGO_M = common dso_local global i32 0, align 4
@SHAMD5_O_IDIGEST_A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHAMD5ResultRead(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @SHAMD5_BASE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @SHAMD5_O_MODE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @HWREG(i64 %14)
  %16 = load i32, i32* @SHAMD5_MODE_ALGO_M, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
  ]

18:                                               ; preds = %2
  store i64 16, i64* %6, align 8
  br label %23

19:                                               ; preds = %2
  store i64 20, i64* %6, align 8
  br label %23

20:                                               ; preds = %2
  store i64 28, i64* %6, align 8
  br label %23

21:                                               ; preds = %2
  store i64 32, i64* %6, align 8
  br label %23

22:                                               ; preds = %2
  br label %43

23:                                               ; preds = %21, %20, %19, %18
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @SHAMD5_O_IDIGEST_A, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @HWREG(i64 %33)
  %35 = sext i32 %34 to i64
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = bitcast i32* %38 to i64*
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %28
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 4
  store i64 %42, i64* %5, align 8
  br label %24

43:                                               ; preds = %22, %24
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
