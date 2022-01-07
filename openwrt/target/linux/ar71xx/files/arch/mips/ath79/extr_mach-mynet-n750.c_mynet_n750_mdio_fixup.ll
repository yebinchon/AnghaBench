; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-mynet-n750.c_mynet_n750_mdio_fixup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-mynet-n750.c_mynet_n750_mdio_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)* }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_bus*)* @mynet_n750_mdio_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mynet_n750_mdio_fixup(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %9 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %8, i32 0, i32 0
  %10 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %9, align 8
  %11 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MII_BMCR, align 4
  %14 = load i32, i32* @BMCR_RESET, align 4
  %15 = load i32, i32* @BMCR_ANENABLE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BMCR_SPEED1000, align 4
  %18 = or i32 %16, %17
  %19 = call i32 %10(%struct.mii_bus* %11, i32 %12, i32 %13, i32 %18)
  br label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  %24 = call i32 @mdelay(i32 1000)
  ret void
}

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
