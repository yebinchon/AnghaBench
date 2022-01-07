; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.fe_priv = type { i32 }

@fe_reg_table = common dso_local global i64* null, align 8
@FE_REG_FE_DMA_VID_BASE = common dso_local global i64 0, align 8
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"disable tx vlan offload\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @fe_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fe_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.fe_priv* %12, %struct.fe_priv** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %9, align 4
  %15 = load i64*, i64** @fe_reg_table, align 8
  %16 = load i64, i64* @FE_REG_FE_DMA_VID_BASE, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %89

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %31 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netdev_warn(%struct.net_device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @netdev_update_features(%struct.net_device* %43)
  br label %88

45:                                               ; preds = %28
  %46 = load i64*, i64** @fe_reg_table, align 8
  %47 = load i64, i64* @FE_REG_FE_DMA_VID_BASE, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 1
  %52 = shl i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = call i32 @fe_r32(i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 65535
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = shl i32 %62, 16
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %72

66:                                               ; preds = %45
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, -65536
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* %10, align 4
  %74 = load i64*, i64** @fe_reg_table, align 8
  %75 = load i64, i64* @FE_REG_FE_DMA_VID_BASE, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 1
  %80 = shl i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = call i32 @fe_w32(i32 %73, i64 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %86 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %72, %34
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %27
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

declare dso_local i32 @fe_r32(i64) #1

declare dso_local i32 @fe_w32(i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
