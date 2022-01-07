; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_set_green_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_set_green_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8366S_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366S_PHY_POWER_SAVING_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366S_PHY_POWER_SAVING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32)* @rtl8366s_set_green_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366s_set_green_port(%struct.rtl8366_smi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RTL8366S_NUM_PORTS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RTL8366S_PHY_POWER_SAVING_CTRL_REG, align 4
  %20 = call i32 @rtl8366s_read_phy_reg(%struct.rtl8366_smi* %17, i32 %18, i32 0, i32 %19, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @RTL8366S_PHY_POWER_SAVING_MASK, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @RTL8366S_PHY_POWER_SAVING_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RTL8366S_PHY_POWER_SAVING_CTRL_REG, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @rtl8366s_write_phy_reg(%struct.rtl8366_smi* %38, i32 %39, i32 0, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45, %23, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @rtl8366s_read_phy_reg(%struct.rtl8366_smi*, i32, i32, i32, i32*) #1

declare dso_local i32 @rtl8366s_write_phy_reg(%struct.rtl8366_smi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
