; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/cpu/mips/extr_ar71xx_serial.c_ar71xx_sys_frequency.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/cpu/mips/extr_ar71xx_serial.c_ar71xx_sys_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR71XX_PLL_REG_CPU_CONFIG = common dso_local global i64 0, align 8
@AR71XX_PLL_BASE = common dso_local global i64 0, align 8
@AR71XX_PLL_DIV_MASK = common dso_local global i32 0, align 4
@AR71XX_PLL_DIV_SHIFT = common dso_local global i32 0, align 4
@AR71XX_CPU_DIV_MASK = common dso_local global i32 0, align 4
@AR71XX_CPU_DIV_SHIFT = common dso_local global i32 0, align 4
@AR71XX_DDR_DIV_MASK = common dso_local global i32 0, align 4
@AR71XX_DDR_DIV_SHIFT = common dso_local global i32 0, align 4
@AR71XX_AHB_DIV_MASK = common dso_local global i32 0, align 4
@AR71XX_AHB_DIV_SHIFT = common dso_local global i32 0, align 4
@AR91XX_AHB_DIV_MASK = common dso_local global i32 0, align 4
@AR91XX_AHB_DIV_SHIFT = common dso_local global i32 0, align 4
@AR91XX_DDR_DIV_MASK = common dso_local global i32 0, align 4
@AR91XX_DDR_DIV_SHIFT = common dso_local global i32 0, align 4
@AR91XX_PLL_DIV_MASK = common dso_local global i32 0, align 4
@AR91XX_PLL_DIV_SHIFT = common dso_local global i32 0, align 4
@AR91XX_PLL_REG_CPU_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar71xx_sys_frequency(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i64, i64* @AR71XX_PLL_REG_CPU_CONFIG, align 8
  %14 = load i64, i64* @AR71XX_PLL_BASE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @KSEG1ADDR(i64 %15)
  %17 = call i32 @readl(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AR71XX_PLL_DIV_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @AR71XX_PLL_DIV_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AR71XX_CPU_DIV_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @AR71XX_CPU_DIV_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AR71XX_DDR_DIV_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @AR71XX_DDR_DIV_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AR71XX_AHB_DIV_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @AR71XX_AHB_DIV_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 40000000
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %3
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %48, %49
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %3
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = sdiv i32 %66, %67
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @KSEG1ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
