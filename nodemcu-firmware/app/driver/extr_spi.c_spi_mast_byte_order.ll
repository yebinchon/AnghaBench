; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_byte_order.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_byte_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_ORDER_MSB = common dso_local global i32 0, align 4
@SPI_RD_BYTE_ORDER = common dso_local global i32 0, align 4
@SPI_WR_BYTE_ORDER = common dso_local global i32 0, align 4
@SPI_ORDER_LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_mast_byte_order(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %31

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SPI_ORDER_MSB, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SPI_USER(i32 %13)
  %15 = load i32, i32* @SPI_RD_BYTE_ORDER, align 4
  %16 = load i32, i32* @SPI_WR_BYTE_ORDER, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @SET_PERI_REG_MASK(i32 %14, i32 %17)
  br label %31

19:                                               ; preds = %8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SPI_ORDER_LSB, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @SPI_USER(i32 %24)
  %26 = load i32, i32* @SPI_RD_BYTE_ORDER, align 4
  %27 = load i32, i32* @SPI_WR_BYTE_ORDER, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @CLEAR_PERI_REG_MASK(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %19
  br label %31

31:                                               ; preds = %7, %30, %12
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
