; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_reset_switch.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_reset_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.rtl8366_smi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtl8366_smi*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_sw_reset_switch(%struct.switch_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  %6 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %7 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %6)
  store %struct.rtl8366_smi* %7, %struct.rtl8366_smi** %4, align 8
  %8 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %9 = call i32 @rtl8366_reset(%struct.rtl8366_smi* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %16 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.rtl8366_smi*)*, i32 (%struct.rtl8366_smi*)** %18, align 8
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %21 = call i32 %19(%struct.rtl8366_smi* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %14
  %27 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %28 = call i32 @rtl8366_reset_vlan(%struct.rtl8366_smi* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %35 = call i32 @rtl8366_enable_vlan(%struct.rtl8366_smi* %34, i32 1)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %42 = call i32 @rtl8366_enable_all_ports(%struct.rtl8366_smi* %41, i32 1)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %38, %31, %24, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_reset(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_reset_vlan(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_enable_vlan(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8366_enable_all_ports(%struct.rtl8366_smi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
