; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_laguna.c_csn3xxx_usb_power_on.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_laguna.c_csn3xxx_usb_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@usb_pwr_ref = common dso_local global i32 0, align 4
@PM_PLL_HM_PD_CTRL_REG_OFFSET_PLL_USB = common dso_local global i32 0, align 4
@PM_CLK_GATE_REG_OFFSET_USB_HOST = common dso_local global i32 0, align 4
@PM_SOFT_RST_REG_OFFST_USB_HOST = common dso_local global i32 0, align 4
@MISC_CHIP_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @csn3xxx_usb_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csn3xxx_usb_power_on(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i32 @atomic_inc_return(i32* @usb_pwr_ref)
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load i32, i32* @PM_PLL_HM_PD_CTRL_REG_OFFSET_PLL_USB, align 4
  %7 = shl i32 1, %6
  %8 = call i32 @cns3xxx_pwr_power_up(i32 %7)
  %9 = load i32, i32* @PM_CLK_GATE_REG_OFFSET_USB_HOST, align 4
  %10 = shl i32 1, %9
  %11 = call i32 @cns3xxx_pwr_clk_en(i32 %10)
  %12 = load i32, i32* @PM_SOFT_RST_REG_OFFST_USB_HOST, align 4
  %13 = shl i32 1, %12
  %14 = call i32 @cns3xxx_pwr_soft_rst(i32 %13)
  %15 = load i32, i32* @MISC_CHIP_CONFIG_REG, align 4
  %16 = call i32 @__raw_readl(i32 %15)
  %17 = or i32 %16, 33554432
  %18 = load i32, i32* @MISC_CHIP_CONFIG_REG, align 4
  %19 = call i32 @__raw_writel(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %5, %1
  ret i32 0
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @cns3xxx_pwr_power_up(i32) #1

declare dso_local i32 @cns3xxx_pwr_clk_en(i32) #1

declare dso_local i32 @cns3xxx_pwr_soft_rst(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
