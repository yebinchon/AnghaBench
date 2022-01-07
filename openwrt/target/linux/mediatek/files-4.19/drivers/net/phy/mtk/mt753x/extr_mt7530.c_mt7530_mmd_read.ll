; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_mmd_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_mmd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32)*, i32, i32 (%struct.TYPE_5__*, i32, i32, i32)* }

@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MT753X_SMI_ADDR_MASK = common dso_local global i32 0, align 4
@MII_MMD_ACC_CTL_REG = common dso_local global i32 0, align 4
@MMD_ADDR = common dso_local global i32 0, align 4
@MMD_CMD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_M = common dso_local global i32 0, align 4
@MII_MMD_ADDR_DATA_REG = common dso_local global i32 0, align 4
@MMD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*, i32, i32, i32)* @mt7530_mmd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_mmd_read(%struct.gsw_mt753x* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @MT753X_SMI_ADDR_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %13, %4
  %22 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %23 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %28 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %30, align 8
  %32 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %33 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %37 = load i32, i32* @MMD_ADDR, align 4
  %38 = load i32, i32* @MMD_CMD_S, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MMD_DEVAD_S, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @MMD_DEVAD_M, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %39, %44
  %46 = call i32 %31(%struct.TYPE_5__* %34, i32 %35, i32 %36, i32 %45)
  %47 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %48 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %50, align 8
  %52 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %53 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 %51(%struct.TYPE_5__* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %60 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %62, align 8
  %64 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %65 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %69 = load i32, i32* @MMD_DATA, align 4
  %70 = load i32, i32* @MMD_CMD_S, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MMD_DEVAD_S, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @MMD_DEVAD_M, align 4
  %76 = and i32 %74, %75
  %77 = or i32 %71, %76
  %78 = call i32 %63(%struct.TYPE_5__* %66, i32 %67, i32 %68, i32 %77)
  %79 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %80 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %82, align 8
  %84 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %85 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %89 = call i32 %83(%struct.TYPE_5__* %86, i32 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %91 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
