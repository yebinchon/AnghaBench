; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ar91xx_set_pll_ge1.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ar91xx_set_pll_ge1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR91XX_PLL_REG_ETH_CONFIG = common dso_local global i32 0, align 4
@AR91XX_PLL_REG_ETH1_INT_CLOCK = common dso_local global i32 0, align 4
@AR91XX_ETH1_PLL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ar91xx_set_pll_ge1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar91xx_set_pll_ge1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %8 [
    i32 130, label %5
    i32 129, label %6
    i32 128, label %7
  ]

5:                                                ; preds = %1
  store i32 4460697, i32* %3, align 4
  br label %10

6:                                                ; preds = %1
  store i32 318769732, i32* %3, align 4
  br label %10

7:                                                ; preds = %1
  store i32 436207616, i32* %3, align 4
  br label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @BUG()
  br label %10

10:                                               ; preds = %8, %7, %6, %5
  %11 = load i32, i32* @AR91XX_PLL_REG_ETH_CONFIG, align 4
  %12 = load i32, i32* @AR91XX_PLL_REG_ETH1_INT_CLOCK, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @AR91XX_ETH1_PLL_SHIFT, align 4
  %15 = call i32 @ar71xx_set_pll(i32 %11, i32 %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ar71xx_set_pll(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
