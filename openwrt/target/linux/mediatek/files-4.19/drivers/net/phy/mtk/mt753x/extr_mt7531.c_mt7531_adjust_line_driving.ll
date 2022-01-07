; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_adjust_line_driving.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_adjust_line_driving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)* }

@PHY_DEV1E = common dso_local global i32 0, align 4
@RXADC_LDO_CONTROL_2 = common dso_local global i32 0, align 4
@RXADC_CONTROL_3 = common dso_local global i32 0, align 4
@PHY_DEV1F = common dso_local global i32 0, align 4
@TXVLD_DA_271 = common dso_local global i32 0, align 4
@TXVLD_DA_272 = common dso_local global i32 0, align 4
@TXVLD_DA_273 = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_0FE = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_41 = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_268 = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_269 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*, i32)* @mt7531_adjust_line_driving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7531_adjust_line_driving(%struct.gsw_mt753x* %0, i32 %1) #0 {
  %3 = alloca %struct.gsw_mt753x*, align 8
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %6 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %5, i32 0, i32 0
  %7 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %6, align 8
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PHY_DEV1E, align 4
  %11 = load i32, i32* @RXADC_LDO_CONTROL_2, align 4
  %12 = call i32 %7(%struct.gsw_mt753x* %8, i32 %9, i32 %10, i32 %11, i32 8738)
  %13 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %14 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %13, i32 0, i32 0
  %15 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %14, align 8
  %16 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PHY_DEV1E, align 4
  %19 = load i32, i32* @RXADC_CONTROL_3, align 4
  %20 = call i32 %15(%struct.gsw_mt753x* %16, i32 %17, i32 %18, i32 %19, i32 17476)
  %21 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %22 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %21, i32 0, i32 0
  %23 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %22, align 8
  %24 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PHY_DEV1F, align 4
  %27 = load i32, i32* @TXVLD_DA_271, align 4
  %28 = call i32 %23(%struct.gsw_mt753x* %24, i32 %25, i32 %26, i32 %27, i32 11429)
  %29 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %30 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %29, i32 0, i32 0
  %31 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %30, align 8
  %32 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PHY_DEV1F, align 4
  %35 = load i32, i32* @TXVLD_DA_272, align 4
  %36 = call i32 %31(%struct.gsw_mt753x* %32, i32 %33, i32 %34, i32 %35, i32 3179)
  %37 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %38 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %37, i32 0, i32 0
  %39 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %38, align 8
  %40 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PHY_DEV1F, align 4
  %43 = load i32, i32* @TXVLD_DA_273, align 4
  %44 = call i32 %39(%struct.gsw_mt753x* %40, i32 %41, i32 %42, i32 %43, i32 12288)
  %45 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %46 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %45, i32 0, i32 0
  %47 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %46, align 8
  %48 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PHY_DEV1E, align 4
  %51 = load i32, i32* @PHY_DEV1E_REG_0FE, align 4
  %52 = call i32 %47(%struct.gsw_mt753x* %48, i32 %49, i32 %50, i32 %51, i32 2)
  %53 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %54 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %53, i32 0, i32 0
  %55 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %54, align 8
  %56 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @PHY_DEV1E, align 4
  %59 = load i32, i32* @PHY_DEV1E_REG_41, align 4
  %60 = call i32 %55(%struct.gsw_mt753x* %56, i32 %57, i32 %58, i32 %59, i32 13107)
  %61 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %62 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %61, i32 0, i32 0
  %63 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %62, align 8
  %64 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @PHY_DEV1F, align 4
  %67 = load i32, i32* @PHY_DEV1F_REG_268, align 4
  %68 = call i32 %63(%struct.gsw_mt753x* %64, i32 %65, i32 %66, i32 %67, i32 904)
  %69 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %70 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %69, i32 0, i32 0
  %71 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %70, align 8
  %72 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @PHY_DEV1F, align 4
  %75 = load i32, i32* @PHY_DEV1F_REG_269, align 4
  %76 = call i32 %71(%struct.gsw_mt753x* %72, i32 %73, i32 %74, i32 %75, i32 17480)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
