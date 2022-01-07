; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_led_group_set_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_led_group_set_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367_PARA_LED_IO_EN_PMASK = common dso_local global i32 0, align 4
@RTL8367_PARA_LED_IO_EN1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32)* @rtl8367_led_group_set_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_led_group_set_ports(%struct.rtl8366_smi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @RTL8367_PARA_LED_IO_EN_PMASK, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = urem i32 %13, 2
  %15 = mul i32 %14, 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @RTL8367_PARA_LED_IO_EN1_REG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = udiv i32 %17, 2
  %19 = add i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RTL8367_PARA_LED_IO_EN_PMASK, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @REG_RMW(%struct.rtl8366_smi* %20, i32 %21, i32 %24, i32 %27)
  ret i32 0
}

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
