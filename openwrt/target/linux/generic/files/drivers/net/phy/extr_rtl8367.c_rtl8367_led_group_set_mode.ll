; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_led_group_set_mode.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_led_group_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367_LED_CONFIG_DATA_M = common dso_local global i32 0, align 4
@RTL8367_LED_CONFIG_DATA_S = common dso_local global i32 0, align 4
@RTL8367_LED_CONFIG_SEL = common dso_local global i32 0, align 4
@RTL8367_LED_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32)* @rtl8367_led_group_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_led_group_set_mode(%struct.rtl8366_smi* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @RTL8367_LED_CONFIG_DATA_M, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RTL8367_LED_CONFIG_DATA_M, align 4
  %12 = load i32, i32* @RTL8367_LED_CONFIG_DATA_S, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @RTL8367_LED_CONFIG_SEL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RTL8367_LED_CONFIG_DATA_S, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @RTL8367_LED_CONFIG_SEL, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %22 = load i32, i32* @RTL8367_LED_CONFIG_REG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @REG_RMW(%struct.rtl8366_smi* %21, i32 %22, i32 %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
