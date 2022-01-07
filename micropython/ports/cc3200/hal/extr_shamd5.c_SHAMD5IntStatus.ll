; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_shamd5.c_SHAMD5IntStatus.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_shamd5.c_SHAMD5IntStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHAMD5_BASE = common dso_local global i64 0, align 8
@DTHE_BASE = common dso_local global i64 0, align 8
@DTHE_O_SHA_MIS = common dso_local global i64 0, align 8
@SHAMD5_O_IRQENABLE = common dso_local global i64 0, align 8
@SHAMD5_O_IRQSTATUS = common dso_local global i64 0, align 8
@DTHE_O_SHA_RIS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SHAMD5IntStatus(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @SHAMD5_BASE, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load i64, i64* @DTHE_BASE, align 8
  %17 = load i64, i64* @DTHE_O_SHA_MIS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @HWREG(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SHAMD5_O_IRQENABLE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @HWREG(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @SHAMD5_O_IRQSTATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @HWREG(i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %30, 7
  %32 = shl i64 %31, 16
  %33 = or i64 %29, %32
  store i64 %33, i64* %3, align 8
  br label %47

34:                                               ; preds = %2
  %35 = load i64, i64* @DTHE_BASE, align 8
  %36 = load i64, i64* @DTHE_O_SHA_RIS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @HWREG(i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @SHAMD5_O_IRQSTATUS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @HWREG(i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, 7
  %45 = shl i64 %44, 16
  %46 = or i64 %42, %45
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %34, %15
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
