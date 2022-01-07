; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_spi.c_SPIDataGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_spi.c_SPIDataGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCSPI_O_CH0STAT = common dso_local global i64 0, align 8
@MCSPI_CH0STAT_RXS = common dso_local global i64 0, align 8
@MCSPI_O_RX0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SPIDataGet(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  br label %5

5:                                                ; preds = %14, %2
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @MCSPI_O_CH0STAT, align 8
  %8 = add i64 %6, %7
  %9 = call i64 @HWREG(i64 %8)
  %10 = load i64, i64* @MCSPI_CH0STAT_RXS, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %5

15:                                               ; preds = %5
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @MCSPI_O_RX0, align 8
  %18 = add i64 %16, %17
  %19 = call i64 @HWREG(i64 %18)
  %20 = load i64*, i64** %4, align 8
  store i64 %19, i64* %20, align 8
  ret void
}

declare dso_local i64 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
