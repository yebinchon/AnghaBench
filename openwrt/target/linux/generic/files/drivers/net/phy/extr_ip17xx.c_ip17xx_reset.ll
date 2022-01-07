; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_reset.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.ip17xx_state = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.ip17xx_state*)*, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @ip17xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_reset(%struct.switch_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.ip17xx_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %8 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %7)
  store %struct.ip17xx_state* %8, %struct.ip17xx_state** %4, align 8
  %9 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %10 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @REG_SUPP(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  %17 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %18 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %19 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %24 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @setPhy(%struct.ip17xx_state* %17, i32 %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %80

33:                                               ; preds = %16
  %34 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %35 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %36 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @getPhy(%struct.ip17xx_state* %34, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = call i32 @mdelay(i32 2)
  br label %42

42:                                               ; preds = %33, %1
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %46 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %44, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MII_BMCR, align 4
  %56 = load i32, i32* @BMCR_RESET, align 4
  %57 = call i32 @ip_phy_write(%struct.ip17xx_state* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %80

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %68 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %70 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %72 = call i32 @ip17xx_reset_vlan_config(%struct.ip17xx_state* %71)
  %73 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %74 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (%struct.ip17xx_state*)*, i32 (%struct.ip17xx_state*)** %76, align 8
  %78 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %79 = call i32 %77(%struct.ip17xx_state* %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %66, %60, %31
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i64 @REG_SUPP(i32) #1

declare dso_local i32 @setPhy(%struct.ip17xx_state*, i32, i32) #1

declare dso_local i32 @getPhy(%struct.ip17xx_state*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ip_phy_write(%struct.ip17xx_state*, i32, i32, i32) #1

declare dso_local i32 @ip17xx_reset_vlan_config(%struct.ip17xx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
