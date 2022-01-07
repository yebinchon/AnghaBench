; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_open.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port = type { i64, i32, i64, %struct.sw* }
%struct.sw = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@ports_open = common dso_local global i32 0, align 4
@eth_rx_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gig_switch\00", align 1
@napi_dev = common dso_local global %struct.net_device* null, align 8
@eth_stat_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gig_stat\00", align 1
@MAC0_STATUS_CHANGE = common dso_local global i32 0, align 4
@MAC1_STATUS_CHANGE = common dso_local global i32 0, align 4
@MAC2_STATUS_CHANGE = common dso_local global i32 0, align 4
@MAC0_RX_ERROR = common dso_local global i32 0, align 4
@MAC1_RX_ERROR = common dso_local global i32 0, align 4
@MAC2_RX_ERROR = common dso_local global i32 0, align 4
@PORT_DISABLE = common dso_local global i32 0, align 4
@TS_SUSPEND = common dso_local global i32 0, align 4
@FS_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.sw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.port* @netdev_priv(%struct.net_device* %6)
  store %struct.port* %7, %struct.port** %3, align 8
  %8 = load %struct.port*, %struct.port** %3, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 3
  %10 = load %struct.sw*, %struct.sw** %9, align 8
  store %struct.sw* %10, %struct.sw** %4, align 8
  %11 = load %struct.port*, %struct.port** %3, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.port*, %struct.port** %3, align 8
  %14 = getelementptr inbounds %struct.port, %struct.port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @phy_start(i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_start_queue(%struct.net_device* %17)
  %19 = load i32, i32* @ports_open, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %96, label %21

21:                                               ; preds = %1
  %22 = load %struct.sw*, %struct.sw** %4, align 8
  %23 = getelementptr inbounds %struct.sw, %struct.sw* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @eth_rx_irq, align 4
  %26 = load i32, i32* @IRQF_SHARED, align 4
  %27 = load %struct.net_device*, %struct.net_device** @napi_dev, align 8
  %28 = call i32 @request_irq(i32 %24, i32 %25, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.net_device* %27)
  %29 = load %struct.sw*, %struct.sw** %4, align 8
  %30 = getelementptr inbounds %struct.sw, %struct.sw* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @eth_stat_irq, align 4
  %33 = load i32, i32* @IRQF_SHARED, align 4
  %34 = load %struct.net_device*, %struct.net_device** @napi_dev, align 8
  %35 = call i32 @request_irq(i32 %31, i32 %32, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %34)
  %36 = load %struct.sw*, %struct.sw** %4, align 8
  %37 = getelementptr inbounds %struct.sw, %struct.sw* %36, i32 0, i32 1
  %38 = call i32 @napi_enable(i32* %37)
  %39 = load %struct.net_device*, %struct.net_device** @napi_dev, align 8
  %40 = call i32 @netif_start_queue(%struct.net_device* %39)
  %41 = load i32, i32* @MAC0_STATUS_CHANGE, align 4
  %42 = load i32, i32* @MAC1_STATUS_CHANGE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MAC2_STATUS_CHANGE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MAC0_RX_ERROR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MAC1_RX_ERROR, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MAC2_RX_ERROR, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.sw*, %struct.sw** %4, align 8
  %54 = getelementptr inbounds %struct.sw, %struct.sw* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = call i32 @__raw_writel(i32 %52, i32* %56)
  %58 = load %struct.sw*, %struct.sw** %4, align 8
  %59 = getelementptr inbounds %struct.sw, %struct.sw* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = call i32 @__raw_readl(i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @PORT_DISABLE, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.sw*, %struct.sw** %4, align 8
  %71 = getelementptr inbounds %struct.sw, %struct.sw* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = call i32 @__raw_writel(i32 %69, i32* %75)
  %77 = load %struct.sw*, %struct.sw** %4, align 8
  %78 = getelementptr inbounds %struct.sw, %struct.sw* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = call i32 @__raw_readl(i32* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @TS_SUSPEND, align 4
  %83 = load i32, i32* @FS_SUSPEND, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.sw*, %struct.sw** %4, align 8
  %90 = getelementptr inbounds %struct.sw, %struct.sw* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = call i32 @__raw_writel(i32 %88, i32* %92)
  %94 = load %struct.sw*, %struct.sw** %4, align 8
  %95 = call i32 @enable_rx_dma(%struct.sw* %94)
  br label %96

96:                                               ; preds = %21, %1
  %97 = load %struct.sw*, %struct.sw** %4, align 8
  %98 = getelementptr inbounds %struct.sw, %struct.sw* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.port*, %struct.port** %3, align 8
  %103 = getelementptr inbounds %struct.port, %struct.port* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = call i32 @__raw_readl(i32* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @PORT_DISABLE, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.sw*, %struct.sw** %4, align 8
  %113 = getelementptr inbounds %struct.sw, %struct.sw* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.port*, %struct.port** %3, align 8
  %118 = getelementptr inbounds %struct.port, %struct.port* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = call i32 @__raw_writel(i32 %111, i32* %120)
  %122 = load i32, i32* @ports_open, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @ports_open, align 4
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = call i32 @netif_carrier_on(%struct.net_device* %124)
  ret i32 0
}

declare dso_local %struct.port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @enable_rx_dma(%struct.sw*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
