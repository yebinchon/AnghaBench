; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_port_led.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_port_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8366RB_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_PORT_NUM_CPU = common dso_local global i32 0, align 4
@RTL8366RB_LED_BLINKRATE_REG = common dso_local global i32 0, align 4
@RTL8366RB_LED_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8366rb_sw_set_port_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_sw_set_port_led(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.rtl8366_smi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %12 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %13 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %12)
  store %struct.rtl8366_smi* %13, %struct.rtl8366_smi** %8, align 8
  %14 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %15 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RTL8366RB_NUM_PORTS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RTL8366RB_PORT_NUM_CPU, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @RTL8366RB_LED_BLINKRATE_REG, align 4
  store i32 %29, i32* %11, align 4
  store i32 240, i32* %10, align 4
  %30 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %31 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 4
  store i32 %34, i32* %9, align 4
  br label %51

35:                                               ; preds = %22
  %36 = load i32, i32* @RTL8366RB_LED_CTRL_REG, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %38 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = shl i32 15, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %43 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %47 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 4
  %50 = shl i32 %45, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %35, %28
  %52 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
