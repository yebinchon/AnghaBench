; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_extif_set_rgmii_delay.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_extif_set_rgmii_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367_EXT_RGMXF_RXDELAY_MASK = common dso_local global i32 0, align 4
@RTL8367_EXT_RGMXF_TXDELAY_MASK = common dso_local global i32 0, align 4
@RTL8367_EXT_RGMXF_TXDELAY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32, i32)* @rtl8367_extif_set_rgmii_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_extif_set_rgmii_delay(%struct.rtl8366_smi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @RTL8367_EXT_RGMXF_RXDELAY_MASK, align 4
  %13 = load i32, i32* @RTL8367_EXT_RGMXF_TXDELAY_MASK, align 4
  %14 = load i32, i32* @RTL8367_EXT_RGMXF_TXDELAY_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RTL8367_EXT_RGMXF_TXDELAY_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @RTL8367_EXT_RGMXF_REG(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @REG_RMW(%struct.rtl8366_smi* %23, i32 %25, i32 %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

declare dso_local i32 @RTL8367_EXT_RGMXF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
