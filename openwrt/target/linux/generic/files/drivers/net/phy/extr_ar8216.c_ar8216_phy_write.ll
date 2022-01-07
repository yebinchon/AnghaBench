; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_phy_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_PHY_ADDR_S = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_REG_ADDR_S = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_MASTER_EN = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_BUSY = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_CMD_WRITE = common dso_local global i32 0, align 4
@AR8216_REG_MDIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*, i32, i32, i32)* @ar8216_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8216_phy_write(%struct.ar8xxx_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar8xxx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AR8216_NUM_PORTS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AR8216_MDIO_CTRL_PHY_ADDR_S, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AR8216_MDIO_CTRL_REG_ADDR_S, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = load i32, i32* @AR8216_MDIO_CTRL_MASTER_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AR8216_MDIO_CTRL_BUSY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AR8216_MDIO_CTRL_CMD_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %6, align 8
  %35 = load i32, i32* @AR8216_REG_MDIO_CTRL, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %34, i32 %35, i32 %36)
  %38 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %6, align 8
  %39 = load i32, i32* @AR8216_REG_MDIO_CTRL, align 4
  %40 = load i32, i32* @AR8216_MDIO_CTRL_BUSY, align 4
  %41 = call i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv* %38, i32 %39, i32 %40, i32 0, i32 5)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %18, %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
