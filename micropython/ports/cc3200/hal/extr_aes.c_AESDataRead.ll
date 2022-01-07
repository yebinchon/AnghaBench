; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_aes.c_AESDataRead.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_aes.c_AESDataRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BASE = common dso_local global i64 0, align 8
@AES_CTRL_OUTPUT_READY = common dso_local global i64 0, align 8
@AES_O_CTRL = common dso_local global i64 0, align 8
@AES_O_DATA_IN_3 = common dso_local global i64 0, align 8
@AES_O_DATA_IN_2 = common dso_local global i64 0, align 8
@AES_O_DATA_IN_1 = common dso_local global i64 0, align 8
@AES_O_DATA_IN_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AESDataRead(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @AES_BASE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp sgt i64 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  br label %69

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %30, %21
  %23 = load i64, i64* @AES_CTRL_OUTPUT_READY, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @AES_O_CTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @HWREG(i64 %26)
  %28 = and i64 %23, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %22

31:                                               ; preds = %22
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @AES_O_DATA_IN_3, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @HWREG(i64 %34)
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  store volatile i64 %35, i64* %36, align 16
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @AES_O_DATA_IN_2, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @HWREG(i64 %39)
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  store volatile i64 %40, i64* %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @AES_O_DATA_IN_1, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @HWREG(i64 %44)
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  store volatile i64 %45, i64* %46, align 16
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @AES_O_DATA_IN_0, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @HWREG(i64 %49)
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  store volatile i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  store i64* %52, i64** %9, align 8
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %65, %31
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %53

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %20
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
