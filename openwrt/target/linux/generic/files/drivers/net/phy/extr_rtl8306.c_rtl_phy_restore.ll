; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_phy_restore.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_phy_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.rtl_phyregs = type { i32, i32, i32 }

@NWAY = common dso_local global i32 0, align 4
@SPEED = common dso_local global i32 0, align 4
@DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*, i32, %struct.rtl_phyregs*)* @rtl_phy_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_phy_restore(%struct.switch_dev* %0, i32 %1, %struct.rtl_phyregs* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_phyregs*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rtl_phyregs* %2, %struct.rtl_phyregs** %6, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NWAY, align 4
  %10 = call i32 @RTL_PORT_REG(i32 %8, i32 %9)
  %11 = load %struct.rtl_phyregs*, %struct.rtl_phyregs** %6, align 8
  %12 = getelementptr inbounds %struct.rtl_phyregs, %struct.rtl_phyregs* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rtl_set(%struct.switch_dev* %7, i32 %10, i32 %13)
  %15 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SPEED, align 4
  %18 = call i32 @RTL_PORT_REG(i32 %16, i32 %17)
  %19 = load %struct.rtl_phyregs*, %struct.rtl_phyregs** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_phyregs, %struct.rtl_phyregs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rtl_set(%struct.switch_dev* %15, i32 %18, i32 %21)
  %23 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DUPLEX, align 4
  %26 = call i32 @RTL_PORT_REG(i32 %24, i32 %25)
  %27 = load %struct.rtl_phyregs*, %struct.rtl_phyregs** %6, align 8
  %28 = getelementptr inbounds %struct.rtl_phyregs, %struct.rtl_phyregs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rtl_set(%struct.switch_dev* %23, i32 %26, i32 %29)
  ret void
}

declare dso_local i32 @rtl_set(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
