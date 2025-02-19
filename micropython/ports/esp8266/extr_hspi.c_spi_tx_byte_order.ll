; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_tx_byte_order.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_tx_byte_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_WR_BYTE_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_tx_byte_order(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @SPI_USER(i64 %8)
  %10 = load i32, i32* @SPI_WR_BYTE_ORDER, align 4
  %11 = call i32 @SET_PERI_REG_MASK(i32 %9, i32 %10)
  br label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @SPI_USER(i64 %13)
  %15 = load i32, i32* @SPI_WR_BYTE_ORDER, align 4
  %16 = call i32 @CLEAR_PERI_REG_MASK(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i64) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
