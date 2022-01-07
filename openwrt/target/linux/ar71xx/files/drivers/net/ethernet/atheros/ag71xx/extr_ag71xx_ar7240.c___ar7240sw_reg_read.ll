; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c___ar7240sw_reg_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c___ar7240sw_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32)* @__ar7240sw_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ar7240sw_reg_read(%struct.mii_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, -4
  %12 = lshr i32 %11, 2
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @mk_phy_addr(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @mk_phy_reg(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @mk_high_addr(i32 %22)
  %24 = call i32 @ag71xx_mdio_mii_write(i32 %21, i32 31, i32 16, i32 %23)
  %25 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @ag71xx_mdio_mii_read(i32 %27, i64 %28, i64 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i64 @ag71xx_mdio_mii_read(i32 %34, i64 %35, i64 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %43, %44
  ret i32 %45
}

declare dso_local i64 @mk_phy_addr(i32) #1

declare dso_local i64 @mk_phy_reg(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ag71xx_mdio_mii_write(i32, i32, i32, i32) #1

declare dso_local i32 @mk_high_addr(i32) #1

declare dso_local i64 @ag71xx_mdio_mii_read(i32, i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
