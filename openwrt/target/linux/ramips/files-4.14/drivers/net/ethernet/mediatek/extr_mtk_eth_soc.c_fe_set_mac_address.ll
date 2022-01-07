; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fe_priv*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @fe_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @eth_mac_addr(%struct.net_device* %7, i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.fe_priv* %14, %struct.fe_priv** %6, align 8
  %15 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %16 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.fe_priv*, i32)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %23 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %25, align 8
  %27 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %26(%struct.fe_priv* %27, i32 %30)
  br label %36

32:                                               ; preds = %12
  %33 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @fe_hw_set_macaddr(%struct.fe_priv* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %21
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @eth_mac_addr(%struct.net_device*, i8*) #1

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fe_hw_set_macaddr(%struct.fe_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
