; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mmd_ind_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mmd_ind_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, i32 }

@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MT753X_SMI_ADDR_MASK = common dso_local global i32 0, align 4
@MII_MMD_ACC_CTL_REG = common dso_local global i32 0, align 4
@MMD_ADDR = common dso_local global i32 0, align 4
@MMD_CMD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_M = common dso_local global i32 0, align 4
@MDIO_CMD_WRITE = common dso_local global i32 0, align 4
@MDIO_ST_C22 = common dso_local global i32 0, align 4
@MII_MMD_ADDR_DATA_REG = common dso_local global i32 0, align 4
@MMD_DATA = common dso_local global i32 0, align 4
@MDIO_CMD_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt753x_mmd_ind_read(%struct.gsw_mt753x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gsw_mt753x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %15 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @MT753X_SMI_ADDR_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %13, %4
  %22 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %23 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %28 = load i32, i32* @MMD_ADDR, align 4
  %29 = load i32, i32* @MMD_CMD_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MMD_DEVAD_S, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @MMD_DEVAD_M, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %30, %35
  %37 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %38 = load i32, i32* @MDIO_ST_C22, align 4
  %39 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %25, i32 %26, i32 %27, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %45 = load i32, i32* @MDIO_ST_C22, align 4
  %46 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %50 = load i32, i32* @MMD_DATA, align 4
  %51 = load i32, i32* @MMD_CMD_S, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MMD_DEVAD_S, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @MMD_DEVAD_M, align 4
  %57 = and i32 %55, %56
  %58 = or i32 %52, %57
  %59 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %60 = load i32, i32* @MDIO_ST_C22, align 4
  %61 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %47, i32 %48, i32 %49, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %65 = load i32, i32* @MDIO_CMD_READ, align 4
  %66 = load i32, i32* @MDIO_ST_C22, align 4
  %67 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %62, i32 %63, i32 %64, i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %69 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt753x_mii_rw(%struct.gsw_mt753x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
