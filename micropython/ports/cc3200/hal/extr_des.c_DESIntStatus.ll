; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_des.c_DESIntStatus.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_des.c_DESIntStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_BASE = common dso_local global i64 0, align 8
@DES_O_IRQSTATUS = common dso_local global i64 0, align 8
@DES_O_IRQENABLE = common dso_local global i64 0, align 8
@DTHE_BASE = common dso_local global i64 0, align 8
@DTHE_O_DES_MIS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DESIntStatus(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @DES_BASE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @DES_O_IRQSTATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @HWREG(i64 %17)
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @DES_O_IRQENABLE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @HWREG(i64 %22)
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* @DTHE_BASE, align 8
  %28 = load i64, i64* @DTHE_O_DES_MIS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @HWREG(i64 %29)
  %31 = and i32 %30, 7
  %32 = shl i32 %31, 16
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %3, align 8
  br label %53

37:                                               ; preds = %2
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @DES_O_IRQSTATUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @HWREG(i64 %40)
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* @DTHE_BASE, align 8
  %44 = load i64, i64* @DTHE_O_DES_MIS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @HWREG(i64 %45)
  %47 = and i32 %46, 13
  %48 = shl i32 %47, 16
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %37, %14
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
