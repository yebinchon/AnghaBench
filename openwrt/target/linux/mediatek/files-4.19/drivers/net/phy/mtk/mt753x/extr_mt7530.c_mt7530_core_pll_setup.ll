; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_core_pll_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_core_pll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@HWSTRAP = common dso_local global i32 0, align 4
@XTAL_FSEL_M = common dso_local global i32 0, align 4
@XTAL_FSEL_S = common dso_local global i32 0, align 4
@TRGMII_GSW_CLK_CG = common dso_local global i32 0, align 4
@CORE_GSWPLL_GCR_1 = common dso_local global i32 0, align 4
@GSWPLL_POSTDIV_200M_S = common dso_local global i32 0, align 4
@GSWPLL_FBKDIV_200M_S = common dso_local global i32 0, align 4
@CORE_GSWPLL_GCR_2 = common dso_local global i32 0, align 4
@GSWPLL_POSTDIV_500M_S = common dso_local global i32 0, align 4
@GSWPLL_FBKDIV_500M_S = common dso_local global i32 0, align 4
@GSWPLL_EN_PRE = common dso_local global i32 0, align 4
@GSWCK_EN = common dso_local global i32 0, align 4
@CHG_TRAP = common dso_local global i32 0, align 4
@C_MDIO_BPS_S = common dso_local global i32 0, align 4
@MHWSTRAP = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_TRGMII = common dso_local global i64 0, align 8
@P5RGMIIRXCR = common dso_local global i32 0, align 4
@CSR_RGMII_EDGE_ALIGN = common dso_local global i32 0, align 4
@CSR_RGMII_RXC_0DEG_CFG_S = common dso_local global i32 0, align 4
@P5RGMIITXCR = common dso_local global i32 0, align 4
@CSR_RGMII_TXC_CFG_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt7530_core_pll_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_core_pll_setup(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %4 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %5 = load i32, i32* @HWSTRAP, align 4
  %6 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @XTAL_FSEL_M, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @XTAL_FSEL_S, align 4
  %11 = ashr i32 %9, %10
  switch i32 %11, label %47 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  %13 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %14 = load i32, i32* @TRGMII_GSW_CLK_CG, align 4
  %15 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %13, i32 %14, i32 0)
  %16 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %17 = load i32, i32* @CORE_GSWPLL_GCR_1, align 4
  %18 = load i32, i32* @GSWPLL_POSTDIV_200M_S, align 4
  %19 = shl i32 2, %18
  %20 = load i32, i32* @GSWPLL_FBKDIV_200M_S, align 4
  %21 = shl i32 32, %20
  %22 = or i32 %19, %21
  %23 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %16, i32 %17, i32 %22)
  %24 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %25 = load i32, i32* @CORE_GSWPLL_GCR_2, align 4
  %26 = load i32, i32* @GSWPLL_POSTDIV_500M_S, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @GSWPLL_FBKDIV_500M_S, align 4
  %29 = shl i32 25, %28
  %30 = or i32 %27, %29
  %31 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %24, i32 %25, i32 %30)
  %32 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %33 = load i32, i32* @CORE_GSWPLL_GCR_1, align 4
  %34 = load i32, i32* @GSWPLL_POSTDIV_200M_S, align 4
  %35 = shl i32 2, %34
  %36 = load i32, i32* @GSWPLL_FBKDIV_200M_S, align 4
  %37 = shl i32 32, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @GSWPLL_EN_PRE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %32, i32 %33, i32 %40)
  %42 = call i32 @usleep_range(i32 20, i32 40)
  %43 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %44 = load i32, i32* @TRGMII_GSW_CLK_CG, align 4
  %45 = load i32, i32* @GSWCK_EN, align 4
  %46 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %43, i32 %44, i32 %45)
  br label %48

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %47, %12
  %49 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %50 = load i32, i32* @HWSTRAP, align 4
  %51 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @CHG_TRAP, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %56 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i32, i32* @C_MDIO_BPS_S, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %48
  %65 = load i32, i32* @C_MDIO_BPS_S, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %70 = load i32, i32* @MHWSTRAP, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %69, i32 %70, i32 %71)
  %73 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %74 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %80 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PHY_INTERFACE_MODE_TRGMII, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %87 = call i32 @mt7530_trgmii_setting(%struct.gsw_mt753x* %86)
  br label %91

88:                                               ; preds = %78, %68
  %89 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %90 = call i32 @mt7530_rgmii_setting(%struct.gsw_mt753x* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %93 = load i32, i32* @P5RGMIIRXCR, align 4
  %94 = load i32, i32* @CSR_RGMII_EDGE_ALIGN, align 4
  %95 = load i32, i32* @CSR_RGMII_RXC_0DEG_CFG_S, align 4
  %96 = shl i32 2, %95
  %97 = or i32 %94, %96
  %98 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %92, i32 %93, i32 %97)
  %99 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %100 = load i32, i32* @P5RGMIITXCR, align 4
  %101 = load i32, i32* @CSR_RGMII_TXC_CFG_S, align 4
  %102 = shl i32 20, %101
  %103 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %99, i32 %100, i32 %102)
  ret void
}

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt7530_core_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mt7530_trgmii_setting(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt7530_rgmii_setting(%struct.gsw_mt753x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
