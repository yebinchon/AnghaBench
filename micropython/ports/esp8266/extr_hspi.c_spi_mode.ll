; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_mode.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HSPI = common dso_local global i32 0, align 4
@SPI_IDLE_EDGE = common dso_local global i32 0, align 4
@SPI_CK_OUT_EDGE = common dso_local global i32 0, align 4
@SPI_CK_I_EDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_mode(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* @HSPI, align 4
  %11 = call i32 @SPI_PIN(i32 %10)
  %12 = load i32, i32* @SPI_IDLE_EDGE, align 4
  %13 = call i32 @SET_PERI_REG_MASK(i32 %11, i32 %12)
  br label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @HSPI, align 4
  %16 = call i32 @SPI_PIN(i32 %15)
  %17 = load i32, i32* @SPI_IDLE_EDGE, align 4
  %18 = call i32 @CLEAR_PERI_REG_MASK(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* @HSPI, align 4
  %25 = call i32 @SPI_USER(i32 %24)
  %26 = load i32, i32* @SPI_CK_OUT_EDGE, align 4
  %27 = call i32 @CLEAR_PERI_REG_MASK(i32 %25, i32 %26)
  %28 = load i32, i32* @HSPI, align 4
  %29 = call i32 @SPI_USER(i32 %28)
  %30 = load i32, i32* @SPI_CK_I_EDGE, align 4
  %31 = call i32 @SET_PERI_REG_MASK(i32 %29, i32 %30)
  br label %41

32:                                               ; preds = %19
  %33 = load i32, i32* @HSPI, align 4
  %34 = call i32 @SPI_USER(i32 %33)
  %35 = load i32, i32* @SPI_CK_OUT_EDGE, align 4
  %36 = call i32 @SET_PERI_REG_MASK(i32 %34, i32 %35)
  %37 = load i32, i32* @HSPI, align 4
  %38 = call i32 @SPI_USER(i32 %37)
  %39 = load i32, i32* @SPI_CK_I_EDGE, align 4
  %40 = call i32 @CLEAR_PERI_REG_MASK(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %23
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_PIN(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
