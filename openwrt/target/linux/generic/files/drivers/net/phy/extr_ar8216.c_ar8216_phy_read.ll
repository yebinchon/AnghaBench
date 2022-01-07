; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_phy_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_NUM_PORTS = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_REG_ADDR_S = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_PHY_ADDR_S = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_MASTER_EN = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_BUSY = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_CMD_READ = common dso_local global i32 0, align 4
@AR8216_REG_MDIO_CTRL = common dso_local global i32 0, align 4
@AR8216_MDIO_CTRL_DATA_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*, i32, i32)* @ar8216_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8216_phy_read(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 65535, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AR8216_NUM_PORTS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 65535, i32* %4, align 4
  br label %47

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AR8216_MDIO_CTRL_REG_ADDR_S, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AR8216_MDIO_CTRL_PHY_ADDR_S, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* @AR8216_MDIO_CTRL_MASTER_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @AR8216_MDIO_CTRL_BUSY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AR8216_MDIO_CTRL_CMD_READ, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %30 = load i32, i32* @AR8216_REG_MDIO_CTRL, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %34 = load i32, i32* @AR8216_REG_MDIO_CTRL, align 4
  %35 = load i32, i32* @AR8216_MDIO_CTRL_BUSY, align 4
  %36 = call i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv* %33, i32 %34, i32 %35, i32 0, i32 5)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %15
  %40 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %41 = load i32, i32* @AR8216_REG_MDIO_CTRL, align 4
  %42 = call i32 @ar8xxx_read(%struct.ar8xxx_priv* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %15
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @AR8216_MDIO_CTRL_DATA_M, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_read(%struct.ar8xxx_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
