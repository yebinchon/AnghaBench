; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812.c_ws2812_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812.c_ws2812_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_SINGLE = common dso_local global i32 0, align 4
@MODE_DUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ws2812.SINGLE or ws2812.DUAL expected\00", align 1
@UART_CLK_FREQ = common dso_local global i32 0, align 4
@UART_TXD_INV = common dso_local global i32 0, align 4
@UART_STOP_BIT_NUM_S = common dso_local global i32 0, align 4
@UART_BIT_NUM_S = common dso_local global i32 0, align 4
@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_FLOAT = common dso_local global i32 0, align 4
@GPIO_ENABLE_W1TC_ADDRESS = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO2_U = common dso_local global i32 0, align 4
@FUNC_U1TXD_BK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ws2812_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @MODE_SINGLE, align 4
  %6 = call i32 @luaL_optinteger(i32* %4, i32 1, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MODE_SINGLE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MODE_DUAL, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @luaL_argcheck(i32* %7, i32 %17, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @UART_CLKDIV(i32 1)
  %20 = load i32, i32* @UART_CLK_FREQ, align 4
  %21 = sdiv i32 %20, 3200000
  %22 = call i32 @WRITE_PERI_REG(i32 %19, i32 %21)
  %23 = call i32 @UART_CONF0(i32 1)
  %24 = load i32, i32* @UART_TXD_INV, align 4
  %25 = load i32, i32* @UART_STOP_BIT_NUM_S, align 4
  %26 = shl i32 1, %25
  %27 = or i32 %24, %26
  %28 = load i32, i32* @UART_BIT_NUM_S, align 4
  %29 = shl i32 1, %28
  %30 = or i32 %27, %29
  %31 = call i32 @WRITE_PERI_REG(i32 %23, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MODE_DUAL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %15
  %36 = call i32 @UART_CLKDIV(i32 0)
  %37 = load i32, i32* @UART_CLK_FREQ, align 4
  %38 = sdiv i32 %37, 3200000
  %39 = call i32 @WRITE_PERI_REG(i32 %36, i32 %38)
  %40 = call i32 @UART_CONF0(i32 0)
  %41 = load i32, i32* @UART_TXD_INV, align 4
  %42 = load i32, i32* @UART_STOP_BIT_NUM_S, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @UART_BIT_NUM_S, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = call i32 @WRITE_PERI_REG(i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %35, %15
  %50 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %51 = load i32, i32* @PLATFORM_GPIO_FLOAT, align 4
  %52 = call i32 @platform_gpio_mode(i32 4, i32 %50, i32 %51)
  %53 = call i32 @platform_gpio_write(i32 4, i32 0)
  %54 = call i32 @os_delay_us(i32 10)
  %55 = load i32, i32* @GPIO_ENABLE_W1TC_ADDRESS, align 4
  %56 = load i32, i32* @BIT2, align 4
  %57 = call i32 @GPIO_REG_WRITE(i32 %55, i32 %56)
  %58 = load i32, i32* @PERIPHS_IO_MUX_GPIO2_U, align 4
  %59 = load i32, i32* @FUNC_U1TXD_BK, align 4
  %60 = call i32 @PIN_FUNC_SELECT(i32 %58, i32 %59)
  ret i32 0
}

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @UART_CLKDIV(i32) #1

declare dso_local i32 @UART_CONF0(i32) #1

declare dso_local i32 @platform_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @platform_gpio_write(i32, i32) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i32 @GPIO_REG_WRITE(i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
