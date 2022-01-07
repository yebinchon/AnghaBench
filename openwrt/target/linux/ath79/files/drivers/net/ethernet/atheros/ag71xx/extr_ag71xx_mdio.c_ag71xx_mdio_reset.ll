; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ag71xx_mdio*, %struct.TYPE_2__ }
%struct.ag71xx_mdio = type { i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"builtin-switch\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"qca,ar9340-mdio\00", align 1
@MII_CFG_CLK_DIV_58 = common dso_local global i32 0, align 4
@MII_CFG_CLK_DIV_10 = common dso_local global i32 0, align 4
@MII_CFG_CLK_DIV_28 = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CFG = common dso_local global i32 0, align 4
@MII_CFG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @ag71xx_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.ag71xx_mdio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  %7 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %8 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %3, align 8
  %11 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %12, align 8
  store %struct.ag71xx_mdio* %13, %struct.ag71xx_mdio** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = call i32 @of_property_read_bool(%struct.device_node* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i64 @ag71xx_mdio_get_divider(%struct.device_node* %16, i32* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = call i64 @of_device_is_compatible(%struct.device_node* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @MII_CFG_CLK_DIV_58, align 4
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @MII_CFG_CLK_DIV_10, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @MII_CFG_CLK_DIV_28, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %36 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MII_CFG_RESET, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @regmap_write(i32 %37, i32 %38, i32 %41)
  %43 = call i32 @udelay(i32 100)
  %44 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %45 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @regmap_write(i32 %46, i32 %47, i32 %48)
  %50 = call i32 @udelay(i32 100)
  ret i32 0
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @ag71xx_mdio_get_divider(%struct.device_node*, i32*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
