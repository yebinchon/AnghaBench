; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_phy_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@AR7240_NUM_PHYS = common dso_local global i32 0, align 4
@reg_mutex = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_REG_ADDR_S = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_PHY_ADDR_S = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_MASTER_EN = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_BUSY = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_CMD_READ = common dso_local global i32 0, align 4
@AR7240_REG_MDIO_CTRL = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_DATA_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar7240sw_phy_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 65535, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AR7240_NUM_PHYS, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 65535, i32* %4, align 4
  br label %49

15:                                               ; preds = %3
  %16 = call i32 @mutex_lock(i32* @reg_mutex)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AR7240_MDIO_CTRL_REG_ADDR_S, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AR7240_MDIO_CTRL_PHY_ADDR_S, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* @AR7240_MDIO_CTRL_MASTER_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AR7240_MDIO_CTRL_BUSY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AR7240_MDIO_CTRL_CMD_READ, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = load i32, i32* @AR7240_REG_MDIO_CTRL, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @__ar7240sw_reg_write(%struct.mii_bus* %30, i32 %31, i32 %32)
  %34 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %35 = load i32, i32* @AR7240_REG_MDIO_CTRL, align 4
  %36 = load i32, i32* @AR7240_MDIO_CTRL_BUSY, align 4
  %37 = call i32 @__ar7240sw_reg_wait(%struct.mii_bus* %34, i32 %35, i32 %36, i32 0, i32 5)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %15
  %41 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %42 = load i32, i32* @AR7240_REG_MDIO_CTRL, align 4
  %43 = call i32 @__ar7240sw_reg_read(%struct.mii_bus* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %15
  %45 = call i32 @mutex_unlock(i32* @reg_mutex)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @AR7240_MDIO_CTRL_DATA_M, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ar7240sw_reg_write(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @__ar7240sw_reg_wait(%struct.mii_bus*, i32, i32, i32, i32) #1

declare dso_local i32 @__ar7240sw_reg_read(%struct.mii_bus*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
