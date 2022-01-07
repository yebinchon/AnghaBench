; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_reg_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)*, i32, i32 (%struct.TYPE_4__*, i32, i32, i32)* }

@MT753X_REG_PAGE_ADDR_M = common dso_local global i32 0, align 4
@MT753X_REG_PAGE_ADDR_S = common dso_local global i32 0, align 4
@MT753X_REG_ADDR_M = common dso_local global i32 0, align 4
@MT753X_REG_ADDR_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x* %0, i32 %1) #0 {
  %3 = alloca %struct.gsw_mt753x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %8 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %13 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %15, align 8
  %17 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %18 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %21 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MT753X_REG_PAGE_ADDR_M, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MT753X_REG_PAGE_ADDR_S, align 4
  %27 = ashr i32 %25, %26
  %28 = call i32 %16(%struct.TYPE_4__* %19, i32 %22, i32 31, i32 %27)
  %29 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %30 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %32, align 8
  %34 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %35 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %38 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MT753X_REG_ADDR_M, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @MT753X_REG_ADDR_S, align 4
  %44 = ashr i32 %42, %43
  %45 = call i32 %33(%struct.TYPE_4__* %36, i32 %39, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %47 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %49, align 8
  %51 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %52 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %55 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %50(%struct.TYPE_4__* %53, i32 %56, i32 16)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %59 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 65535
  %67 = or i32 %64, %66
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
