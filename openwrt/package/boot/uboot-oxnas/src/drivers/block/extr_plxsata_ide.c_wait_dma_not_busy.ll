; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_wait_dma_not_busy.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_wait_dma_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DMA_XFER_LOOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"wait_dma_not_busy() Timed out of wait for DMA not busy\0A\00", align 1
@SATA_DMA_CHANNEL = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_RESET = common dso_local global i32 0, align 4
@MAX_DMA_ABORT_LOOPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"wait_dma_not_busy() Timed out of wait for DMA channel abort\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wait_dma_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_dma_not_busy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @MAX_DMA_XFER_LOOPS, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %13, %1
  %8 = call i32 (...) @dma_busy()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %17

11:                                               ; preds = %7
  %12 = call i32 @udelay(i32 100)
  br label %13

13:                                               ; preds = %11
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %7, label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %22
  %26 = load i64, i64* @SATA_DMA_CHANNEL, align 8
  %27 = load i64, i64* @DMA_CTRL_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @DMA_CTRL_STATUS_RESET, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* @SATA_DMA_CHANNEL, align 8
  %35 = load i64, i64* @DMA_CTRL_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %33, i64 %36)
  %38 = load i32, i32* @MAX_DMA_ABORT_LOOPS, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %45, %25
  %40 = call i32 (...) @dma_busy()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %49

43:                                               ; preds = %39
  %44 = call i32 @udelay(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %39, label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52
  %56 = load i64, i64* @SATA_DMA_CHANNEL, align 8
  %57 = load i64, i64* @DMA_CTRL_STATUS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @DMA_CTRL_STATUS_RESET, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i64, i64* @SATA_DMA_CHANNEL, align 8
  %66 = load i64, i64* @DMA_CTRL_STATUS, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %64, i64 %67)
  br label %69

69:                                               ; preds = %55, %22
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  ret i32 %73
}

declare dso_local i32 @dma_busy(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
