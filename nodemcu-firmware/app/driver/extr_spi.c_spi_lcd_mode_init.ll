; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_lcd_mode_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_lcd_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_SPI = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CLK_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CMD_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA0_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA1_U = common dso_local global i32 0, align 4
@SPI_HSPI = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTDI_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTCK_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTMS_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTDO_U = common dso_local global i32 0, align 4
@SPI_CS_SETUP = common dso_local global i32 0, align 4
@SPI_CS_HOLD = common dso_local global i32 0, align 4
@SPI_USR_COMMAND = common dso_local global i32 0, align 4
@SPI_FLASH_MODE = common dso_local global i32 0, align 4
@SPI_CLKDIV_PRE = common dso_local global i32 0, align 4
@SPI_CLKDIV_PRE_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_N = common dso_local global i32 0, align 4
@SPI_CLKCNT_N_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_H = common dso_local global i32 0, align 4
@SPI_CLKCNT_H_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_L = common dso_local global i32 0, align 4
@SPI_CLKCNT_L_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_lcd_mode_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %73

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SPI_SPI, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32, i32* @PERIPHS_IO_MUX, align 4
  %13 = call i32 @WRITE_PERI_REG(i32 %12, i32 5)
  %14 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %15 = call i32 @PIN_FUNC_SELECT(i32 %14, i32 1)
  %16 = load i32, i32* @PERIPHS_IO_MUX_SD_CMD_U, align 4
  %17 = call i32 @PIN_FUNC_SELECT(i32 %16, i32 1)
  %18 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA0_U, align 4
  %19 = call i32 @PIN_FUNC_SELECT(i32 %18, i32 1)
  %20 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA1_U, align 4
  %21 = call i32 @PIN_FUNC_SELECT(i32 %20, i32 1)
  br label %38

22:                                               ; preds = %7
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @SPI_HSPI, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* @PERIPHS_IO_MUX, align 4
  %28 = call i32 @WRITE_PERI_REG(i32 %27, i32 261)
  %29 = load i32, i32* @PERIPHS_IO_MUX_MTDI_U, align 4
  %30 = call i32 @PIN_FUNC_SELECT(i32 %29, i32 2)
  %31 = load i32, i32* @PERIPHS_IO_MUX_MTCK_U, align 4
  %32 = call i32 @PIN_FUNC_SELECT(i32 %31, i32 2)
  %33 = load i32, i32* @PERIPHS_IO_MUX_MTMS_U, align 4
  %34 = call i32 @PIN_FUNC_SELECT(i32 %33, i32 2)
  %35 = load i32, i32* @PERIPHS_IO_MUX_MTDO_U, align 4
  %36 = call i32 @PIN_FUNC_SELECT(i32 %35, i32 2)
  br label %37

37:                                               ; preds = %26, %22
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @SPI_USER(i32 %39)
  %41 = load i32, i32* @SPI_CS_SETUP, align 4
  %42 = load i32, i32* @SPI_CS_HOLD, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SPI_USR_COMMAND, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @SET_PERI_REG_MASK(i32 %40, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @SPI_USER(i32 %47)
  %49 = load i32, i32* @SPI_FLASH_MODE, align 4
  %50 = call i32 @CLEAR_PERI_REG_MASK(i32 %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @SPI_CLOCK(i32 %51)
  %53 = load i32, i32* @SPI_CLKDIV_PRE, align 4
  %54 = and i32 1, %53
  %55 = load i32, i32* @SPI_CLKDIV_PRE_S, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @SPI_CLKCNT_N, align 4
  %58 = and i32 3, %57
  %59 = load i32, i32* @SPI_CLKCNT_N_S, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %56, %60
  %62 = load i32, i32* @SPI_CLKCNT_H, align 4
  %63 = and i32 1, %62
  %64 = load i32, i32* @SPI_CLKCNT_H_S, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %61, %65
  %67 = load i32, i32* @SPI_CLKCNT_L, align 4
  %68 = and i32 3, %67
  %69 = load i32, i32* @SPI_CLKCNT_L_S, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %66, %70
  %72 = call i32 @WRITE_PERI_REG(i32 %52, i32 %71)
  br label %73

73:                                               ; preds = %38, %6
  ret void
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_CLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
