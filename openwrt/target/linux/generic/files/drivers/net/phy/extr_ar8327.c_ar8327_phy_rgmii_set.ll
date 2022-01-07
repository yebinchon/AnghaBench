; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_phy_rgmii_set.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_phy_rgmii_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }
%struct.phy_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"qca,phy-rgmii-en\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ar8327: qca,phy-rgmii-en is not specified\0A\00", align 1
@AR8327_PHY_MODE_SEL = common dso_local global i32 0, align 4
@AR8327_PHY_MODE_SEL_RGMII = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"qca,txclk-delay-en\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"ar8327: qca,txclk-delay-en is not specified\0A\00", align 1
@AR8327_PHY_SYS_CTRL = common dso_local global i32 0, align 4
@AR8327_PHY_SYS_CTRL_RGMII_TX_DELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"qca,rxclk-delay-en\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"ar8327: qca,rxclk-delay-en is not specified\0A\00", align 1
@AR8327_PHY_TEST_CTRL = common dso_local global i32 0, align 4
@AR8327_PHY_TEST_CTRL_RGMII_RX_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, %struct.phy_device*)* @ar8327_phy_rgmii_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_phy_rgmii_set(%struct.ar8xxx_priv* %0, %struct.phy_device* %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store %struct.phy_device* %1, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = call i32 @of_property_read_bool(%struct.device_node* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %75

26:                                               ; preds = %20
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @AR8327_PHY_MODE_SEL, align 4
  %30 = call i32 @ar8xxx_phy_dbg_read(%struct.ar8xxx_priv* %27, i32 %28, i32 %29, i32* %5)
  %31 = load i32, i32* @AR8327_PHY_MODE_SEL_RGMII, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AR8327_PHY_MODE_SEL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = call i32 @of_property_read_bool(%struct.device_node* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %26
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %75

44:                                               ; preds = %26
  %45 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @AR8327_PHY_SYS_CTRL, align 4
  %48 = call i32 @ar8xxx_phy_dbg_read(%struct.ar8xxx_priv* %45, i32 %46, i32 %47, i32* %5)
  %49 = load i32, i32* @AR8327_PHY_SYS_CTRL_RGMII_TX_DELAY, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @AR8327_PHY_SYS_CTRL, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.device_node*, %struct.device_node** %7, align 8
  %58 = call i32 @of_property_read_bool(%struct.device_node* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %44
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %75

62:                                               ; preds = %44
  %63 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AR8327_PHY_TEST_CTRL, align 4
  %66 = call i32 @ar8xxx_phy_dbg_read(%struct.ar8xxx_priv* %63, i32 %64, i32 %65, i32* %5)
  %67 = load i32, i32* @AR8327_PHY_TEST_CTRL_RGMII_RX_DELAY, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @AR8327_PHY_TEST_CTRL, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %60, %42, %24, %19
  ret void
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ar8xxx_phy_dbg_read(%struct.ar8xxx_priv*, i32, i32, i32*) #1

declare dso_local i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
