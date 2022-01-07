; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_trgmii_setting.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_trgmii_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@CORE_PLL_GROUP5 = common dso_local global i32 0, align 4
@CORE_PLL_GROUP6 = common dso_local global i32 0, align 4
@CORE_PLL_GROUP10 = common dso_local global i32 0, align 4
@CORE_PLL_GROUP11 = common dso_local global i32 0, align 4
@CORE_PLL_GROUP4 = common dso_local global i32 0, align 4
@RG_SYSPLL_DDSFBK_EN = common dso_local global i32 0, align 4
@RG_SYSPLL_BIAS_EN = common dso_local global i32 0, align 4
@RG_SYSPLL_BIAS_LPF_EN = common dso_local global i32 0, align 4
@CORE_PLL_GROUP2 = common dso_local global i32 0, align 4
@RG_SYSPLL_EN_NORMAL = common dso_local global i32 0, align 4
@RG_SYSPLL_VODEN = common dso_local global i32 0, align 4
@RG_SYSPLL_POSDIV_S = common dso_local global i32 0, align 4
@CORE_PLL_GROUP7 = common dso_local global i32 0, align 4
@RG_LCCDS_C_S = common dso_local global i32 0, align 4
@RG_LCDDS_PWDB = common dso_local global i32 0, align 4
@RG_LCDDS_ISO_EN = common dso_local global i32 0, align 4
@TRGMII_GSW_CLK_CG = common dso_local global i32 0, align 4
@GSWCK_EN = common dso_local global i32 0, align 4
@TRGMIICK_EN = common dso_local global i32 0, align 4
@NUM_TRGMII_ODT = common dso_local global i64 0, align 8
@TX_DM_DRVP_S = common dso_local global i32 0, align 4
@TX_DM_DRVN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt7530_trgmii_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_trgmii_setting(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i64, align 8
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %4 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %5 = load i32, i32* @CORE_PLL_GROUP5, align 4
  %6 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %4, i32 %5, i32 1920)
  %7 = call i32 @mdelay(i32 1)
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %9 = load i32, i32* @CORE_PLL_GROUP6, align 4
  %10 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %8, i32 %9, i32 0)
  %11 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %12 = load i32, i32* @CORE_PLL_GROUP10, align 4
  %13 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %11, i32 %12, i32 135)
  %14 = call i32 @mdelay(i32 1)
  %15 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %16 = load i32, i32* @CORE_PLL_GROUP11, align 4
  %17 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %15, i32 %16, i32 135)
  %18 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %19 = load i32, i32* @CORE_PLL_GROUP4, align 4
  %20 = load i32, i32* @RG_SYSPLL_DDSFBK_EN, align 4
  %21 = load i32, i32* @RG_SYSPLL_BIAS_EN, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %18, i32 %19, i32 %22)
  %24 = call i32 @mdelay(i32 1)
  %25 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %26 = load i32, i32* @CORE_PLL_GROUP4, align 4
  %27 = load i32, i32* @RG_SYSPLL_DDSFBK_EN, align 4
  %28 = load i32, i32* @RG_SYSPLL_BIAS_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RG_SYSPLL_BIAS_LPF_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %25, i32 %26, i32 %31)
  %33 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %34 = load i32, i32* @CORE_PLL_GROUP2, align 4
  %35 = load i32, i32* @RG_SYSPLL_EN_NORMAL, align 4
  %36 = load i32, i32* @RG_SYSPLL_VODEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RG_SYSPLL_POSDIV_S, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %33, i32 %34, i32 %40)
  %42 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %43 = load i32, i32* @CORE_PLL_GROUP7, align 4
  %44 = load i32, i32* @RG_LCCDS_C_S, align 4
  %45 = shl i32 3, %44
  %46 = load i32, i32* @RG_LCDDS_PWDB, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RG_LCDDS_ISO_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %42, i32 %43, i32 %49)
  %51 = call i32 @mdelay(i32 1)
  %52 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %53 = load i32, i32* @TRGMII_GSW_CLK_CG, align 4
  %54 = load i32, i32* @GSWCK_EN, align 4
  %55 = load i32, i32* @TRGMIICK_EN, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @mt7530_core_reg_write(%struct.gsw_mt753x* %52, i32 %53, i32 %56)
  store i64 0, i64* %3, align 8
  br label %58

58:                                               ; preds = %72, %1
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @NUM_TRGMII_ODT, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @TRGMII_TD_ODT(i64 %64)
  %66 = load i32, i32* @TX_DM_DRVP_S, align 4
  %67 = shl i32 4, %66
  %68 = load i32, i32* @TX_DM_DRVN_S, align 4
  %69 = shl i32 4, %68
  %70 = or i32 %67, %69
  %71 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %63, i32 %65, i32 %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i64, i64* %3, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %58

75:                                               ; preds = %58
  ret void
}

declare dso_local i32 @mt7530_core_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @TRGMII_TD_ODT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
