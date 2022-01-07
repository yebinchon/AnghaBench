; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i8* }
%struct.ag71xx_mdio = type { %struct.mii_bus*, i32, i32 }
%struct.mii_bus = type { i8*, i32*, i64, i32, %struct.device*, %struct.ag71xx_mdio*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"builtin-switch\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ag71xx_mdio\00", align 1
@ag71xx_mdio_mii_read = common dso_local global i32 0, align 4
@ag71xx_mdio_mii_write = common dso_local global i32 0, align 4
@ag71xx_mdio_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@bus_count = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"phy-mask\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ag71xx_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.ag71xx_mdio*, align 8
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ag71xx_mdio* @devm_kzalloc(%struct.device* %17, i32 16, i32 %18)
  store %struct.ag71xx_mdio* %19, %struct.ag71xx_mdio** %6, align 8
  %20 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %21 = icmp ne %struct.ag71xx_mdio* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %141

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %29 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %31 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %37 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %141

40:                                               ; preds = %25
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call %struct.mii_bus* @devm_mdiobus_alloc(%struct.device* %41)
  store %struct.mii_bus* %42, %struct.mii_bus** %7, align 8
  %43 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %44 = icmp ne %struct.mii_bus* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %141

48:                                               ; preds = %40
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @devm_reset_control_get_exclusive(%struct.device* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %52 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i32 @of_property_read_bool(%struct.device_node* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %8, align 4
  %55 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %56 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %56, align 8
  %57 = load i32, i32* @ag71xx_mdio_mii_read, align 4
  %58 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %59 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @ag71xx_mdio_mii_write, align 4
  %61 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %62 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ag71xx_mdio_reset, align 4
  %64 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %65 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %67 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %68 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %67, i32 0, i32 5
  store %struct.ag71xx_mdio* %66, %struct.ag71xx_mdio** %68, align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %71 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %70, i32 0, i32 4
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %73 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = getelementptr inbounds %struct.device_node, %struct.device_node* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @bus_count, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @bus_count, align 4
  %81 = call i32 @snprintf(i32 %74, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %78, i32 %79)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %48
  %85 = load %struct.device_node*, %struct.device_node** %5, align 8
  %86 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %87 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %86, i32 0, i32 2
  %88 = call i64 @of_property_read_u32(%struct.device_node* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %92 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %84, %48
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @PHY_MAX_ADDR, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32, i32* @PHY_POLL, align 4
  %100 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %101 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %94

109:                                              ; preds = %94
  %110 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %111 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %109
  %116 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %117 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @reset_control_assert(i32 %118)
  %120 = call i32 @msleep(i32 100)
  %121 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %122 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @reset_control_deassert(i32 %123)
  %125 = call i32 @msleep(i32 200)
  br label %126

126:                                              ; preds = %115, %109
  %127 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %128 = load %struct.device_node*, %struct.device_node** %5, align 8
  %129 = call i32 @of_mdiobus_register(%struct.mii_bus* %127, %struct.device_node* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %2, align 4
  br label %141

134:                                              ; preds = %126
  %135 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %136 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %137 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %136, i32 0, i32 0
  store %struct.mii_bus* %135, %struct.mii_bus** %137, align 8
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %6, align 8
  %140 = call i32 @platform_set_drvdata(%struct.platform_device* %138, %struct.ag71xx_mdio* %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %134, %132, %45, %35, %22
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.ag71xx_mdio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(%struct.device*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ag71xx_mdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
