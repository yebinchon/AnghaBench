; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_sw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HWSTRAP = common dso_local global i32 0, align 4
@CHG_TRAP = common dso_local global i32 0, align 4
@C_MDIO_BPS_S = common dso_local global i32 0, align 4
@MHWSTRAP = common dso_local global i32 0, align 4
@SMI_ADDR_M = common dso_local global i32 0, align 4
@SMI_ADDR_S = common dso_local global i32 0, align 4
@MT753X_SMI_ADDR_MASK = common dso_local global i32 0, align 4
@mt7530_mmd_read = common dso_local global i32 0, align 4
@mt7530_mmd_write = common dso_local global i32 0, align 4
@mt753x_mmd_ind_read = common dso_local global i32 0, align 4
@mt753x_mmd_ind_write = common dso_local global i32 0, align 4
@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@FORCE_MODE = common dso_local global i32 0, align 4
@SYS_CTRL = common dso_local global i32 0, align 4
@SW_PHY_RST = common dso_local global i32 0, align 4
@SW_SYS_RST = common dso_local global i32 0, align 4
@SW_REG_RST = common dso_local global i32 0, align 4
@GMACCR = common dso_local global i32 0, align 4
@LATE_COL_DROP = common dso_local global i32 0, align 4
@MTCC_LMT_S = common dso_local global i32 0, align 4
@MAX_RX_JUMBO_S = common dso_local global i32 0, align 4
@RX_PKT_LEN_MAX_JUMBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*)* @mt7530_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_sw_init(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %6 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %5, i32 0, i32 6
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @get_phy_access_mode(i32 %9)
  %11 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %12 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %11, i32 0, i32 5
  store i64 %10, i64* %12, align 8
  %13 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %14 = load i32, i32* @HWSTRAP, align 4
  %15 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @CHG_TRAP, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %20 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @C_MDIO_BPS_S, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @C_MDIO_BPS_S, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %34 = load i32, i32* @MHWSTRAP, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SMI_ADDR_M, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @SMI_ADDR_S, align 4
  %41 = ashr i32 %39, %40
  %42 = shl i32 %41, 3
  %43 = add nsw i32 %42, 8
  %44 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %45 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @MT753X_SMI_ADDR_MASK, align 4
  %47 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %48 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %52 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %32
  %56 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %57 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %56, i32 0, i32 1
  store i32 (%struct.gsw_mt753x*, i32, i32)* @mt7530_mii_read, i32 (%struct.gsw_mt753x*, i32, i32)** %57, align 8
  %58 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %59 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %58, i32 0, i32 2
  store i32 (%struct.gsw_mt753x*, i32, i32, i32)* @mt7530_mii_write, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %59, align 8
  %60 = load i32, i32* @mt7530_mmd_read, align 4
  %61 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %62 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @mt7530_mmd_write, align 4
  %64 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %65 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  br label %77

66:                                               ; preds = %32
  %67 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %68 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %67, i32 0, i32 1
  store i32 (%struct.gsw_mt753x*, i32, i32)* @mt753x_mii_read, i32 (%struct.gsw_mt753x*, i32, i32)** %68, align 8
  %69 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %70 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %69, i32 0, i32 2
  store i32 (%struct.gsw_mt753x*, i32, i32, i32)* @mt753x_mii_write, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %70, align 8
  %71 = load i32, i32* @mt753x_mmd_ind_read, align 4
  %72 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %73 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @mt753x_mmd_ind_write, align 4
  %75 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %76 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %66, %55
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %101, %77
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %84 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %83, i32 0, i32 1
  %85 = load i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32)** %84, align 8
  %86 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @MII_BMCR, align 4
  %89 = call i32 %85(%struct.gsw_mt753x* %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @BMCR_PDOWN, align 4
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %94 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %93, i32 0, i32 2
  %95 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %94, align 8
  %96 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @MII_BMCR, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 %95(%struct.gsw_mt753x* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %78

104:                                              ; preds = %78
  %105 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %106 = call i32 @PMCR(i32 5)
  %107 = load i32, i32* @FORCE_MODE, align 4
  %108 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %105, i32 %106, i32 %107)
  %109 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %110 = call i32 @PMCR(i32 6)
  %111 = load i32, i32* @FORCE_MODE, align 4
  %112 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %109, i32 %110, i32 %111)
  %113 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %114 = load i32, i32* @SYS_CTRL, align 4
  %115 = load i32, i32* @SW_PHY_RST, align 4
  %116 = load i32, i32* @SW_SYS_RST, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SW_REG_RST, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %113, i32 %114, i32 %119)
  %121 = call i32 @usleep_range(i32 10, i32 20)
  %122 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %123 = load i32, i32* @GMACCR, align 4
  %124 = load i32, i32* @LATE_COL_DROP, align 4
  %125 = load i32, i32* @MTCC_LMT_S, align 4
  %126 = shl i32 15, %125
  %127 = or i32 %124, %126
  %128 = load i32, i32* @MAX_RX_JUMBO_S, align 4
  %129 = shl i32 2, %128
  %130 = or i32 %127, %129
  %131 = load i32, i32* @RX_PKT_LEN_MAX_JUMBO, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %122, i32 %123, i32 %132)
  %134 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %135 = call i32 @mt7530_core_pll_setup(%struct.gsw_mt753x* %134)
  %136 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %137 = call i32 @mt7530_mac_port_setup(%struct.gsw_mt753x* %136)
  ret i32 0
}

declare dso_local i64 @get_phy_access_mode(i32) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mt7530_mii_read(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mt7530_mii_write(%struct.gsw_mt753x*, i32, i32, i32) #1

declare dso_local i32 @mt753x_mii_read(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mt753x_mii_write(%struct.gsw_mt753x*, i32, i32, i32) #1

declare dso_local i32 @PMCR(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt7530_core_pll_setup(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt7530_mac_port_setup(%struct.gsw_mt753x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
