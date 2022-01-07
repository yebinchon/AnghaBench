; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_slave_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@SPI_SLAVE_MODE = common dso_local global i32 0, align 4
@SPI_SLV_WR_RD_BUF_EN = common dso_local global i32 0, align 4
@SPI_SLV_WR_BUF_DONE_EN = common dso_local global i32 0, align 4
@SPI_SLV_RD_BUF_DONE_EN = common dso_local global i32 0, align 4
@SPI_SLV_WR_STA_DONE_EN = common dso_local global i32 0, align 4
@SPI_SLV_RD_STA_DONE_EN = common dso_local global i32 0, align 4
@SPI_TRANS_DONE_EN = common dso_local global i32 0, align 4
@SPI_FLASH_MODE = common dso_local global i32 0, align 4
@SPI_USR_MISO_HIGHPART = common dso_local global i32 0, align 4
@SPI_MOSI_DELAY_NUM = common dso_local global i32 0, align 4
@SPI_MOSI_DELAY_NUM_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI_CTRL2 is %08x\0A\00", align 1
@SPI_USR_COMMAND_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_BITLEN_S = common dso_local global i32 0, align 4
@SPI_SLV_BUF_BITLEN = common dso_local global i32 0, align 4
@SPI_SLV_BUF_BITLEN_S = common dso_local global i32 0, align 4
@SPI_SLV_STATUS_BITLEN = common dso_local global i32 0, align 4
@SPI_SLV_STATUS_BITLEN_S = common dso_local global i32 0, align 4
@SPI_SLV_WR_ADDR_BITLEN = common dso_local global i32 0, align 4
@SPI_SLV_WR_ADDR_BITLEN_S = common dso_local global i32 0, align 4
@SPI_SLV_RD_ADDR_BITLEN = common dso_local global i32 0, align 4
@SPI_SLV_RD_ADDR_BITLEN_S = common dso_local global i32 0, align 4
@BIT19 = common dso_local global i32 0, align 4
@SPI_USR = common dso_local global i32 0, align 4
@spi_slave_isr_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_slave_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %113

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SPI_SPI, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %13 = call i32 @PIN_FUNC_SELECT(i32 %12, i32 1)
  %14 = load i32, i32* @PERIPHS_IO_MUX_SD_CMD_U, align 4
  %15 = call i32 @PIN_FUNC_SELECT(i32 %14, i32 1)
  %16 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA0_U, align 4
  %17 = call i32 @PIN_FUNC_SELECT(i32 %16, i32 1)
  %18 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA1_U, align 4
  %19 = call i32 @PIN_FUNC_SELECT(i32 %18, i32 1)
  br label %34

20:                                               ; preds = %7
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SPI_HSPI, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* @PERIPHS_IO_MUX_MTDI_U, align 4
  %26 = call i32 @PIN_FUNC_SELECT(i32 %25, i32 2)
  %27 = load i32, i32* @PERIPHS_IO_MUX_MTCK_U, align 4
  %28 = call i32 @PIN_FUNC_SELECT(i32 %27, i32 2)
  %29 = load i32, i32* @PERIPHS_IO_MUX_MTMS_U, align 4
  %30 = call i32 @PIN_FUNC_SELECT(i32 %29, i32 2)
  %31 = load i32, i32* @PERIPHS_IO_MUX_MTDO_U, align 4
  %32 = call i32 @PIN_FUNC_SELECT(i32 %31, i32 2)
  br label %33

33:                                               ; preds = %24, %20
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @SPI_SLAVE(i32 %35)
  %37 = load i32, i32* @SPI_SLAVE_MODE, align 4
  %38 = load i32, i32* @SPI_SLV_WR_RD_BUF_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SPI_SLV_WR_BUF_DONE_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SPI_SLV_RD_BUF_DONE_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SPI_SLV_WR_STA_DONE_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SPI_SLV_RD_STA_DONE_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SPI_TRANS_DONE_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @SET_PERI_REG_MASK(i32 %36, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @SPI_USER(i32 %51)
  %53 = load i32, i32* @SPI_FLASH_MODE, align 4
  %54 = call i32 @CLEAR_PERI_REG_MASK(i32 %52, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @SPI_USER(i32 %55)
  %57 = load i32, i32* @SPI_USR_MISO_HIGHPART, align 4
  %58 = call i32 @SET_PERI_REG_MASK(i32 %56, i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @SPI_CTRL2(i32 %59)
  %61 = load i32, i32* @SPI_MOSI_DELAY_NUM, align 4
  %62 = and i32 2, %61
  %63 = load i32, i32* @SPI_MOSI_DELAY_NUM_S, align 4
  %64 = shl i32 %62, %63
  %65 = call i32 @SET_PERI_REG_MASK(i32 %60, i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @SPI_CTRL2(i32 %66)
  %68 = call i32 @READ_PERI_REG(i32 %67)
  %69 = call i32 @os_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @SPI_CLOCK(i32 %70)
  %72 = call i32 @WRITE_PERI_REG(i32 %71, i32 0)
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @SPI_USER2(i32 %73)
  %75 = load i32, i32* @SPI_USR_COMMAND_BITLEN, align 4
  %76 = and i32 7, %75
  %77 = load i32, i32* @SPI_USR_COMMAND_BITLEN_S, align 4
  %78 = shl i32 %76, %77
  %79 = call i32 @WRITE_PERI_REG(i32 %74, i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @SPI_SLAVE1(i32 %80)
  %82 = load i32, i32* @SPI_SLV_BUF_BITLEN, align 4
  %83 = and i32 255, %82
  %84 = load i32, i32* @SPI_SLV_BUF_BITLEN_S, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* @SPI_SLV_STATUS_BITLEN, align 4
  %87 = and i32 7, %86
  %88 = load i32, i32* @SPI_SLV_STATUS_BITLEN_S, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %85, %89
  %91 = load i32, i32* @SPI_SLV_WR_ADDR_BITLEN, align 4
  %92 = and i32 7, %91
  %93 = load i32, i32* @SPI_SLV_WR_ADDR_BITLEN_S, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %90, %94
  %96 = load i32, i32* @SPI_SLV_RD_ADDR_BITLEN, align 4
  %97 = and i32 7, %96
  %98 = load i32, i32* @SPI_SLV_RD_ADDR_BITLEN_S, align 4
  %99 = shl i32 %97, %98
  %100 = or i32 %95, %99
  %101 = call i32 @SET_PERI_REG_MASK(i32 %81, i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @SPI_PIN(i32 %102)
  %104 = load i32, i32* @BIT19, align 4
  %105 = call i32 @SET_PERI_REG_MASK(i32 %103, i32 %104)
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @SPI_CMD(i32 %106)
  %108 = load i32, i32* @SPI_USR, align 4
  %109 = call i32 @SET_PERI_REG_MASK(i32 %107, i32 %108)
  %110 = load i32, i32* @spi_slave_isr_handler, align 4
  %111 = call i32 @ETS_SPI_INTR_ATTACH(i32 %110, i32* null)
  %112 = call i32 (...) @ETS_SPI_INTR_ENABLE()
  br label %113

113:                                              ; preds = %34, %6
  ret void
}

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_SLAVE(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i32) #1

declare dso_local i32 @SPI_CTRL2(i32) #1

declare dso_local i32 @os_printf(i8*, i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @SPI_CLOCK(i32) #1

declare dso_local i32 @SPI_USER2(i32) #1

declare dso_local i32 @SPI_SLAVE1(i32) #1

declare dso_local i32 @SPI_PIN(i32) #1

declare dso_local i32 @SPI_CMD(i32) #1

declare dso_local i32 @ETS_SPI_INTR_ATTACH(i32, i32*) #1

declare dso_local i32 @ETS_SPI_INTR_ENABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
