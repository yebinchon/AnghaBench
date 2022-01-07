; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175d_set_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175d_set_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17xx_state = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17xx_state*)* @ip175d_set_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175d_set_vlan_mode(%struct.ip17xx_state* %0) #0 {
  %2 = alloca %struct.ip17xx_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %6 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %11 = call i32 @ip_phy_write_masked(%struct.ip17xx_state* %10, i32 22, i32 0, i32 16383, i32 63)
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %15 = call i32 @ip_phy_write_masked(%struct.ip17xx_state* %14, i32 22, i32 1, i32 4095, i32 3135)
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %19 = call i32 @ip_phy_write_masked(%struct.ip17xx_state* %18, i32 22, i32 2, i32 4095, i32 0)
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %24 = call i32 @ip_phy_write_masked(%struct.ip17xx_state* %23, i32 22, i32 0, i32 49151, i32 32768)
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %28 = call i32 @ip_phy_write_masked(%struct.ip17xx_state* %27, i32 22, i32 1, i32 4095, i32 3135)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %32 = call i32 @ip_phy_write_masked(%struct.ip17xx_state* %31, i32 22, i32 2, i32 4095, i32 0)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %22, %9
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %41 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load %struct.ip17xx_state*, %struct.ip17xx_state** %2, align 8
  %52 = call i32 @ip175d_update_state(%struct.ip17xx_state* %51)
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  ret i32 %62
}

declare dso_local i32 @ip_phy_write_masked(%struct.ip17xx_state*, i32, i32, i32, i32) #1

declare dso_local i32 @ip175d_update_state(%struct.ip17xx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
