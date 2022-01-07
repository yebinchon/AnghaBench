; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_set_clkdiv.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_set_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spi_clkdiv = common dso_local global i32* null, align 8
@SPI_CLKDIV_PRE = common dso_local global i32 0, align 4
@SPI_CLKDIV_PRE_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_N = common dso_local global i32 0, align 4
@SPI_CLKCNT_N_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_H = common dso_local global i32 0, align 4
@SPI_CLKCNT_H_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_L = common dso_local global i32 0, align 4
@SPI_CLKCNT_L_S = common dso_local global i32 0, align 4
@SPI_CLK_EQU_SYSCLK = common dso_local global i32 0, align 4
@SPI_SPI = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX = common dso_local global i32 0, align 4
@SPI_HSPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_set_clkdiv(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

12:                                               ; preds = %2
  %13 = load i32*, i32** @spi_clkdiv, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %65

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 40
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 40
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 1, %27 ]
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @SPI_CLOCK(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @SPI_CLKDIV_PRE, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SPI_CLKDIV_PRE_S, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* @SPI_CLKCNT_N, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SPI_CLKCNT_N_S, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %40, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sdiv i32 %49, 2
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* @SPI_CLKCNT_H, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @SPI_CLKCNT_H_S, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %47, %55
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @SPI_CLKCNT_L, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @SPI_CLKCNT_L_S, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %56, %62
  %64 = call i32 @WRITE_PERI_REG(i32 %34, i32 %63)
  br label %70

65:                                               ; preds = %12
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @SPI_CLOCK(i32 %66)
  %68 = load i32, i32* @SPI_CLK_EQU_SYSCLK, align 4
  %69 = call i32 @WRITE_PERI_REG(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %28
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SPI_SPI, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* @PERIPHS_IO_MUX, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp sle i32 %76, 1
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 256, i32 0
  %80 = or i32 5, %79
  %81 = call i32 @WRITE_PERI_REG(i32 %75, i32 %80)
  br label %95

82:                                               ; preds = %70
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @SPI_HSPI, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32, i32* @PERIPHS_IO_MUX, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp sle i32 %88, 1
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 512, i32 0
  %92 = or i32 261, %91
  %93 = call i32 @WRITE_PERI_REG(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %86, %82
  br label %95

95:                                               ; preds = %94, %74
  %96 = load i32, i32* %5, align 4
  %97 = load i32*, i32** @spi_clkdiv, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %11
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @SPI_CLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
