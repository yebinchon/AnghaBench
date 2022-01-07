; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_spi.c_SPIIntStatus.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_spi.c_SPIIntStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCSPI_O_IRQSTATUS = common dso_local global i64 0, align 8
@MCSPI_O_IRQENABLE = common dso_local global i64 0, align 8
@APPS_CONFIG_BASE = common dso_local global i64 0, align 8
@APPS_CONFIG_O_DMA_DONE_INT_STS_MASKED = common dso_local global i64 0, align 8
@APPS_CONFIG_O_DMA_DONE_INT_STS_RAW = common dso_local global i64 0, align 8
@SPI_INT_DMATX = common dso_local global i64 0, align 8
@SPI_INT_DMARX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SPIIntStatus(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MCSPI_O_IRQSTATUS, align 8
  %10 = add i64 %8, %9
  %11 = call i64 @HWREG(i64 %10)
  %12 = and i64 %11, 196623
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @MCSPI_O_IRQENABLE, align 8
  %18 = add i64 %16, %17
  %19 = call i64 @HWREG(i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @SPIDmaMaskGet(i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i64, i64* @APPS_CONFIG_BASE, align 8
  %29 = load i64, i64* @APPS_CONFIG_O_DMA_DONE_INT_STS_MASKED, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @HWREG(i64 %30)
  store i64 %31, i64* %5, align 8
  br label %37

32:                                               ; preds = %22
  %33 = load i64, i64* @APPS_CONFIG_BASE, align 8
  %34 = load i64, i64* @APPS_CONFIG_O_DMA_DONE_INT_STS_RAW, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @HWREG(i64 %35)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* @SPI_INT_DMATX, align 8
  %44 = load i64, i64* %6, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = lshr i64 %48, 1
  %50 = and i64 %47, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* @SPI_INT_DMARX, align 8
  %54 = load i64, i64* %6, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i64, i64* %6, align 8
  ret i64 %57
}

declare dso_local i64 @HWREG(i64) #1

declare dso_local i64 @SPIDmaMaskGet(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
