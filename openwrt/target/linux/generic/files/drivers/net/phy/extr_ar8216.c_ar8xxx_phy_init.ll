; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.TYPE_2__*, %struct.mii_bus*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.ar8xxx_priv*, i32)* }
%struct.mii_bus = type { i32 }

@AR8XXX_NUM_PHYS = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8xxx_phy_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_bus*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = inttoptr i64 %7 to %struct.mii_bus*
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 1
  %14 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi %struct.mii_bus* [ %10, %9 ], [ %14, %11 ]
  store %struct.mii_bus* %16, %struct.mii_bus** %4, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %64, %15
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @AR8XXX_NUM_PHYS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.ar8xxx_priv*, i32)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %32, align 8
  %34 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 %33(%struct.ar8xxx_priv* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %21
  %38 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MII_ADVERTISE, align 4
  %41 = load i32, i32* @ADVERTISE_ALL, align 4
  %42 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @mdiobus_write(%struct.mii_bus* %38, i32 %39, i32 %40, i32 %45)
  %47 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %48 = call i64 @ar8xxx_has_gige(%struct.ar8xxx_priv* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @MII_CTRL1000, align 4
  %54 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %55 = call i32 @mdiobus_write(%struct.mii_bus* %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %37
  %57 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MII_BMCR, align 4
  %60 = load i32, i32* @BMCR_RESET, align 4
  %61 = load i32, i32* @BMCR_ANENABLE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @mdiobus_write(%struct.mii_bus* %57, i32 %58, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %17

67:                                               ; preds = %17
  %68 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %69 = call i32 @ar8xxx_phy_poll_reset(%struct.mii_bus* %68)
  ret void
}

declare dso_local i32 @mdiobus_write(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i64 @ar8xxx_has_gige(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_phy_poll_reset(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
