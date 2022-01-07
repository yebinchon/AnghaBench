; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_4__, %struct.ip17xx_state* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ip17xx_state = type { %struct.TYPE_3__*, i32, %struct.switch_dev }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.switch_dev = type { i32, i32*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_VLANS = common dso_local global i32 0, align 4
@ip17xx_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IP17xx: Found %s at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ip17xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ip17xx_state*, align 8
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ip17xx_state* @kzalloc(i32 48, i32 %16)
  store %struct.ip17xx_state* %17, %struct.ip17xx_state** %4, align 8
  %18 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %19 = icmp ne %struct.ip17xx_state* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %15
  %24 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %25 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %24, i32 0, i32 2
  store %struct.switch_dev* %25, %struct.switch_dev** %5, align 8
  %26 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 1
  store %struct.ip17xx_state* %26, %struct.ip17xx_state** %28, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %34 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %36 = call i32 @get_model(%struct.ip17xx_state* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %75

40:                                               ; preds = %23
  %41 = load i32, i32* @MAX_VLANS, align 4
  %42 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %43 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %45 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %50 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %52 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %57 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %59 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %64 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %66 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %65, i32 0, i32 1
  store i32* @ip17xx_ops, i32** %66, align 8
  %67 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %68 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = call i32 @dev_name(i32* %72)
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %73)
  store i32 0, i32* %2, align 4
  br label %79

75:                                               ; preds = %39
  %76 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %77 = call i32 @kfree(%struct.ip17xx_state* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %40, %20, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.ip17xx_state* @kzalloc(i32, i32) #1

declare dso_local i32 @get_model(%struct.ip17xx_state*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @kfree(%struct.ip17xx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
