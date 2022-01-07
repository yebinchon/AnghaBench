; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32 }
%struct.ar8xxx_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_sw_get_port_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switch_port_link*, align 8
  %7 = alloca %struct.ar8xxx_priv*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %6, align 8
  %8 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %9 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %8)
  store %struct.ar8xxx_priv* %9, %struct.ar8xxx_priv** %7, align 8
  %10 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %13 = call i32 @ar8216_read_port_link(%struct.ar8xxx_priv* %10, i32 %11, %struct.switch_port_link* %12)
  ret i32 0
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

declare dso_local i32 @ar8216_read_port_link(%struct.ar8xxx_priv*, i32, %struct.switch_port_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
