; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_set_port_rgmii.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_set_port_rgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"RGMII mode is not available for port %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CLKGEN_CTRL = common dso_local global i32 0, align 4
@GP_CLK_EN = common dso_local global i32 0, align 4
@GP_MODE_M = common dso_local global i32 0, align 4
@GP_MODE_RGMII = common dso_local global i32 0, align 4
@GP_MODE_S = common dso_local global i32 0, align 4
@TXCLK_NO_REVERSE = common dso_local global i32 0, align 4
@RXCLK_NO_DELAY = common dso_local global i32 0, align 4
@CLK_SKEW_IN_M = common dso_local global i32 0, align 4
@CLK_SKEW_IN_NO_CHANGE = common dso_local global i32 0, align 4
@CLK_SKEW_IN_S = common dso_local global i32 0, align 4
@CLK_SKEW_OUT_M = common dso_local global i32 0, align 4
@CLK_SKEW_OUT_NO_CHANGE = common dso_local global i32 0, align 4
@CLK_SKEW_OUT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*, i32)* @mt7531_set_port_rgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7531_set_port_rgmii(%struct.gsw_mt753x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsw_mt753x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 5
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %11 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dev_info(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %19 = load i32, i32* @CLKGEN_CTRL, align 4
  %20 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @GP_CLK_EN, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @GP_MODE_M, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @GP_MODE_RGMII, align 4
  %29 = load i32, i32* @GP_MODE_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @TXCLK_NO_REVERSE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @RXCLK_NO_DELAY, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @CLK_SKEW_IN_M, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @CLK_SKEW_IN_NO_CHANGE, align 4
  %44 = load i32, i32* @CLK_SKEW_IN_S, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @CLK_SKEW_OUT_M, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @CLK_SKEW_OUT_NO_CHANGE, align 4
  %53 = load i32, i32* @CLK_SKEW_OUT_S, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %58 = load i32, i32* @CLKGEN_CTRL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %57, i32 %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %17, %9
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
