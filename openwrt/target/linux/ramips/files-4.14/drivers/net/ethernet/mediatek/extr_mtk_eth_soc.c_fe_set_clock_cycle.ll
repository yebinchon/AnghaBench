; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_set_clock_cycle.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_set_clock_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i64 }

@FE_US_CYC_CNT_DIVISOR = common dso_local global i64 0, align 8
@FE_US_CYC_CNT_SHIFT = common dso_local global i64 0, align 8
@FE_FE_GLO_CFG = common dso_local global i32 0, align 4
@FE_US_CYC_CNT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fe_set_clock_cycle(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %4 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %5 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* @FE_US_CYC_CNT_DIVISOR, align 8
  %8 = load i64, i64* %3, align 8
  %9 = udiv i64 %8, %7
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @FE_US_CYC_CNT_SHIFT, align 8
  %11 = load i64, i64* %3, align 8
  %12 = shl i64 %11, %10
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* @FE_FE_GLO_CFG, align 4
  %14 = call i64 @fe_r32(i32 %13)
  %15 = load i64, i64* @FE_US_CYC_CNT_MASK, align 8
  %16 = load i64, i64* @FE_US_CYC_CNT_SHIFT, align 8
  %17 = shl i64 %15, %16
  %18 = xor i64 %17, -1
  %19 = and i64 %14, %18
  %20 = load i64, i64* %3, align 8
  %21 = or i64 %19, %20
  %22 = load i32, i32* @FE_FE_GLO_CFG, align 4
  %23 = call i32 @fe_w32(i64 %21, i32 %22)
  ret i32 0
}

declare dso_local i32 @fe_w32(i64, i32) #1

declare dso_local i64 @fe_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
