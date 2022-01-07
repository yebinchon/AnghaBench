; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_read_status.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32, i32 (i32)*, i32, i32, %struct.TYPE_2__, %struct.ar8xxx_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.ar8xxx_priv = type { i32 }
%struct.switch_port_link = type { i32, i64, i32 }

@PHY_CHANGELINK = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PHY_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ar8xxx_phy_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_phy_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca %struct.switch_port_link, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 7
  %8 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %7, align 8
  store %struct.ar8xxx_priv* %8, %struct.ar8xxx_priv** %4, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_CHANGELINK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %16 = call i32 @ar8xxx_check_link_states(%struct.ar8xxx_priv* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = call i32 @genphy_read_status(%struct.phy_device* %24)
  store i32 %25, i32* %2, align 4
  br label %96

26:                                               ; preds = %17
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ar8216_read_port_link(%struct.ar8xxx_priv* %27, i32 %31, %struct.switch_port_link* %5)
  %33 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %96

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %61 [
    i32 130, label %49
    i32 129, label %53
    i32 128, label %57
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @SPEED_10, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  br label %64

53:                                               ; preds = %46
  %54 = load i32, i32* @SPEED_100, align 4
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* @SPEED_1000, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  br label %64

61:                                               ; preds = %46
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 5
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %57, %53, %49
  %65 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %5, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @DUPLEX_FULL, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @DUPLEX_HALF, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @PHY_RUNNING, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @netif_carrier_on(i32 %81)
  %83 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %84 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %83, i32 0, i32 3
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = icmp ne i32 (i32)* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %72
  %88 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %89 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %88, i32 0, i32 3
  %90 = load i32 (i32)*, i32 (i32)** %89, align 8
  %91 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %92 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %90(i32 %93)
  br label %95

95:                                               ; preds = %87, %72
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %45, %23
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @ar8xxx_check_link_states(%struct.ar8xxx_priv*) #1

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

declare dso_local i32 @ar8216_read_port_link(%struct.ar8xxx_priv*, i32, %struct.switch_port_link*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
