; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8229_hw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8229_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AR8216_REG_CTRL = common dso_local global i32 0, align 4
@AR8216_CTRL_RESET = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@AR8229_REG_OPER_MODE0 = common dso_local global i32 0, align 4
@AR8229_OPER_MODE0_MAC_GMII_EN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@AR8229_OPER_MODE0_PHY_MII_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ar8229: unsupported mii mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR8229_REG_OPER_MODE1 = common dso_local global i32 0, align 4
@AR8229_REG_OPER_MODE1_PHY4_MII_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8229_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8229_hw_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %12 = load i32, i32* @AR8216_REG_CTRL, align 4
  %13 = load i32, i32* @AR8216_CTRL_RESET, align 4
  %14 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %11, i32 %12, i32 %13)
  %15 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %16 = load i32, i32* @AR8216_REG_CTRL, align 4
  %17 = load i32, i32* @AR8216_CTRL_RESET, align 4
  %18 = call i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv* %15, i32 %16, i32 %17, i32 0, i32 1000)
  %19 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @of_get_phy_mode(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %10
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %30 = load i32, i32* @AR8229_REG_OPER_MODE0, align 4
  %31 = load i32, i32* @AR8229_OPER_MODE0_MAC_GMII_EN, align 4
  %32 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %29, i32 %30, i32 %31)
  br label %47

33:                                               ; preds = %10
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %39 = load i32, i32* @AR8229_REG_OPER_MODE0, align 4
  %40 = load i32, i32* @AR8229_OPER_MODE0_PHY_MII_EN, align 4
  %41 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %38, i32 %39, i32 %40)
  br label %46

42:                                               ; preds = %33
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %54 = load i32, i32* @AR8229_REG_OPER_MODE1, align 4
  %55 = load i32, i32* @AR8229_REG_OPER_MODE1_PHY4_MII_EN, align 4
  %56 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %53, i32 %54, i32 %55)
  %57 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %58 = call i32 @AR8216_REG_PORT_STATUS(i32 5)
  %59 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %62 = call i32 @ar8xxx_phy_init(%struct.ar8xxx_priv* %61)
  %63 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %42, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @of_get_phy_mode(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @AR8216_REG_PORT_STATUS(i32) #1

declare dso_local i32 @ar8xxx_phy_init(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
