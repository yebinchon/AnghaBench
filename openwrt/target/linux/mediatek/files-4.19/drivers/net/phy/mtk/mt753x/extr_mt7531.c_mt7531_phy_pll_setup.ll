; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_phy_pll_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_phy_pll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)* }

@HWSTRAP = common dso_local global i32 0, align 4
@XTAL_FSEL_M = common dso_local global i32 0, align 4
@XTAL_FSEL_S = common dso_local global i32 0, align 4
@PHY_DEV1F = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_104 = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_403 = common dso_local global i32 0, align 4
@PHY_PLL_M = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_10A = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_10B = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_10C = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_10D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt7531_phy_pll_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7531_phy_pll_setup(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %6 = load i32, i32* @HWSTRAP, align 4
  %7 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @XTAL_FSEL_M, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @XTAL_FSEL_S, align 4
  %12 = ashr i32 %10, %11
  switch i32 %12, label %115 [
    i32 129, label %13
    i32 128, label %64
  ]

13:                                               ; preds = %1
  %14 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %15 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %14, i32 0, i32 1
  %16 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %15, align 8
  %17 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %18 = load i32, i32* @PHY_DEV1F, align 4
  %19 = load i32, i32* @PHY_DEV1F_REG_104, align 4
  %20 = call i32 %16(%struct.gsw_mt753x* %17, i32 0, i32 %18, i32 %19, i32 1544)
  %21 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %22 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %21, i32 0, i32 0
  %23 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %22, align 8
  %24 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %25 = load i32, i32* @PHY_DEV1F, align 4
  %26 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %27 = call i32 %23(%struct.gsw_mt753x* %24, i32 0, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @PHY_PLL_M, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = call i32 @PHY_PLL_SEL(i32 3)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %36 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %35, i32 0, i32 1
  %37 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %36, align 8
  %38 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %39 = load i32, i32* @PHY_DEV1F, align 4
  %40 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 %37(%struct.gsw_mt753x* %38, i32 0, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %44 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %43, i32 0, i32 1
  %45 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %44, align 8
  %46 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %47 = load i32, i32* @PHY_DEV1F, align 4
  %48 = load i32, i32* @PHY_DEV1F_REG_10A, align 4
  %49 = call i32 %45(%struct.gsw_mt753x* %46, i32 0, i32 %47, i32 %48, i32 4105)
  %50 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %51 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %50, i32 0, i32 1
  %52 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %51, align 8
  %53 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %54 = load i32, i32* @PHY_DEV1F, align 4
  %55 = load i32, i32* @PHY_DEV1F_REG_10B, align 4
  %56 = call i32 %52(%struct.gsw_mt753x* %53, i32 0, i32 %54, i32 %55, i32 1990)
  %57 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %58 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %57, i32 0, i32 1
  %59 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %58, align 8
  %60 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %61 = load i32, i32* @PHY_DEV1F, align 4
  %62 = load i32, i32* @PHY_DEV1F_REG_10C, align 4
  %63 = call i32 %59(%struct.gsw_mt753x* %60, i32 0, i32 %61, i32 %62, i32 43198)
  br label %115

64:                                               ; preds = %1
  %65 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %66 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %65, i32 0, i32 1
  %67 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %66, align 8
  %68 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %69 = load i32, i32* @PHY_DEV1F, align 4
  %70 = load i32, i32* @PHY_DEV1F_REG_104, align 4
  %71 = call i32 %67(%struct.gsw_mt753x* %68, i32 0, i32 %69, i32 %70, i32 1544)
  %72 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %73 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %72, i32 0, i32 0
  %74 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %73, align 8
  %75 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %76 = load i32, i32* @PHY_DEV1F, align 4
  %77 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %78 = call i32 %74(%struct.gsw_mt753x* %75, i32 0, i32 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @PHY_PLL_M, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = call i32 @PHY_PLL_SEL(i32 3)
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %87 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %86, i32 0, i32 1
  %88 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %87, align 8
  %89 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %90 = load i32, i32* @PHY_DEV1F, align 4
  %91 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 %88(%struct.gsw_mt753x* %89, i32 0, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %95 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %94, i32 0, i32 1
  %96 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %95, align 8
  %97 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %98 = load i32, i32* @PHY_DEV1F, align 4
  %99 = load i32, i32* @PHY_DEV1F_REG_10A, align 4
  %100 = call i32 %96(%struct.gsw_mt753x* %97, i32 0, i32 %98, i32 %99, i32 4120)
  %101 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %102 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %101, i32 0, i32 1
  %103 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %102, align 8
  %104 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %105 = load i32, i32* @PHY_DEV1F, align 4
  %106 = load i32, i32* @PHY_DEV1F_REG_10B, align 4
  %107 = call i32 %103(%struct.gsw_mt753x* %104, i32 0, i32 %105, i32 %106, i32 50806)
  %108 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %109 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %108, i32 0, i32 1
  %110 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %109, align 8
  %111 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %112 = load i32, i32* @PHY_DEV1F, align 4
  %113 = load i32, i32* @PHY_DEV1F_REG_10C, align 4
  %114 = call i32 %110(%struct.gsw_mt753x* %111, i32 0, i32 %112, i32 %113, i32 55486)
  br label %115

115:                                              ; preds = %1, %64, %13
  %116 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %117 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %116, i32 0, i32 1
  %118 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %117, align 8
  %119 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %120 = load i32, i32* @PHY_DEV1F, align 4
  %121 = load i32, i32* @PHY_DEV1F_REG_10D, align 4
  %122 = call i32 %118(%struct.gsw_mt753x* %119, i32 0, i32 %120, i32 %121, i32 16)
  %123 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %124 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %123, i32 0, i32 1
  %125 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %124, align 8
  %126 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %127 = load i32, i32* @PHY_DEV1F, align 4
  %128 = load i32, i32* @PHY_DEV1F_REG_10D, align 4
  %129 = call i32 %125(%struct.gsw_mt753x* %126, i32 0, i32 %127, i32 %128, i32 20)
  ret void
}

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @PHY_PLL_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
