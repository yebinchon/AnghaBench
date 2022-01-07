; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_close.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port = type { i64, i32, %struct.sw* }
%struct.sw = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@ports_open = common dso_local global i32 0, align 4
@PORT_DISABLE = common dso_local global i32 0, align 4
@napi_dev = common dso_local global %struct.net_device* null, align 8
@TS_SUSPEND = common dso_local global i32 0, align 4
@FS_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @eth_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.sw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.port* @netdev_priv(%struct.net_device* %6)
  store %struct.port* %7, %struct.port** %3, align 8
  %8 = load %struct.port*, %struct.port** %3, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 2
  %10 = load %struct.sw*, %struct.sw** %9, align 8
  store %struct.sw* %10, %struct.sw** %4, align 8
  %11 = load i32, i32* @ports_open, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @ports_open, align 4
  %13 = load %struct.sw*, %struct.sw** %4, align 8
  %14 = getelementptr inbounds %struct.sw, %struct.sw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.port*, %struct.port** %3, align 8
  %19 = getelementptr inbounds %struct.port, %struct.port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = call i32 @__raw_readl(i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @PORT_DISABLE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.sw*, %struct.sw** %4, align 8
  %28 = getelementptr inbounds %struct.sw, %struct.sw* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.port*, %struct.port** %3, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = call i32 @__raw_writel(i32 %26, i32* %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @netif_stop_queue(%struct.net_device* %37)
  %39 = load %struct.port*, %struct.port** %3, align 8
  %40 = getelementptr inbounds %struct.port, %struct.port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @phy_stop(i32 %41)
  %43 = load i32, i32* @ports_open, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %95, label %45

45:                                               ; preds = %1
  %46 = load %struct.sw*, %struct.sw** %4, align 8
  %47 = getelementptr inbounds %struct.sw, %struct.sw* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @disable_irq(i32 %48)
  %50 = load %struct.sw*, %struct.sw** %4, align 8
  %51 = getelementptr inbounds %struct.sw, %struct.sw* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.net_device*, %struct.net_device** @napi_dev, align 8
  %54 = call i32 @free_irq(i32 %52, %struct.net_device* %53)
  %55 = load %struct.sw*, %struct.sw** %4, align 8
  %56 = getelementptr inbounds %struct.sw, %struct.sw* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @disable_irq(i32 %57)
  %59 = load %struct.sw*, %struct.sw** %4, align 8
  %60 = getelementptr inbounds %struct.sw, %struct.sw* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** @napi_dev, align 8
  %63 = call i32 @free_irq(i32 %61, %struct.net_device* %62)
  %64 = load %struct.sw*, %struct.sw** %4, align 8
  %65 = getelementptr inbounds %struct.sw, %struct.sw* %64, i32 0, i32 1
  %66 = call i32 @napi_disable(i32* %65)
  %67 = load %struct.net_device*, %struct.net_device** @napi_dev, align 8
  %68 = call i32 @netif_stop_queue(%struct.net_device* %67)
  %69 = load %struct.sw*, %struct.sw** %4, align 8
  %70 = getelementptr inbounds %struct.sw, %struct.sw* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = call i32 @__raw_readl(i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @PORT_DISABLE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.sw*, %struct.sw** %4, align 8
  %81 = getelementptr inbounds %struct.sw, %struct.sw* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = call i32 @__raw_writel(i32 %79, i32* %85)
  %87 = load i32, i32* @TS_SUSPEND, align 4
  %88 = load i32, i32* @FS_SUSPEND, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.sw*, %struct.sw** %4, align 8
  %91 = getelementptr inbounds %struct.sw, %struct.sw* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @__raw_writel(i32 %89, i32* %93)
  br label %95

95:                                               ; preds = %45, %1
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = call i32 @netif_carrier_off(%struct.net_device* %96)
  ret i32 0
}

declare dso_local %struct.port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
