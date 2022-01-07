; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_mii_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ag71xx_mdio* }
%struct.ag71xx_mdio = type { i32 }

@AG71XX_REG_MII_CMD = common dso_local global i32 0, align 4
@MII_CMD_WRITE = common dso_local global i32 0, align 4
@AG71XX_REG_MII_ADDR = common dso_local global i32 0, align 4
@MII_ADDR_SHIFT = common dso_local global i32 0, align 4
@MII_CMD_READ = common dso_local global i32 0, align 4
@AG71XX_REG_MII_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mii_read: addr=%04x, reg=%04x, value=%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @ag71xx_mdio_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_mii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ag71xx_mdio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %12, align 8
  store %struct.ag71xx_mdio* %13, %struct.ag71xx_mdio** %8, align 8
  %14 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %8, align 8
  %15 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 65535, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %8, align 8
  %21 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %24 = load i32, i32* @MII_CMD_WRITE, align 4
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %8, align 8
  %27 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AG71XX_REG_MII_ADDR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = load i32, i32* @MII_ADDR_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 255
  %36 = or i32 %33, %35
  %37 = call i32 @regmap_write(i32 %28, i32 %29, i32 %36)
  %38 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %8, align 8
  %39 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %42 = load i32, i32* @MII_CMD_READ, align 4
  %43 = call i32 @regmap_write(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %8, align 8
  %45 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %19
  store i32 65535, i32* %4, align 4
  br label %68

49:                                               ; preds = %19
  %50 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %8, align 8
  %51 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AG71XX_REG_MII_STATUS, align 4
  %54 = call i32 @regmap_read(i32 %52, i32 %53, i32* %10)
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %10, align 4
  %57 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %8, align 8
  %58 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %61 = load i32, i32* @MII_CMD_WRITE, align 4
  %62 = call i32 @regmap_write(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %49, %48, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
