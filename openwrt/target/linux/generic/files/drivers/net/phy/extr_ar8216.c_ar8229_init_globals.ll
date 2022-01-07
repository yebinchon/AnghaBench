; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8229_init_globals.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8229_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_REG_GLOBAL_CPUPORT = common dso_local global i32 0, align 4
@AR8216_GLOBAL_CPUPORT_EN = common dso_local global i32 0, align 4
@AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S = common dso_local global i32 0, align 4
@AR8216_REG_TAG_PRIORITY = common dso_local global i32 0, align 4
@AR8216_REG_ATU_CTRL = common dso_local global i32 0, align 4
@AR8216_ATU_CTRL_AGE_EN = common dso_local global i32 0, align 4
@AR8216_ATU_CTRL_LEARN_CHANGE = common dso_local global i32 0, align 4
@AR8229_REG_QM_CTRL = common dso_local global i32 0, align 4
@AR8229_QM_CTRL_ARP_EN = common dso_local global i32 0, align 4
@AR8216_REG_FLOOD_MASK = common dso_local global i32 0, align 4
@AR8216_REG_GLOBAL_CTRL = common dso_local global i32 0, align 4
@AR8236_GCTRL_MTU = common dso_local global i32 0, align 4
@AR8216_REG_MIB_FUNC = common dso_local global i32 0, align 4
@AR8236_MIB_EN = common dso_local global i32 0, align 4
@AR8216_REG_SERVICE_TAG = common dso_local global i32 0, align 4
@AR8216_SERVICE_TAG_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*)* @ar8229_init_globals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8229_init_globals(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %3 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %4 = load i32, i32* @AR8216_REG_GLOBAL_CPUPORT, align 4
  %5 = load i32, i32* @AR8216_GLOBAL_CPUPORT_EN, align 4
  %6 = load i32, i32* @AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S, align 4
  %7 = shl i32 15, %6
  %8 = or i32 %5, %7
  %9 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %3, i32 %4, i32 %8)
  %10 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %11 = load i32, i32* @AR8216_REG_TAG_PRIORITY, align 4
  %12 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %10, i32 %11, i32 64080)
  %13 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %14 = load i32, i32* @AR8216_REG_ATU_CTRL, align 4
  %15 = load i32, i32* @AR8216_ATU_CTRL_AGE_EN, align 4
  %16 = or i32 43, %15
  %17 = load i32, i32* @AR8216_ATU_CTRL_LEARN_CHANGE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %13, i32 %14, i32 %18)
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %21 = load i32, i32* @AR8229_REG_QM_CTRL, align 4
  %22 = load i32, i32* @AR8229_QM_CTRL_ARP_EN, align 4
  %23 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %25 = load i32, i32* @AR8216_REG_FLOOD_MASK, align 4
  %26 = call i32 @AR8229_FLOOD_MASK_BC_DP(i32 0)
  %27 = call i32 @AR8229_FLOOD_MASK_MC_DP(i32 0)
  %28 = or i32 %26, %27
  %29 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %24, i32 %25, i32 %28)
  %30 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %31 = load i32, i32* @AR8216_REG_GLOBAL_CTRL, align 4
  %32 = load i32, i32* @AR8236_GCTRL_MTU, align 4
  %33 = load i32, i32* @AR8236_GCTRL_MTU, align 4
  %34 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %36 = load i32, i32* @AR8216_REG_MIB_FUNC, align 4
  %37 = load i32, i32* @AR8236_MIB_EN, align 4
  %38 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %35, i32 %36, i32 %37)
  %39 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %40 = load i32, i32* @AR8216_REG_SERVICE_TAG, align 4
  %41 = load i32, i32* @AR8216_SERVICE_TAG_M, align 4
  %42 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %39, i32 %40, i32 %41, i32 0)
  ret void
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_set(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @AR8229_FLOOD_MASK_BC_DP(i32) #1

declare dso_local i32 @AR8229_FLOOD_MASK_MC_DP(i32) #1

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
