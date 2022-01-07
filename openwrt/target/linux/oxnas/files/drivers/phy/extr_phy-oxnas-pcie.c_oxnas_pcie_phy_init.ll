; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/phy/extr_phy-oxnas-pcie.c_oxnas_pcie_phy_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/phy/extr_phy-oxnas-pcie.c_oxnas_pcie_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.oxnas_pcie_phy = type { i32, i32 }
%struct.reset_control = type { i32 }

@SYS_CTRL_HCSL_CTRL_REGOFFSET = common dso_local global i32 0, align 4
@HCSL_BIAS_ON = common dso_local global i32 0, align 4
@HCSL_PCIE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"phy reset failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @oxnas_pcie_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.oxnas_pcie_phy*, align 8
  %5 = alloca %struct.reset_control*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.oxnas_pcie_phy* @phy_get_drvdata(%struct.phy* %7)
  store %struct.oxnas_pcie_phy* %8, %struct.oxnas_pcie_phy** %4, align 8
  %9 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %4, align 8
  %10 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SYS_CTRL_HCSL_CTRL_REGOFFSET, align 4
  %13 = load i32, i32* @HCSL_BIAS_ON, align 4
  %14 = load i32, i32* @HCSL_PCIE_EN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @regmap_write(i32 %11, i32 %12, i32 %15)
  %17 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %4, align 8
  %18 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.reset_control* @reset_control_get(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.reset_control* %20, %struct.reset_control** %5, align 8
  %21 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %22 = call i64 @IS_ERR(%struct.reset_control* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %26 = call i32 @PTR_ERR(%struct.reset_control* %25)
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %29 = call i32 @reset_control_reset(%struct.reset_control* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %31 = call i32 @reset_control_put(%struct.reset_control* %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %4, align 8
  %37 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.oxnas_pcie_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local %struct.reset_control* @reset_control_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @reset_control_reset(%struct.reset_control*) #1

declare dso_local i32 @reset_control_put(%struct.reset_control*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
