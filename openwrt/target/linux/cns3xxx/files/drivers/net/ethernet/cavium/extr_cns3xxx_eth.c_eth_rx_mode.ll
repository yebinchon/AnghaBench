; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_rx_mode.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port = type { i32, %struct.sw* }
%struct.sw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@PROMISC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @eth_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eth_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.sw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.port* @netdev_priv(%struct.net_device* %6)
  store %struct.port* %7, %struct.port** %3, align 8
  %8 = load %struct.port*, %struct.port** %3, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 1
  %10 = load %struct.sw*, %struct.sw** %9, align 8
  store %struct.sw* %10, %struct.sw** %4, align 8
  %11 = load %struct.sw*, %struct.sw** %4, align 8
  %12 = getelementptr inbounds %struct.sw, %struct.sw* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @__raw_readl(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_PROMISC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load %struct.port*, %struct.port** %3, align 8
  %24 = getelementptr inbounds %struct.port, %struct.port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @PROMISC_OFFSET, align 4
  %29 = shl i32 4, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load %struct.port*, %struct.port** %3, align 8
  %34 = getelementptr inbounds %struct.port, %struct.port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = load i32, i32* @PROMISC_OFFSET, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %32, %27
  br label %64

42:                                               ; preds = %1
  %43 = load %struct.port*, %struct.port** %3, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @PROMISC_OFFSET, align 4
  %49 = shl i32 4, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %42
  %54 = load %struct.port*, %struct.port** %3, align 8
  %55 = getelementptr inbounds %struct.port, %struct.port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = load i32, i32* @PROMISC_OFFSET, align 4
  %59 = shl i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %53, %47
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.sw*, %struct.sw** %4, align 8
  %67 = getelementptr inbounds %struct.sw, %struct.sw* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @__raw_writel(i32 %65, i32* %69)
  ret void
}

declare dso_local %struct.port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
