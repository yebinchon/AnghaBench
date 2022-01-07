; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_reg_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, i32, i32, i32)* }

@MT753X_REG_PAGE_ADDR_M = common dso_local global i32 0, align 4
@MT753X_REG_PAGE_ADDR_S = common dso_local global i32 0, align 4
@MT753X_REG_ADDR_M = common dso_local global i32 0, align 4
@MT753X_REG_ADDR_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt753x_reg_write(%struct.gsw_mt753x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gsw_mt753x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %8 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %13 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %15, align 8
  %17 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %18 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %21 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MT753X_REG_PAGE_ADDR_M, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MT753X_REG_PAGE_ADDR_S, align 4
  %27 = ashr i32 %25, %26
  %28 = call i32 %16(%struct.TYPE_4__* %19, i32 %22, i32 31, i32 %27)
  %29 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %30 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %32, align 8
  %34 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %35 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %38 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MT753X_REG_ADDR_M, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @MT753X_REG_ADDR_S, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 65535
  %47 = call i32 %33(%struct.TYPE_4__* %36, i32 %39, i32 %44, i32 %46)
  %48 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %49 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %51, align 8
  %53 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %54 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %57 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 16
  %61 = call i32 %52(%struct.TYPE_4__* %55, i32 %58, i32 16, i32 %60)
  %62 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %63 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
