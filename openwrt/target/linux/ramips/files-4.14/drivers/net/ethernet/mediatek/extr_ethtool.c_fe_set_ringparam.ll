; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.ethtool_ringparam = type { i32, i32 }
%struct.fe_priv = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@MAX_DMA_DESC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @fe_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAX_DMA_DESC, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_DMA_DESC, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %18, %13, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %66

33:                                               ; preds = %24
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 %38(%struct.net_device* %39)
  %41 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @fls(i32 %43)
  %45 = sub nsw i64 %44, 1
  %46 = call i8* @BIT(i64 %45)
  %47 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %48 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @fls(i32 %52)
  %54 = sub nsw i64 %53, 1
  %55 = call i8* @BIT(i64 %54)
  %56 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %57 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 %63(%struct.net_device* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %33, %30
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @BIT(i64) #1

declare dso_local i64 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
