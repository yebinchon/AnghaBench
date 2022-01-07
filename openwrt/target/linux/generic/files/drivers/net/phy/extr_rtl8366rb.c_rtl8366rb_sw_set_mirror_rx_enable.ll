; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_mirror_rx_enable.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_mirror_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rtl8366_smi = type { i32 }

@RTL8366RB_PMCR_MIRROR_RX = common dso_local global i64 0, align 8
@RTL8366RB_PMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8366rb_sw_set_mirror_rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_sw_set_mirror_rx_enable(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_attr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.rtl8366_smi*, align 8
  %8 = alloca i64, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %10 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %9)
  store %struct.rtl8366_smi* %10, %struct.rtl8366_smi** %7, align 8
  %11 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %12 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @RTL8366RB_PMCR_MIRROR_RX, align 8
  store i64 %17, i64* %8, align 8
  br label %19

18:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %18, %16
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %21 = load i32, i32* @RTL8366RB_PMCR, align 4
  %22 = load i64, i64* @RTL8366RB_PMCR_MIRROR_RX, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi* %20, i32 %21, i64 %22, i64 %23)
  ret i32 %24
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
