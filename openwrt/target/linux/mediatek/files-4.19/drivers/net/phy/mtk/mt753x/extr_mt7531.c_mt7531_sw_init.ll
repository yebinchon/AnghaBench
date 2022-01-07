; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_sw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, i32, i32 (%struct.gsw_mt753x*, i32, i32)*, i32, i32, i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32, i32 }

@MT753X_SMI_ADDR_MASK = common dso_local global i32 0, align 4
@mt753x_mmd_read = common dso_local global i32 0, align 4
@mt753x_mmd_write = common dso_local global i32 0, align 4
@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@FORCE_MODE_LNK = common dso_local global i32 0, align 4
@SYS_CTRL = common dso_local global i32 0, align 4
@SW_SYS_RST = common dso_local global i32 0, align 4
@SW_REG_RST = common dso_local global i32 0, align 4
@SMT0_IOLB = common dso_local global i32 0, align 4
@SMT_IOLB_5_SMI_MDC_EN = common dso_local global i32 0, align 4
@GMACCR = common dso_local global i32 0, align 4
@MTCC_LMT_S = common dso_local global i32 0, align 4
@MAX_RX_JUMBO_S = common dso_local global i32 0, align 4
@RX_PKT_LEN_MAX_JUMBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*)* @mt7531_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7531_sw_init(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %6 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* @MT753X_SMI_ADDR_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %12 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %14 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %13, i32 0, i32 2
  store i32 (%struct.gsw_mt753x*, i32, i32)* @mt753x_mii_read, i32 (%struct.gsw_mt753x*, i32, i32)** %14, align 8
  %15 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %16 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %15, i32 0, i32 5
  store i32 (%struct.gsw_mt753x*, i32, i32, i32)* @mt753x_mii_write, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %16, align 8
  %17 = load i32, i32* @mt753x_mmd_read, align 4
  %18 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %19 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @mt753x_mmd_write, align 4
  %21 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %22 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %46, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %29 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %28, i32 0, i32 2
  %30 = load i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32)** %29, align 8
  %31 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MII_BMCR, align 4
  %34 = call i32 %30(%struct.gsw_mt753x* %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @BMCR_ISOLATE, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %39 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %38, i32 0, i32 5
  %40 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %39, align 8
  %41 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @MII_BMCR, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %40(%struct.gsw_mt753x* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %51 = call i32 @PMCR(i32 5)
  %52 = load i32, i32* @FORCE_MODE_LNK, align 4
  %53 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %50, i32 %51, i32 %52)
  %54 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %55 = call i32 @PMCR(i32 6)
  %56 = load i32, i32* @FORCE_MODE_LNK, align 4
  %57 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %54, i32 %55, i32 %56)
  %58 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %59 = load i32, i32* @SYS_CTRL, align 4
  %60 = load i32, i32* @SW_SYS_RST, align 4
  %61 = load i32, i32* @SW_REG_RST, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %58, i32 %59, i32 %62)
  %64 = call i32 @usleep_range(i32 10, i32 20)
  %65 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %66 = load i32, i32* @SMT0_IOLB, align 4
  %67 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %69 = load i32, i32* @SMT0_IOLB, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SMT_IOLB_5_SMI_MDC_EN, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %68, i32 %69, i32 %72)
  %74 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %75 = call i32 @mt7531_set_gpio_pinmux(%struct.gsw_mt753x* %74)
  %76 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %77 = load i32, i32* @GMACCR, align 4
  %78 = load i32, i32* @MTCC_LMT_S, align 4
  %79 = shl i32 15, %78
  %80 = load i32, i32* @MAX_RX_JUMBO_S, align 4
  %81 = shl i32 11, %80
  %82 = or i32 %79, %81
  %83 = load i32, i32* @RX_PKT_LEN_MAX_JUMBO, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %76, i32 %77, i32 %84)
  %86 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %87 = call i32 @mt7531_core_pll_setup(%struct.gsw_mt753x* %86)
  %88 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %89 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %90 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %89, i32 0, i32 4
  %91 = call i32 @mt7531_mac_port_setup(%struct.gsw_mt753x* %88, i32 5, i32* %90)
  %92 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %93 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %94 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %93, i32 0, i32 3
  %95 = call i32 @mt7531_mac_port_setup(%struct.gsw_mt753x* %92, i32 6, i32* %94)
  ret i32 0
}

declare dso_local i32 @mt753x_mii_read(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mt753x_mii_write(%struct.gsw_mt753x*, i32, i32, i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @PMCR(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt7531_set_gpio_pinmux(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt7531_core_pll_setup(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt7531_mac_port_setup(%struct.gsw_mt753x*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
