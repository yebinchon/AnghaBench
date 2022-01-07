; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_init_gpio.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_init_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI = common dso_local global i64 0, align 8
@PERIPHS_IO_MUX = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CLK_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CMD_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA0_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA1_U = common dso_local global i32 0, align 4
@HSPI = common dso_local global i64 0, align 8
@PERIPHS_IO_MUX_MTDI_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTCK_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTMS_U = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_init_gpio(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @SPI, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i32, i32* @PERIPHS_IO_MUX, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 5, %16
  %18 = call i32 @WRITE_PERI_REG(i32 %14, i32 %17)
  %19 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %20 = call i32 @PIN_FUNC_SELECT(i32 %19, i32 1)
  %21 = load i32, i32* @PERIPHS_IO_MUX_SD_CMD_U, align 4
  %22 = call i32 @PIN_FUNC_SELECT(i32 %21, i32 1)
  %23 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA0_U, align 4
  %24 = call i32 @PIN_FUNC_SELECT(i32 %23, i32 1)
  %25 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA1_U, align 4
  %26 = call i32 @PIN_FUNC_SELECT(i32 %25, i32 1)
  br label %44

27:                                               ; preds = %9
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @HSPI, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* @PERIPHS_IO_MUX, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 9
  %35 = or i32 261, %34
  %36 = call i32 @WRITE_PERI_REG(i32 %32, i32 %35)
  %37 = load i32, i32* @PERIPHS_IO_MUX_MTDI_U, align 4
  %38 = call i32 @PIN_FUNC_SELECT(i32 %37, i32 2)
  %39 = load i32, i32* @PERIPHS_IO_MUX_MTCK_U, align 4
  %40 = call i32 @PIN_FUNC_SELECT(i32 %39, i32 2)
  %41 = load i32, i32* @PERIPHS_IO_MUX_MTMS_U, align 4
  %42 = call i32 @PIN_FUNC_SELECT(i32 %41, i32 2)
  br label %43

43:                                               ; preds = %31, %27
  br label %44

44:                                               ; preds = %43, %13
  ret void
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
