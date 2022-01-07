; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c___ar7240sw_reg_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c___ar7240sw_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_bus*, i32, i32)* @__ar7240sw_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ar7240sw_reg_write(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -4
  %12 = lshr i32 %11, 2
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mk_phy_addr(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mk_phy_reg(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mk_high_addr(i32 %22)
  %24 = call i32 @ag71xx_mdio_mii_write(i32 %21, i32 31, i32 16, i32 %23)
  %25 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 16
  %33 = call i32 @ag71xx_mdio_mii_write(i32 %27, i32 %28, i32 %30, i32 %32)
  %34 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 65535
  %41 = call i32 @ag71xx_mdio_mii_write(i32 %36, i32 %37, i32 %38, i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  ret void
}

declare dso_local i32 @mk_phy_addr(i32) #1

declare dso_local i32 @mk_phy_reg(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ag71xx_mdio_mii_write(i32, i32, i32, i32) #1

declare dso_local i32 @mk_high_addr(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
