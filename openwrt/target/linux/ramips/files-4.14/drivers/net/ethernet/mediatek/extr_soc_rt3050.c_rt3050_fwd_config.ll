; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt3050.c_rt3050_fwd_config.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt3050.c_rt3050_fwd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32 }

@ralink_soc = common dso_local global i64 0, align 8
@RT305X_SOC_RT3052 = common dso_local global i64 0, align 8
@RT305X_SOC_RT3352 = common dso_local global i64 0, align 8
@FE_PSE_FQFC_CFG_INIT = common dso_local global i32 0, align 4
@FE_PSE_FQ_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*)* @rt3050_fwd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3050_fwd_config(%struct.fe_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  %5 = load i64, i64* @ralink_soc, align 8
  %6 = load i64, i64* @RT305X_SOC_RT3052, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %10 = call i32 @fe_set_clock_cycle(%struct.fe_priv* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %18 = call i32 @fe_fwd_config(%struct.fe_priv* %17)
  %19 = load i64, i64* @ralink_soc, align 8
  %20 = load i64, i64* @RT305X_SOC_RT3352, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @FE_PSE_FQFC_CFG_INIT, align 4
  %24 = load i32, i32* @FE_PSE_FQ_CFG, align 4
  %25 = call i32 @fe_w32(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %28 = call i32 @fe_csum_config(%struct.fe_priv* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @fe_set_clock_cycle(%struct.fe_priv*) #1

declare dso_local i32 @fe_fwd_config(%struct.fe_priv*) #1

declare dso_local i32 @fe_w32(i32, i32) #1

declare dso_local i32 @fe_csum_config(%struct.fe_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
