; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_skb_padto.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_skb_padto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.fe_priv = type { i32 }

@VLAN_ETH_ZLEN = common dso_local global i32 0, align 4
@FE_FLAG_PADDING_64B = common dso_local global i32 0, align 4
@FE_FLAG_PADDING_BUG = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.fe_priv*)* @fe_skb_padto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_skb_padto(%struct.sk_buff* %0, %struct.fe_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.fe_priv* %1, %struct.fe_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VLAN_ETH_ZLEN, align 4
  %12 = icmp ult i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %2
  %17 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %18 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FE_FLAG_PADDING_64B, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %25 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FE_FLAG_PADDING_BUG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %23, %16
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %37, i32* %6, align 4
  br label %60

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @ETH_P_8021Q, align 4
  %43 = call i64 @cpu_to_be16(i32 %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @VLAN_ETH_ZLEN, align 4
  store i32 %46, i32* %6, align 4
  br label %59

47:                                               ; preds = %38
  %48 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %49 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FE_FLAG_PADDING_64B, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %88

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub i32 %68, %71
  %73 = call i32 @skb_pad(%struct.sk_buff* %67, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %88

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %60
  br label %86

86:                                               ; preds = %85, %2
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %76, %56, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
