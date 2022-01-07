; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_sw_set_max_length.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_sw_set_max_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8367B_SWC0_MAX_LENGTH_1522 = common dso_local global i32 0, align 4
@RTL8367B_SWC0_MAX_LENGTH_1536 = common dso_local global i32 0, align 4
@RTL8367B_SWC0_MAX_LENGTH_1552 = common dso_local global i32 0, align 4
@RTL8367B_SWC0_MAX_LENGTH_16000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8367B_SWC0_REG = common dso_local global i32 0, align 4
@RTL8367B_SWC0_MAX_LENGTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8367b_sw_set_max_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_sw_set_max_length(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.rtl8366_smi*, align 8
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %11 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %10)
  store %struct.rtl8366_smi* %11, %struct.rtl8366_smi** %8, align 8
  %12 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %13 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @RTL8367B_SWC0_MAX_LENGTH_1522, align 4
  store i32 %17, i32* %9, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i32, i32* @RTL8367B_SWC0_MAX_LENGTH_1536, align 4
  store i32 %19, i32* %9, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @RTL8367B_SWC0_MAX_LENGTH_1552, align 4
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @RTL8367B_SWC0_MAX_LENGTH_16000, align 4
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %22, %20, %18, %16
  %28 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %29 = load i32, i32* @RTL8367B_SWC0_REG, align 4
  %30 = load i32, i32* @RTL8367B_SWC0_MAX_LENGTH_MASK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
