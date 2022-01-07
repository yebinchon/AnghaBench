; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_master_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_master_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_CS_SETUP = common dso_local global i32 0, align 4
@SPI_CS_HOLD = common dso_local global i32 0, align 4
@SPI_RD_BYTE_ORDER = common dso_local global i32 0, align 4
@SPI_WR_BYTE_ORDER = common dso_local global i32 0, align 4
@SPI_IDLE_EDGE = common dso_local global i32 0, align 4
@SPI_CK_OUT_EDGE = common dso_local global i32 0, align 4
@SPI_FLASH_MODE = common dso_local global i32 0, align 4
@SPI_USR_MISO = common dso_local global i32 0, align 4
@SPI_USR_ADDR = common dso_local global i32 0, align 4
@SPI_USR_COMMAND = common dso_local global i32 0, align 4
@SPI_USR_DUMMY = common dso_local global i32 0, align 4
@SPI_QIO_MODE = common dso_local global i32 0, align 4
@SPI_DIO_MODE = common dso_local global i32 0, align 4
@SPI_DOUT_MODE = common dso_local global i32 0, align 4
@SPI_QOUT_MODE = common dso_local global i32 0, align 4
@SPI_SPI = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CLK_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CMD_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA0_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA1_U = common dso_local global i32 0, align 4
@SPI_HSPI = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTDI_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTCK_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTMS_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_MTDO_U = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_master_init(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %102

13:                                               ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @SPI_USER(i32 %14)
  %16 = load i32, i32* @SPI_CS_SETUP, align 4
  %17 = load i32, i32* @SPI_CS_HOLD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SPI_RD_BYTE_ORDER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SPI_WR_BYTE_ORDER, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @SET_PERI_REG_MASK(i32 %15, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @SPI_PIN(i32 %27)
  %29 = load i32, i32* @SPI_IDLE_EDGE, align 4
  %30 = call i32 @SET_PERI_REG_MASK(i32 %28, i32 %29)
  br label %36

31:                                               ; preds = %13
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @SPI_PIN(i32 %32)
  %34 = load i32, i32* @SPI_IDLE_EDGE, align 4
  %35 = call i32 @CLEAR_PERI_REG_MASK(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @SPI_USER(i32 %41)
  %43 = load i32, i32* @SPI_CK_OUT_EDGE, align 4
  %44 = call i32 @CLEAR_PERI_REG_MASK(i32 %42, i32 %43)
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SPI_USER(i32 %46)
  %48 = load i32, i32* @SPI_CK_OUT_EDGE, align 4
  %49 = call i32 @SET_PERI_REG_MASK(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SPI_USER(i32 %51)
  %53 = load i32, i32* @SPI_FLASH_MODE, align 4
  %54 = load i32, i32* @SPI_USR_MISO, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SPI_USR_ADDR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SPI_USR_COMMAND, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SPI_USR_DUMMY, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @CLEAR_PERI_REG_MASK(i32 %52, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @SPI_CTRL(i32 %63)
  %65 = load i32, i32* @SPI_QIO_MODE, align 4
  %66 = load i32, i32* @SPI_DIO_MODE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SPI_DOUT_MODE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SPI_QOUT_MODE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @CLEAR_PERI_REG_MASK(i32 %64, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @spi_set_clkdiv(i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SPI_SPI, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %50
  %80 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %81 = call i32 @PIN_FUNC_SELECT(i32 %80, i32 1)
  %82 = load i32, i32* @PERIPHS_IO_MUX_SD_CMD_U, align 4
  %83 = call i32 @PIN_FUNC_SELECT(i32 %82, i32 1)
  %84 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA0_U, align 4
  %85 = call i32 @PIN_FUNC_SELECT(i32 %84, i32 1)
  %86 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA1_U, align 4
  %87 = call i32 @PIN_FUNC_SELECT(i32 %86, i32 1)
  br label %102

88:                                               ; preds = %50
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SPI_HSPI, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @PERIPHS_IO_MUX_MTDI_U, align 4
  %94 = call i32 @PIN_FUNC_SELECT(i32 %93, i32 2)
  %95 = load i32, i32* @PERIPHS_IO_MUX_MTCK_U, align 4
  %96 = call i32 @PIN_FUNC_SELECT(i32 %95, i32 2)
  %97 = load i32, i32* @PERIPHS_IO_MUX_MTMS_U, align 4
  %98 = call i32 @PIN_FUNC_SELECT(i32 %97, i32 2)
  %99 = load i32, i32* @PERIPHS_IO_MUX_MTDO_U, align 4
  %100 = call i32 @PIN_FUNC_SELECT(i32 %99, i32 2)
  br label %101

101:                                              ; preds = %92, %88
  br label %102

102:                                              ; preds = %12, %101, %79
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i32) #1

declare dso_local i32 @SPI_PIN(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_CTRL(i32) #1

declare dso_local i32 @spi_set_clkdiv(i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
